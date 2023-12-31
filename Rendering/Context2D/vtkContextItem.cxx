/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkContextItem.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkContextItem.h"
#include "vtkContextTransform.h"

VTK_ABI_NAMESPACE_BEGIN
vtkCxxSetObjectMacro(vtkContextItem, Transform, vtkContextTransform);

//------------------------------------------------------------------------------
vtkContextItem::~vtkContextItem()
{
  this->SetTransform(nullptr);
}

//------------------------------------------------------------------------------
void vtkContextItem::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
  os << indent << "Opacity: " << this->Opacity << endl;
}
VTK_ABI_NAMESPACE_END
