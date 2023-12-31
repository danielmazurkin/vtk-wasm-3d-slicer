/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkDataObjectTreeInternals.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkDataObjectTreeInternals
 *
 */

#ifndef vtkDataObjectTreeInternals_h
#define vtkDataObjectTreeInternals_h

#include "vtkDataObject.h"
#include "vtkInformation.h"
#include "vtkSmartPointer.h"

#include <vector>

//-----------------------------------------------------------------------------
// Item in the VectorOfDataObjects.
VTK_ABI_NAMESPACE_BEGIN
struct vtkDataObjectTreeItem
{
  vtkSmartPointer<vtkDataObject> DataObject;
  vtkSmartPointer<vtkInformation> MetaData;

  vtkDataObjectTreeItem(vtkDataObject* dobj = nullptr, vtkInformation* info = nullptr)
  {
    this->DataObject = dobj;
    this->MetaData = info;
  }
};

//-----------------------------------------------------------------------------
class vtkDataObjectTreeInternals
{
public:
  typedef std::vector<vtkDataObjectTreeItem> VectorOfDataObjects;
  typedef VectorOfDataObjects::iterator Iterator;
  typedef VectorOfDataObjects::reverse_iterator ReverseIterator;

  VectorOfDataObjects Children;
};

//-----------------------------------------------------------------------------
class vtkDataObjectTreeIndex : public std::vector<unsigned int>
{
  int IsValid() { return !this->empty(); }
};

VTK_ABI_NAMESPACE_END
#endif

// VTK-HeaderTest-Exclude: vtkDataObjectTreeInternals.h
