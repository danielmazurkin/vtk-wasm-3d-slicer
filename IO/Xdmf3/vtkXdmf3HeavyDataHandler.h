/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkXdmf3HeavyDataHandler.h
  Language:  C++

  Copyright (c) 1993-2002 Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkXdmf3HeavyDataHandler
 * @brief   internal helper for vtkXdmf3Reader
 *
 * vtkXdmf3Reader uses this class to read the heavy data from the XDMF
 * file(s).
 *
 * This file is a helper for the vtkXdmf3Reader and not intended to be
 * part of VTK public API
 */

#ifndef vtkXdmf3HeavyDataHandler_h
#define vtkXdmf3HeavyDataHandler_h

#include "vtkIOXdmf3Module.h" // For export macro

#include "vtk_xdmf3.h"

// clang-format off
#include VTKXDMF3_HEADER(core/XdmfInformation.hpp)

#include VTKXDMF3_HEADER(core/XdmfItem.hpp)
#include VTKXDMF3_HEADER(core/XdmfSharedPtr.hpp)
// clang-format on

#include "vtkXdmf3ArrayKeeper.h"
#include "vtkXdmf3ArraySelection.h"

#include VTKXDMF3_HEADER(XdmfCurvilinearGrid.hpp)
#include VTKXDMF3_HEADER(XdmfGraph.hpp)
#include VTKXDMF3_HEADER(XdmfGrid.hpp)
#include VTKXDMF3_HEADER(XdmfRectilinearGrid.hpp)
#include VTKXDMF3_HEADER(XdmfRegularGrid.hpp)
#include VTKXDMF3_HEADER(XdmfSet.hpp)
#include VTKXDMF3_HEADER(XdmfUnstructuredGrid.hpp)
#include VTKXDMF3_HEADER(XdmfDomain.hpp)

VTK_ABI_NAMESPACE_BEGIN
class vtkDataObject;
class vtkDataSet;
class vtkImageData;
class vtkMutableDirectedGraph;
class vtkRectilinearGrid;
class vtkStructuredGrid;
class vtkUnstructuredGrid;

class VTKIOXDMF3_EXPORT vtkXdmf3HeavyDataHandler
{
public:
  /**
   * factory constructor
   */
  static shared_ptr<vtkXdmf3HeavyDataHandler> New(vtkXdmf3ArraySelection* fs,
    vtkXdmf3ArraySelection* cs, vtkXdmf3ArraySelection* ps, vtkXdmf3ArraySelection* gc,
    vtkXdmf3ArraySelection* sc, unsigned int processor, unsigned int nprocessors, bool dt, double t,
    vtkXdmf3ArrayKeeper* keeper, bool asTime);

  /**
   * recursively create and populate vtk data objects for the provided Xdmf item
   */
  vtkDataObject* Populate(shared_ptr<XdmfGrid> item, vtkDataObject* toFill);
  vtkDataObject* Populate(shared_ptr<XdmfDomain> item, vtkDataObject* toFill);
  vtkDataObject* Populate(shared_ptr<XdmfGraph> item, vtkDataObject* toFill);

  vtkXdmf3ArrayKeeper* Keeper;

  shared_ptr<XdmfGrid> testItem1;
  shared_ptr<XdmfDomain> testItem2;

protected:
  /**
   * for parallel partitioning
   */
  bool ShouldRead(unsigned int piece, unsigned int npieces);

  bool GridEnabled(shared_ptr<XdmfGrid> grid);
  bool GridEnabled(shared_ptr<XdmfGraph> graph);
  bool SetEnabled(shared_ptr<XdmfSet> set);

  bool ForThisTime(shared_ptr<XdmfGrid> grid);
  bool ForThisTime(shared_ptr<XdmfGraph> graph);

  vtkDataObject* MakeUnsGrid(shared_ptr<XdmfUnstructuredGrid> grid, vtkUnstructuredGrid* dataSet,
    vtkXdmf3ArrayKeeper* keeper);

  vtkDataObject* MakeRecGrid(
    shared_ptr<XdmfRectilinearGrid> grid, vtkRectilinearGrid* dataSet, vtkXdmf3ArrayKeeper* keeper);

  vtkDataObject* MakeCrvGrid(
    shared_ptr<XdmfCurvilinearGrid> grid, vtkStructuredGrid* dataSet, vtkXdmf3ArrayKeeper* keeper);

  vtkDataObject* MakeRegGrid(
    shared_ptr<XdmfRegularGrid> grid, vtkImageData* dataSet, vtkXdmf3ArrayKeeper* keeper);
  vtkDataObject* MakeGraph(
    shared_ptr<XdmfGraph> grid, vtkMutableDirectedGraph* dataSet, vtkXdmf3ArrayKeeper* keeper);

  vtkDataObject* ExtractSet(unsigned int setnum, shared_ptr<XdmfGrid> grid, vtkDataSet* dataSet,
    vtkUnstructuredGrid* subSet, vtkXdmf3ArrayKeeper* keeper);

  bool doTime;
  double time;
  unsigned int Rank;
  unsigned int NumProcs;
  vtkXdmf3ArraySelection* FieldArrays;
  vtkXdmf3ArraySelection* CellArrays;
  vtkXdmf3ArraySelection* PointArrays;
  vtkXdmf3ArraySelection* GridsCache;
  vtkXdmf3ArraySelection* SetsCache;
  bool AsTime;
};

VTK_ABI_NAMESPACE_END
#endif // vtkXdmf3HeavyDataHandler_h
// VTK-HeaderTest-Exclude: vtkXdmf3HeavyDataHandler.h
