/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkLogoWidget.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkLogoWidget.h"
#include "vtkCallbackCommand.h"
#include "vtkLogoRepresentation.h"
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkLogoWidget);

//------------------------------------------------------------------------------
vtkLogoWidget::vtkLogoWidget()
{
  this->Selectable = 0;
}

//------------------------------------------------------------------------------
vtkLogoWidget::~vtkLogoWidget() = default;

//------------------------------------------------------------------------------
void vtkLogoWidget::CreateDefaultRepresentation()
{
  if (!this->WidgetRep)
  {
    this->WidgetRep = vtkLogoRepresentation::New();
  }
}

//------------------------------------------------------------------------------
void vtkLogoWidget::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}
VTK_ABI_NAMESPACE_END
