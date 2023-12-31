/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkExtractFunctionalBagPlot.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkExtractFunctionalBagPlot.h"

#include "vtkDataSet.h"
#include "vtkDoubleArray.h"
#include "vtkInformation.h"
#include "vtkInformationVector.h"
#include "vtkNew.h"
#include "vtkObjectFactory.h"
#include "vtkStreamingDemandDrivenPipeline.h"
#include "vtkStringArray.h"
#include "vtkTable.h"

#include <algorithm>
#include <set>
#include <sstream>
#include <vector>

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkExtractFunctionalBagPlot);

//------------------------------------------------------------------------------
vtkExtractFunctionalBagPlot::vtkExtractFunctionalBagPlot()
{
  this->SetNumberOfInputPorts(2);
  this->DensityForP50 = 0;
  this->DensityForPUser = 0.;
  this->PUser = 95;
}

//------------------------------------------------------------------------------
vtkExtractFunctionalBagPlot::~vtkExtractFunctionalBagPlot() = default;

//------------------------------------------------------------------------------
void vtkExtractFunctionalBagPlot::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

//------------------------------------------------------------------------------
class DensityVal
{
public:
  DensityVal(double d, vtkAbstractArray* arr)
    : Density(d)
    , Array(arr)
  {
  }
  bool operator<(const DensityVal& b) const { return this->Density > b.Density; }
  double Density;
  vtkAbstractArray* Array;
};

//------------------------------------------------------------------------------
int vtkExtractFunctionalBagPlot::RequestData(vtkInformation* /*request*/,
  vtkInformationVector** inputVector, vtkInformationVector* outputVector)
{

  vtkTable* inTable = vtkTable::GetData(inputVector[0]);
  vtkTable* inTableDensity = vtkTable::GetData(inputVector[1]);
  vtkTable* outTable = vtkTable::GetData(outputVector, 0);

  vtkIdType inNbColumns = inTable->GetNumberOfColumns();

  if (!inTable)
  {
    vtkDebugMacro(<< "Update event called with no input table.");
    return false;
  }

  if (!inTableDensity)
  {
    vtkDebugMacro(<< "Update event called with no density input table.");
    return false;
  }

  vtkDoubleArray* density =
    vtkArrayDownCast<vtkDoubleArray>(this->GetInputAbstractArrayToProcess(0, inTableDensity));
  if (!density)
  {
    vtkDebugMacro(<< "Update event called with non double density array.");
    return false;
  }

  vtkStringArray* varName =
    vtkArrayDownCast<vtkStringArray>(this->GetInputAbstractArrayToProcess(1, inTableDensity));
  if (!varName)
  {
    vtkDebugMacro(<< "Update event called with no variable name array.");
    return false;
  }

  vtkIdType nbPoints = varName->GetNumberOfValues();

  std::vector<vtkAbstractArray*> medianLines;
  std::vector<vtkAbstractArray*> q3Lines;
  std::set<vtkIdType> outliersSeries;

  for (vtkIdType i = 0; i < nbPoints; i++)
  {
    double d = density->GetValue(i);
    vtkAbstractArray* c = inTable->GetColumnByName(varName->GetValue(i).c_str());
    if (d < this->DensityForPUser)
    {
      outliersSeries.insert(i);
    }
    else
    {
      if (d > this->DensityForP50)
      {
        medianLines.push_back(c);
      }
      else
      {
        q3Lines.push_back(c);
      }
    }
  }

  vtkIdType nbRows = inTable->GetNumberOfRows();
  vtkIdType nbCols = inTable->GetNumberOfColumns();

  // Generate the median curve with median values for every sample.
  vtkNew<vtkDoubleArray> qMedPoints;
  qMedPoints->SetName("QMedianLine");
  qMedPoints->SetNumberOfComponents(1);
  qMedPoints->SetNumberOfTuples(nbRows);

  std::vector<double> vals;
  vals.resize(nbCols);
  for (vtkIdType i = 0; i < nbRows; i++)
  {
    for (vtkIdType j = 0; j < nbCols; j++)
    {
      vals[j] = inTable->GetValue(i, j).ToDouble();
    }
    std::sort(vals.begin(), vals.end());
    qMedPoints->SetTuple1(i, vals[nbCols / 2]);
  }

  // Generate the quad strip arrays
  std::ostringstream ss;
  ss << "Q3Points" << this->PUser;
  vtkNew<vtkDoubleArray> q3Points;
  q3Points->SetName(ss.str().c_str());
  q3Points->SetNumberOfComponents(2);
  q3Points->SetNumberOfTuples(nbRows);

  vtkNew<vtkDoubleArray> q2Points;
  q2Points->SetName("QMedPoints");
  q2Points->SetNumberOfComponents(2);
  q2Points->SetNumberOfTuples(nbRows);

  size_t medianCount = medianLines.size();
  size_t q3Count = q3Lines.size();
  for (vtkIdType i = 0; i < nbRows; i++)
  {
    double vMin = VTK_DOUBLE_MAX;
    double vMax = VTK_DOUBLE_MIN;
    for (size_t j = 0; j < medianCount; j++)
    {
      double v = medianLines[j]->GetVariantValue(i).ToDouble();
      if (v < vMin)
      {
        vMin = v;
      }
      if (v > vMax)
      {
        vMax = v;
      }
    }
    q2Points->SetTuple2(i, vMin, vMax);

    vMin = VTK_DOUBLE_MAX;
    vMax = VTK_DOUBLE_MIN;
    for (size_t j = 0; j < q3Count; j++)
    {
      double v = q3Lines[j]->GetVariantValue(i).ToDouble();
      if (v < vMin)
      {
        vMin = v;
      }
      if (v > vMax)
      {
        vMax = v;
      }
    }
    q3Points->SetTuple2(i, vMin, vMax);
  }

  // Append the input columns
  for (vtkIdType i = 0; i < inNbColumns; i++)
  {
    vtkAbstractArray* arr = inTable->GetColumn(i);
    if (outliersSeries.find(i) != outliersSeries.end())
    {
      vtkAbstractArray* arrCopy = arr->NewInstance();
      arrCopy->DeepCopy(arr);
      std::string name = std::string(arr->GetName()) + "_outlier";
      arrCopy->SetName(name.c_str());
      outTable->AddColumn(arrCopy);
      arrCopy->Delete();
    }
    else
    {
      outTable->AddColumn(arr);
    }
  }

  // Then add the 2 "bag" columns into the output table
  if (!q3Lines.empty())
  {
    outTable->AddColumn(q3Points);
  }
  if (!medianLines.empty())
  {
    outTable->AddColumn(q2Points);
  }
  outTable->AddColumn(qMedPoints);

  return 1;
}
VTK_ABI_NAMESPACE_END
