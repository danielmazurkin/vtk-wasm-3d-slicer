/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkAlgorithmOutput.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkAlgorithmOutput.h"

#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkAlgorithmOutput);

//------------------------------------------------------------------------------
vtkAlgorithmOutput::vtkAlgorithmOutput()
{
  this->Producer = nullptr;
  this->Index = 0;
}

//------------------------------------------------------------------------------
vtkAlgorithmOutput::~vtkAlgorithmOutput() = default;

//------------------------------------------------------------------------------
void vtkAlgorithmOutput::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
  if (this->Producer)
  {
    os << indent << "Producer: " << this->Producer << "\n";
  }
  else
  {
    os << indent << "Producer: (none)\n";
  }
  os << indent << "Index: " << this->Index << "\n";
}

//------------------------------------------------------------------------------
void vtkAlgorithmOutput::SetIndex(int index)
{
  this->Index = index;
}

//------------------------------------------------------------------------------
int vtkAlgorithmOutput::GetIndex() const
{
  return this->Index;
}

//------------------------------------------------------------------------------
vtkAlgorithm* vtkAlgorithmOutput::GetProducer() const
{
  return this->Producer;
}

//------------------------------------------------------------------------------
void vtkAlgorithmOutput::SetProducer(vtkAlgorithm* producer)
{
  this->Producer = producer;
}
VTK_ABI_NAMESPACE_END
