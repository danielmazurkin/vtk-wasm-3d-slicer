/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkPropCollection.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkPropCollection.h"
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkPropCollection);

void vtkPropCollection::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

int vtkPropCollection::GetNumberOfPaths()
{
  int numPaths = 0;
  vtkProp* aProp;

  vtkCollectionSimpleIterator pit;
  for (this->InitTraversal(pit); (aProp = this->GetNextProp(pit));)
  {
    numPaths += aProp->GetNumberOfPaths();
  }
  return numPaths;
}
VTK_ABI_NAMESPACE_END
