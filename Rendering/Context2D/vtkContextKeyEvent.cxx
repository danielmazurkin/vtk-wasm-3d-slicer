/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkContextKeyEvent.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkContextKeyEvent.h"

#include "vtkRenderWindowInteractor.h"

#include <cassert>

VTK_ABI_NAMESPACE_BEGIN
vtkContextKeyEvent::vtkContextKeyEvent() = default;

void vtkContextKeyEvent::SetInteractor(vtkRenderWindowInteractor* interactor)
{
  this->Interactor = interactor;
}

vtkRenderWindowInteractor* vtkContextKeyEvent::GetInteractor() const
{
  return this->Interactor;
}

char vtkContextKeyEvent::GetKeyCode() const
{
  if (this->Interactor)
  {
    return this->Interactor->GetKeyCode();
  }
  else
  {
    // This should never happen, perhaps there is a better return value?
    return 0;
  }
}
VTK_ABI_NAMESPACE_END
