/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkRIBLight.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkRIBLight.h"
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkRIBLight);

vtkRIBLight::vtkRIBLight()
{
  this->Shadows = 0;
  // create a vtkLight that can be rendered
  this->Light = vtkLight::New();
}

vtkRIBLight::~vtkRIBLight()
{
  if (this->Light)
  {
    this->Light->Delete();
  }
}

void vtkRIBLight::Render(vtkRenderer* ren, int index)
{
  // Copy this light's ivars into the light to be rendered
  this->Light->DeepCopy(this);
  // this->Light->SetDeleteMethod(nullptr);

  // Render the light
  this->Light->Render(ren, index);
}

void vtkRIBLight::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);

  os << indent << "Shadows: " << (this->Shadows ? "On\n" : "Off\n");
}
VTK_ABI_NAMESPACE_END
