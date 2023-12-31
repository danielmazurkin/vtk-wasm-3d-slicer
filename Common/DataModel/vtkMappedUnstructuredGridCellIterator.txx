/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkMappedUnstructuredGridCellIterator.txx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#include "vtkMappedUnstructuredGridCellIterator.h"

#include "vtkMappedUnstructuredGrid.h"
#include "vtkObjectFactory.h"
#include "vtkPoints.h"

//------------------------------------------------------------------------------
VTK_ABI_NAMESPACE_BEGIN
template <class Implementation>
vtkMappedUnstructuredGridCellIterator<Implementation>*
vtkMappedUnstructuredGridCellIterator<Implementation>::New()
{
  VTK_STANDARD_NEW_BODY(ThisType);
}

//------------------------------------------------------------------------------
template <class Implementation>
void vtkMappedUnstructuredGridCellIterator<Implementation>::PrintSelf(ostream& os, vtkIndent indent)
{
  os << indent << "Implementation:";
  if (this->Impl == nullptr)
  {
    os << " nullptr" << endl;
  }
  else
  {
    os << endl;
    this->Impl->PrintSelf(os, indent.GetNextIndent());
  }

  os << indent << "GridPoints:";
  if (this->GridPoints == nullptr)
  {
    os << " nullptr" << endl;
  }
  else
  {
    os << endl;
    this->GridPoints->PrintSelf(os, indent.GetNextIndent());
  }
}

//------------------------------------------------------------------------------
template <class Implementation>
bool vtkMappedUnstructuredGridCellIterator<Implementation>::IsDoneWithTraversal()
{
  return this->CellId >= this->NumberOfCells;
}

//------------------------------------------------------------------------------
template <class Implementation>
vtkIdType vtkMappedUnstructuredGridCellIterator<Implementation>::GetCellId()
{
  return this->CellId;
}

//------------------------------------------------------------------------------
template <class Implementation>
vtkMappedUnstructuredGridCellIterator<Implementation>::vtkMappedUnstructuredGridCellIterator()
  : Impl(nullptr)
  , GridPoints(nullptr)
  , CellId(0)
  , NumberOfCells(0)
{
}

//------------------------------------------------------------------------------
template <class Implementation>
vtkMappedUnstructuredGridCellIterator<Implementation>::~vtkMappedUnstructuredGridCellIterator() =
  default;

//------------------------------------------------------------------------------
template <class Implementation>
void vtkMappedUnstructuredGridCellIterator<Implementation>::ResetToFirstCell()
{
  this->CellId = 0;
}

//------------------------------------------------------------------------------
template <class Implementation>
void vtkMappedUnstructuredGridCellIterator<Implementation>::IncrementToNextCell()
{
  ++this->CellId;
}

//------------------------------------------------------------------------------
template <class Implementation>
void vtkMappedUnstructuredGridCellIterator<Implementation>::FetchCellType()
{
  this->CellType = this->Impl->GetCellType(this->CellId);
}

//------------------------------------------------------------------------------
template <class Implementation>
void vtkMappedUnstructuredGridCellIterator<Implementation>::FetchPointIds()
{
  this->Impl->GetCellPoints(this->CellId, this->PointIds);
}

//------------------------------------------------------------------------------
template <class Implementation>
void vtkMappedUnstructuredGridCellIterator<Implementation>::FetchPoints()
{
  this->GridPoints->GetPoints(this->GetPointIds(), this->Points);
}

//------------------------------------------------------------------------------
template <class Implementation>
void vtkMappedUnstructuredGridCellIterator<Implementation>::SetMappedUnstructuredGrid(
  vtkMappedUnstructuredGrid<ImplementationType, ThisType>* grid)
{
  this->Impl = grid->GetImplementation();
  this->GridPoints = grid->GetPoints();
  this->CellId = 0;
  this->NumberOfCells = grid->GetNumberOfCells();
  if (this->GridPoints)
  {
    this->Points->SetDataType(this->GridPoints->GetDataType());
  }
}
VTK_ABI_NAMESPACE_END
