/*=========================================================================

 Program:   Visualization Toolkit
 Module:    vtkHierarchicalBoxDataIterator.cxx

 Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
 All rights reserved.
 See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

 This software is distributed WITHOUT ANY WARRANTY; without even
 the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 PURPOSE.  See the above copyright notice for more information.

 =========================================================================*/
// VTK_DEPRECATED_IN_9_2_0() warnings for this class.
#define VTK_DEPRECATION_LEVEL 0

#include "vtkHierarchicalBoxDataIterator.h"
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkHierarchicalBoxDataIterator);

vtkHierarchicalBoxDataIterator::vtkHierarchicalBoxDataIterator() = default;

//------------------------------------------------------------------------------
vtkHierarchicalBoxDataIterator::~vtkHierarchicalBoxDataIterator() = default;

//------------------------------------------------------------------------------
void vtkHierarchicalBoxDataIterator::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}
VTK_ABI_NAMESPACE_END
