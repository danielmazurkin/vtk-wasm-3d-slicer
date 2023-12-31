/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkBridgeCellIteratorStrategy.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkBridgeCellIteratorStrategy
 * @brief   Interface used by vtkBridgeCellIterator
 * vtkBridgeCellIterator has different behaviors depending on the way it is
 * initialized. vtkBridgeCellIteratorStrategy is the interface for one of those
 * behaviors. Concrete classes are vtkBridgeCellIteratorOnDataSet,
 * vtkBridgeCellIteratorOnDataSetBoundaries,
 * vtkBridgeCellIteratorOnCellBoundaries,
 * vtkBridgeCellIteratorOnCellNeighbors,
 * @sa
 * vtkGenericCellIterator, vtkBridgeCellIterator, vtkBridgeDataSet, vtkBridgeCellIteratorOnDataSet,
 * vtkBridgeCellIteratorOnDataSetBoundaries, vtkBridgeCellIteratorOnCellBoundaries,
 * vtkBridgeCellIteratorOnCellNeighbors
 */

#ifndef vtkBridgeCellIteratorStrategy_h
#define vtkBridgeCellIteratorStrategy_h

#include "vtkBridgeExport.h" //for module export macro
#include "vtkGenericCellIterator.h"

VTK_ABI_NAMESPACE_BEGIN
class vtkBridgeCell;
class vtkBridgeDataSet;
class vtkBridgeCell;
class vtkIdList;

class VTKTESTINGGENERICBRIDGE_EXPORT vtkBridgeCellIteratorStrategy : public vtkGenericCellIterator
{
public:
  vtkTypeMacro(vtkBridgeCellIteratorStrategy, vtkGenericCellIterator);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  /**
   * Create an empty cell. NOT USED
   * \post result_exists: result!=0
   */
  vtkGenericAdaptorCell* NewCell() override;

protected:
  vtkBridgeCellIteratorStrategy() = default;
  ~vtkBridgeCellIteratorStrategy() override = default;

private:
  vtkBridgeCellIteratorStrategy(const vtkBridgeCellIteratorStrategy&) = delete;
  void operator=(const vtkBridgeCellIteratorStrategy&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
