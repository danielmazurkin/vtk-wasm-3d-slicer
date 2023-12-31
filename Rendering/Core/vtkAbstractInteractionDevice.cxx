/*=========================================================================

  Program:   Visualization Toolkit

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkAbstractInteractionDevice.h"

#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkAbstractObjectFactoryNewMacro(vtkAbstractInteractionDevice);

vtkAbstractInteractionDevice::vtkAbstractInteractionDevice()
  : Initialized(false)
  , RenderWidget(nullptr)
  , RenderDevice(nullptr)
{
}

vtkAbstractInteractionDevice::~vtkAbstractInteractionDevice() = default;

void vtkAbstractInteractionDevice::SetRenderWidget(vtkRenderWidget* widget)
{
  if (this->RenderWidget != widget)
  {
    this->RenderWidget = widget;
    this->Modified();
  }
}

void vtkAbstractInteractionDevice::SetRenderDevice(vtkAbstractRenderDevice* d)
{
  if (this->RenderDevice != d)
  {
    this->RenderDevice = d;
    this->Modified();
  }
}

void vtkAbstractInteractionDevice::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}
VTK_ABI_NAMESPACE_END
