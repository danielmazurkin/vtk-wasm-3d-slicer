/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkTextPropertyCollection.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkTextPropertyCollection.h"
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkTextPropertyCollection);

//------------------------------------------------------------------------------
void vtkTextPropertyCollection::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

//------------------------------------------------------------------------------
vtkTextPropertyCollection::vtkTextPropertyCollection() = default;

//------------------------------------------------------------------------------
vtkTextPropertyCollection::~vtkTextPropertyCollection() = default;
VTK_ABI_NAMESPACE_END
