/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkContourHelper.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#include "vtkContourHelper.h"

#include "vtkCell.h"
#include "vtkCellArray.h"
#include "vtkCellData.h"
#include "vtkDataArray.h"
#include "vtkIdListCollection.h"
#include "vtkIncrementalPointLocator.h"
#include "vtkPointData.h"
#include "vtkPolygonBuilder.h"

//------------------------------------------------------------------------------
VTK_ABI_NAMESPACE_BEGIN
vtkContourHelper::vtkContourHelper(vtkIncrementalPointLocator* locator, vtkCellArray* verts,
  vtkCellArray* lines, vtkCellArray* polys, vtkPointData* inPd, vtkCellData* inCd,
  vtkPointData* outPd, vtkCellData* outCd, int estimatedSize, bool outputTriangles)
  : Locator(locator)
  , Verts(verts)
  , Lines(lines)
  , Polys(polys)
  , InPd(inPd)
  , InCd(inCd)
  , OutPd(outPd)
  , OutCd(outCd)
  , GenerateTriangles(outputTriangles)
{
  this->Tris = vtkCellArray::New();
  this->TriOutCd = vtkCellData::New();
  if (this->GenerateTriangles)
  {
    this->Tris->AllocateEstimate(estimatedSize, 3);
    this->TriOutCd->Initialize();
  }
  this->PolyCollection = vtkIdListCollection::New();
}

//------------------------------------------------------------------------------
vtkContourHelper::~vtkContourHelper()
{
  this->Tris->Delete();
  this->TriOutCd->Delete();
  this->PolyCollection->Delete();
}

//------------------------------------------------------------------------------
void vtkContourHelper::Contour(
  vtkCell* cell, double value, vtkDataArray* cellScalars, vtkIdType cellId)
{
  bool mergeTriangles = (!this->GenerateTriangles) && cell->GetCellDimension() == 3;
  vtkCellData* outCD = nullptr;
  vtkCellArray* outPoly = nullptr;
  if (mergeTriangles)
  {
    outPoly = this->Tris;
    outCD = this->TriOutCd;
  }
  else
  {
    outPoly = this->Polys;
    outCD = this->OutCd;
  }
  cell->Contour(value, cellScalars, this->Locator, this->Verts, this->Lines, outPoly, this->InPd,
    this->OutPd, this->InCd, cellId, outCD);
  if (mergeTriangles)
  {
    this->PolyBuilder.Reset();

    vtkIdType cellSize;
    const vtkIdType* cellVerts;
    while (this->Tris->GetNextCell(cellSize, cellVerts))
    {
      if (cellSize == 3)
      {
        this->PolyBuilder.InsertTriangle(cellVerts);
      }
      else // for whatever reason, the cell contouring is already outputting polys
      {
        vtkIdType outCellId = this->Polys->InsertNextCell(cellSize, cellVerts);
        this->OutCd->CopyData(this->InCd, cellId,
          outCellId + this->Verts->GetNumberOfCells() + this->Lines->GetNumberOfCells());
      }
    }

    this->PolyBuilder.GetPolygons(this->PolyCollection);
    int nPolys = this->PolyCollection->GetNumberOfItems();
    for (int polyId = 0; polyId < nPolys; ++polyId)
    {
      vtkIdList* poly = this->PolyCollection->GetItem(polyId);
      if (poly->GetNumberOfIds() != 0)
      {
        vtkIdType outCellId = this->Polys->InsertNextCell(poly);
        this->OutCd->CopyData(this->InCd, cellId,
          outCellId + this->Verts->GetNumberOfCells() + this->Lines->GetNumberOfCells());
      }
      poly->Delete();
    }
    this->PolyCollection->RemoveAllItems();
  }
}
VTK_ABI_NAMESPACE_END
