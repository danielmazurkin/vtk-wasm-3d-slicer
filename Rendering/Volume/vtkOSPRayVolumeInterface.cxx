/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkOSPRayVolumeInterface.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkOSPRayVolumeInterface.h"

#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkObjectFactoryNewMacro(vtkOSPRayVolumeInterface);

//------------------------------------------------------------------------------
vtkOSPRayVolumeInterface::vtkOSPRayVolumeInterface() = default;

//------------------------------------------------------------------------------
vtkOSPRayVolumeInterface::~vtkOSPRayVolumeInterface() = default;

//------------------------------------------------------------------------------
void vtkOSPRayVolumeInterface::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

//------------------------------------------------------------------------------
void vtkOSPRayVolumeInterface::Render(vtkRenderer* vtkNotUsed(ren), vtkVolume* vtkNotUsed(vol))
{
  cerr << "Warning VTK is not linked to OSPRay so can not VolumeRender with it" << endl;
}
VTK_ABI_NAMESPACE_END
