/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkPParticlePathFilter.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkPParticlePathFilter.h"

#include "vtkCellArray.h"
#include "vtkDataArray.h"
#include "vtkDoubleArray.h"
#include "vtkFloatArray.h"
#include "vtkInformation.h"
#include "vtkInformationVector.h"
#include "vtkNew.h"
#include "vtkObjectFactory.h"
#include "vtkPointData.h"
#include "vtkSignedCharArray.h"
#include "vtkStreamingDemandDrivenPipeline.h"
#include <cassert>

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkPParticlePathFilter);

vtkPParticlePathFilter::vtkPParticlePathFilter()
{
  this->It.Initialize(this);
  this->SimulationTime = nullptr;
  this->SimulationTimeStep = nullptr;
}

vtkPParticlePathFilter::~vtkPParticlePathFilter()
{
  if (this->SimulationTime)
  {
    this->SimulationTime->Delete();
    this->SimulationTime = nullptr;
  }
  if (this->SimulationTimeStep)
  {
    this->SimulationTimeStep->Delete();
    this->SimulationTimeStep = nullptr;
  }
}

void vtkPParticlePathFilter::ResetCache()
{
  this->It.Reset();
}

void vtkPParticlePathFilter::PrintSelf(ostream& os, vtkIndent indent)
{
  Superclass::PrintSelf(os, indent);
}

int vtkPParticlePathFilter::OutputParticles(vtkPolyData* particles)
{
  vtkNew<vtkPolyData> tailPoly;
  tailPoly->SetPoints(vtkSmartPointer<vtkPoints>::New());

  vtkPointData* tailPD = tailPoly->GetPointData();
  assert(tailPD);
  tailPD->CopyAllocate(particles->GetPointData());

  for (unsigned int i = 0; i < this->Tail.size(); i++)
  {
    vtkParticleTracerBaseNamespace::ParticleInformation& info(this->Tail[i].Previous);
    vtkPointData* pd = this->Tail[i].PreviousPD;

    const double* coord = info.CurrentPosition.x;
    vtkIdType tempId = tailPoly->GetPoints()->InsertNextPoint(coord);
    for (int j = 0; j < pd->GetNumberOfArrays(); j++)
    {
      vtkDataArray* arrFrom = pd->GetArray(j);
      vtkDataArray* arrTo = tailPD->GetArray(arrFrom->GetName());
      assert(arrTo);
      assert(arrTo->GetNumberOfComponents() == arrFrom->GetNumberOfComponents());
      arrTo->InsertTuple(tempId, arrFrom->GetTuple(0));
    }

    this->GetParticleIds(tailPD)->InsertValue(tempId, info.UniqueParticleId);
    this->GetParticleSourceIds(tailPD)->InsertValue(tempId, info.SourceID);
    this->GetInjectedPointIds(tailPD)->InsertValue(tempId, info.InjectedPointId);
    this->GetInjectedStepIds(tailPD)->InsertValue(tempId, info.InjectedStepId);
    this->GetErrorCodeArr(tailPD)->InsertValue(tempId, info.ErrorCode);
    this->GetParticleAge(tailPD)->InsertValue(tempId, info.age);

    vtkArrayDownCast<vtkDoubleArray>(tailPD->GetArray("SimulationTime"))
      ->InsertValue(tempId, info.SimulationTime);
    vtkArrayDownCast<vtkIntArray>(tailPD->GetArray("SimulationTimeStep"))
      ->InsertValue(tempId, info.InjectedStepId + info.TimeStepAge);

    if (this->GetComputeVorticity())
    {
      //      this->GetParticleVorticity(tailPD)->InsertNextTuple(info.vorticity); missing in
      //      implementation
      this->GetParticleAngularVel(tailPD)->InsertValue(tempId, info.angularVel);
      this->GetParticleRotation(tailPD)->InsertValue(tempId, info.rotation);
    }
  }

  this->It.OutputParticles(tailPoly);

  return this->It.OutputParticles(particles); // we've already cleared cache in the first call
}

void vtkPParticlePathFilter::InitializeExtraPointDataArrays(vtkPointData* outputPD)
{
  if (this->SimulationTime == nullptr)
  {
    this->SimulationTime = vtkDoubleArray::New();
    this->SimulationTime->SetName("SimulationTime");
  }
  if (outputPD->GetArray("SimulationTime"))
  {
    outputPD->RemoveArray("SimulationTime");
  }
  this->SimulationTime->SetNumberOfTuples(0);
  outputPD->AddArray(this->SimulationTime);

  if (this->SimulationTimeStep == nullptr)
  {
    this->SimulationTimeStep = vtkIntArray::New();
    this->SimulationTimeStep->SetName("SimulationTimeStep");
  }
  if (outputPD->GetArray("SimulationTimeStep"))
  {
    outputPD->RemoveArray("SimulationTimeStep");
  }
  this->SimulationTimeStep->SetNumberOfTuples(0);
  outputPD->AddArray(this->SimulationTimeStep);
}

void vtkPParticlePathFilter::SetToExtraPointDataArrays(
  vtkIdType particleId, vtkParticleTracerBaseNamespace::ParticleInformation& info)
{
  this->SimulationTime->SetValue(particleId, info.SimulationTime);
  this->SimulationTimeStep->SetValue(particleId, info.InjectedStepId + info.TimeStepAge);
}

void vtkPParticlePathFilter::Finalize()
{
  this->It.Finalize();
}

int vtkPParticlePathFilter::RequestInformation(
  vtkInformation* request, vtkInformationVector** inputVector, vtkInformationVector* outputVector)
{
  vtkInformation* outInfo = outputVector->GetInformationObject(0);

  // The output data of this filter has no time associated with it.  It is the
  // result of computations that happen over all time.
  outInfo->Remove(vtkStreamingDemandDrivenPipeline::TIME_STEPS());
  outInfo->Remove(vtkStreamingDemandDrivenPipeline::TIME_RANGE());

  return this->Superclass::RequestInformation(request, inputVector, outputVector);
}
VTK_ABI_NAMESPACE_END
