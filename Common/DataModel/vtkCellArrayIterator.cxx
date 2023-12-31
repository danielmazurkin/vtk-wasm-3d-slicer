/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkCellArrayIterator.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkCellArrayIterator.h"
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkCellArrayIterator);

void vtkCellArrayIterator::PrintSelf(std::ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);

  os << indent << "CurrentCellId: " << this->CurrentCellId << "\n";
  os << indent << "CellArray: " << this->CellArray.Get() << "\n";
}
VTK_ABI_NAMESPACE_END
