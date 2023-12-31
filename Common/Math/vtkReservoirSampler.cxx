/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkReservoirSampler.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkReservoirSampler.h"

VTK_ABI_NAMESPACE_BEGIN
vtkReservoirSamplerBase::SeedType vtkReservoirSamplerBase::RandomSeed()
{
  VTK_THREAD_LOCAL std::random_device device;
  return device();
}
VTK_ABI_NAMESPACE_END
