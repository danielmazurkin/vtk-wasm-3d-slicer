/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkStaticCellLinks.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkStaticCellLinks.h"
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkStaticCellLinks);

//------------------------------------------------------------------------------
vtkStaticCellLinks::vtkStaticCellLinks()
{
  this->Type = vtkAbstractCellLinks::STATIC_CELL_LINKS_IDTYPE;
  this->Impl = new vtkStaticCellLinksTemplate<vtkIdType>;
}

//------------------------------------------------------------------------------
vtkStaticCellLinks::~vtkStaticCellLinks()
{
  delete this->Impl;
}
//------------------------------------------------------------------------------
void vtkStaticCellLinks::BuildLinks()
{
  // don't rebuild if build time is newer than modified and dataset modified time
  if (this->Impl->GetActualMemorySize() != 0 && this->BuildTime > this->MTime &&
    this->BuildTime > this->DataSet->GetMTime())
  {
    return;
  }
  this->Impl->SetSequentialProcessing(this->SequentialProcessing);
  this->Impl->BuildLinks(this->DataSet);
  this->BuildTime.Modified();
}

//------------------------------------------------------------------------------
void vtkStaticCellLinks::DeepCopy(vtkAbstractCellLinks* src)
{
  this->SetDataSet(src->GetDataSet());
  this->SetSequentialProcessing(src->GetSequentialProcessing());
  this->Impl->DeepCopy(src);
  this->BuildTime.Modified();
}

//------------------------------------------------------------------------------
void vtkStaticCellLinks::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
  os << indent << "Implementation: " << this->Impl << "\n";
}
VTK_ABI_NAMESPACE_END
