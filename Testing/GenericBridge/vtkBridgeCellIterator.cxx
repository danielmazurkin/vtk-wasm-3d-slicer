/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkBridgeCellIterator.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
// .NAME vtkBridgeCellIterator - Implementation of vtkGenericCellIterator.
// It is just an example that show how to implement the Generic. It is also
// used for testing and evaluating the Generic.
// .SECTION See Also
// vtkGenericCellIterator, vtkBridgeDataSet

#include "vtkBridgeCellIterator.h"

#include <cassert>

#include "vtkBridgeCell.h"
#include "vtkBridgeDataSet.h"
#include "vtkDataSet.h"
#include "vtkIdList.h"
#include "vtkObjectFactory.h"

#include "vtkBridgeCellIteratorOnCellBoundaries.h"
#include "vtkBridgeCellIteratorOnCellList.h"
#include "vtkBridgeCellIteratorOnDataSet.h"
#include "vtkBridgeCellIteratorOne.h"

VTK_ABI_NAMESPACE_BEGIN
vtkStandardNewMacro(vtkBridgeCellIterator);

//------------------------------------------------------------------------------
void vtkBridgeCellIterator::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

//------------------------------------------------------------------------------
vtkBridgeCellIterator::vtkBridgeCellIterator()
{
  //  this->DebugOn();
  this->CurrentIterator = nullptr;
  this->IteratorOnDataSet = vtkBridgeCellIteratorOnDataSet::New();
  this->IteratorOneCell = vtkBridgeCellIteratorOne::New();
  this->IteratorOnCellBoundaries = vtkBridgeCellIteratorOnCellBoundaries::New();
  this->IteratorOnCellList = vtkBridgeCellIteratorOnCellList::New();
}

//------------------------------------------------------------------------------
vtkBridgeCellIterator::~vtkBridgeCellIterator()
{
  this->IteratorOnDataSet->Delete();
  this->IteratorOneCell->Delete();
  this->IteratorOnCellBoundaries->Delete();
  this->IteratorOnCellList->Delete();
}

//------------------------------------------------------------------------------
// Description:
// Move iterator to first position if any (loop initialization).
void vtkBridgeCellIterator::Begin()
{
  if (this->CurrentIterator != nullptr)
  {
    this->CurrentIterator->Begin();
  }
}

//------------------------------------------------------------------------------
// Description:
// Is there no cell at iterator position? (exit condition).
vtkTypeBool vtkBridgeCellIterator::IsAtEnd()
{
  int result = 1;

  if (this->CurrentIterator != nullptr)
  {
    result = this->CurrentIterator->IsAtEnd();
  }
  return result;
}

//------------------------------------------------------------------------------
// Description:
// Create an empty cell.
// \post result_exists: result!=0
vtkGenericAdaptorCell* vtkBridgeCellIterator::NewCell()
{
  vtkGenericAdaptorCell* result = vtkBridgeCell::New();
  assert("post: result_exists" && result != nullptr);
  return result;
}

//------------------------------------------------------------------------------
// Description:
// Cell at current position
// \pre not_at_end: !IsAtEnd()
// \pre c_exists: c!=0
// THREAD SAFE
void vtkBridgeCellIterator::GetCell(vtkGenericAdaptorCell* c)
{
  assert("pre: not_at_end" && !IsAtEnd());
  assert("pre: c_exists" && c != nullptr);

  this->CurrentIterator->GetCell(c);
}

//------------------------------------------------------------------------------
// Description:
// Cell at current position.
// NOT THREAD SAFE
// \pre not_at_end: !IsAtEnd()
// \post result_exits: result!=0
vtkGenericAdaptorCell* vtkBridgeCellIterator::GetCell()
{
  assert("pre: not_at_end" && !IsAtEnd());
  vtkGenericAdaptorCell* result = this->CurrentIterator->GetCell();
  assert("post: result_exits" && result != nullptr);
  return result;
}

//------------------------------------------------------------------------------
// Description:
// Move iterator to next position. (loop progression).
// \pre not_at_end: !IsAtEnd()
void vtkBridgeCellIterator::Next()
{
  assert("pre: not_off" && !IsAtEnd());
  this->CurrentIterator->Next();
}

//------------------------------------------------------------------------------
// Description:
// Used internally by vtkBridgeDataSet.
// Iterate over cells of `ds' of some dimension `dim'.
// \pre ds_exists: ds!=0
// \pre valid_dim_range: (dim>=-1) && (dim<=3)
void vtkBridgeCellIterator::InitWithDataSet(vtkBridgeDataSet* ds, int dim)
{
  assert("pre: ds_exists" && ds != nullptr);
  assert("pre: valid_dim_range" && (dim >= -1) && (dim <= 3));

  this->IteratorOnDataSet->InitWithDataSet(ds, dim);
  this->CurrentIterator = this->IteratorOnDataSet;
}

//------------------------------------------------------------------------------
// Description:
// Used internally by vtkBridgeDataSet.
// Iterate over boundary cells of `ds' of some dimension `dim'.
// \pre ds_exists: ds!=0
// \pre valid_dim_range: (dim>=-1) && (dim<=3)
void vtkBridgeCellIterator::InitWithDataSetBoundaries(
  vtkBridgeDataSet* ds, int dim, int exterior_only)
{
  assert("pre: ds_exists" && ds != nullptr);
  assert("pre: valid_dim_range" && (dim >= -1) && (dim <= 3));

  (void)ds;
  (void)dim;
  (void)exterior_only;

  assert("check: TODO" && 0);
}

//------------------------------------------------------------------------------
// Description:
// Used internally by vtkBridgeDataSet.
// Iterate on one cell `id' of `ds'.
// \pre ds_exists: ds!=0
// \pre valid_id: (id>=0)&&(id<=ds->GetNumberOfCells())
void vtkBridgeCellIterator::InitWithOneCell(vtkBridgeDataSet* ds, vtkIdType cellid)
{
  assert("pre: ds_exists" && ds != nullptr);
  assert("pre: valid_id" && (cellid >= 0) && (cellid <= ds->GetNumberOfCells()));

  this->IteratorOneCell->InitWithOneCell(ds, cellid);
  this->CurrentIterator = this->IteratorOneCell;
}

//------------------------------------------------------------------------------
// Description:
// Used internally by vtkBridgeCell.
// Iterate on one cell `c'.
// \pre c_exists: c!=0
void vtkBridgeCellIterator::InitWithOneCell(vtkBridgeCell* c)
{
  assert("pre: c_exists" && c != nullptr);
  this->IteratorOneCell->InitWithOneCell(c);
  this->CurrentIterator = this->IteratorOneCell;
}

//------------------------------------------------------------------------------
// Description:
// Used internally by vtkBridgeCell.
// Iterate on boundary cells of a cell.
// \pre cell_exists: cell!=0
// \pre valid_dim_range: (dim==-1) || ((dim>=0)&&(dim<cell->GetDimension()))
void vtkBridgeCellIterator::InitWithCellBoundaries(vtkBridgeCell* cell, int dim)
{
  assert("pre: cell_exists" && cell != nullptr);
  assert("pre: valid_dim_range" && ((dim == -1) || ((dim >= 0) && (dim < cell->GetDimension()))));
  this->IteratorOnCellBoundaries->InitWithCellBoundaries(cell, dim);
  this->CurrentIterator = this->IteratorOnCellBoundaries;
}

//------------------------------------------------------------------------------
// Description:
// Used internally by vtkBridgeCell.
// Iterate on neighbors defined by `cells' over the dataset `ds'.
// \pre cells_exist: cells!=0
// \pre ds_exists: ds!=0
void vtkBridgeCellIterator::InitWithCells(vtkIdList* cells, vtkBridgeDataSet* ds)
{
  assert("pre: cells_exist" && cells != nullptr);
  assert("pre: ds_exists" && ds != nullptr);

  this->IteratorOnCellList->InitWithCells(cells, ds);
  this->CurrentIterator = this->IteratorOnCellList;
}

//------------------------------------------------------------------------------
// Description:
// Used internally by vtkBridgeCell.
// Iterate on a boundary cell (defined by its points `pts' with coordinates
// `coords', dimension `dim' and unique id `cellid') of a cell.
// \pre coords_exist: coords!=0
// \pre pts_exist: pts!=0
// \pre valid_dim: dim>=0 && dim<=2
// \pre valid_points: pts->GetNumberOfIds()>dim
void vtkBridgeCellIterator::InitWithPoints(
  vtkPoints* coords, vtkIdList* pts, int dim, vtkIdType cellid)
{
  assert("pre: coords_exist" && coords != nullptr);
  assert("pre: pts_exist" && pts != nullptr);
  assert("pre: valid_dim" && dim >= 0 && dim <= 2);
  assert("pre: valid_points" && pts->GetNumberOfIds() > dim);

  this->IteratorOneCell->InitWithPoints(coords, pts, dim, cellid);
  this->CurrentIterator = this->IteratorOneCell;
}
VTK_ABI_NAMESPACE_END
