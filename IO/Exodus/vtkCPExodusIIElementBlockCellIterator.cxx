/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkCPExodusIIElementBlockCellIterator.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkCPExodusIIElementBlockCellIterator.h"

#include "vtkCPExodusIIElementBlock.h"
#include "vtkCPExodusIIElementBlockPrivate.h"
#include "vtkObjectFactory.h"
#include "vtkPoints.h"

#include <algorithm>

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkCPExodusIIElementBlockCellIterator);

//------------------------------------------------------------------------------
void vtkCPExodusIIElementBlockCellIterator::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
  os << indent << "Storage: " << this->Storage << endl;
  os << indent << "DataSetPoints: " << this->DataSetPoints << endl;
  os << indent << "CellId: " << this->CellId << endl;
}

//------------------------------------------------------------------------------
bool vtkCPExodusIIElementBlockCellIterator::IsValid()
{
  return this->Storage && this->CellId < this->Storage->NumberOfCells;
}

//------------------------------------------------------------------------------
vtkIdType vtkCPExodusIIElementBlockCellIterator::GetCellId()
{
  return this->CellId;
}

//------------------------------------------------------------------------------
vtkCPExodusIIElementBlockCellIterator::vtkCPExodusIIElementBlockCellIterator()
  : Storage(nullptr)
  , DataSetPoints(nullptr)
  , CellId(0)
{
}

//------------------------------------------------------------------------------
vtkCPExodusIIElementBlockCellIterator::~vtkCPExodusIIElementBlockCellIterator() {}

//------------------------------------------------------------------------------
void vtkCPExodusIIElementBlockCellIterator::ResetToFirstCell()
{
  this->CellId = 0;
}

//------------------------------------------------------------------------------
void vtkCPExodusIIElementBlockCellIterator::IncrementToNextCell()
{
  ++this->CellId;
}

//------------------------------------------------------------------------------
void vtkCPExodusIIElementBlockCellIterator::FetchCellType()
{
  this->CellType = this->Storage->CellType;
}

//------------------------------------------------------------------------------
void vtkCPExodusIIElementBlockCellIterator::FetchPointIds()
{
  this->PointIds->SetNumberOfIds(this->Storage->CellSize);

  std::transform(this->Storage->GetElementStart(this->CellId),
    this->Storage->GetElementEnd(this->CellId), this->PointIds->GetPointer(0),
    StorageType::NodeToPoint);
}

//------------------------------------------------------------------------------
void vtkCPExodusIIElementBlockCellIterator::FetchPoints()
{
  this->DataSetPoints->GetPoints(this->GetPointIds(), this->Points);
}

//------------------------------------------------------------------------------
void vtkCPExodusIIElementBlockCellIterator::SetStorage(vtkCPExodusIIElementBlock* eb)
{
  if (eb != nullptr)
  {
    this->Storage = eb->GetInternals();
    this->DataSetPoints = eb->GetPoints();
    if (this->DataSetPoints)
    {
      this->Points->SetDataType(this->DataSetPoints->GetDataType());
    }
  }
  else
  {
    this->Storage = nullptr;
    this->DataSetPoints = nullptr;
  }
  this->CellId = 0;
}
VTK_ABI_NAMESPACE_END
