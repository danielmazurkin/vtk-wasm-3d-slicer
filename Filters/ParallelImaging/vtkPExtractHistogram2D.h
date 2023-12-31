/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkPExtractHistogram2D.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/*-------------------------------------------------------------------------
  Copyright 2009 Sandia Corporation.
  Under the terms of Contract DE-AC04-94AL85000 with Sandia Corporation,
  the U.S. Government retains certain rights in this software.
-------------------------------------------------------------------------*/
/**
 * @class   vtkPExtractHistogram2D
 * @brief   compute a 2D histogram between two columns
 *  of an input vtkTable in parallel.
 *
 *
 *  This class does exactly the same this as vtkExtractHistogram2D,
 *  but does it in a multi-process environment.  After each node
 *  computes their own local histograms, this class does an AllReduce
 *  that distributes the sum of all local histograms onto each node.
 *
 * @sa
 *  vtkExtractHistogram2D
 *
 * @par Thanks:
 *  Developed by David Feng and Philippe Pebay at Sandia National Laboratories
 *------------------------------------------------------------------------------
 */

#ifndef vtkPExtractHistogram2D_h
#define vtkPExtractHistogram2D_h

#include "vtkExtractHistogram2D.h"
#include "vtkFiltersParallelImagingModule.h" // For export macro

VTK_ABI_NAMESPACE_BEGIN
class vtkDataSetAttributes;
class vtkMultiBlockDataSet;
class vtkMultiProcessController;

class VTKFILTERSPARALLELIMAGING_EXPORT vtkPExtractHistogram2D : public vtkExtractHistogram2D
{
public:
  static vtkPExtractHistogram2D* New();
  vtkTypeMacro(vtkPExtractHistogram2D, vtkExtractHistogram2D);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  virtual void SetController(vtkMultiProcessController*);
  vtkGetObjectMacro(Controller, vtkMultiProcessController);

protected:
  vtkPExtractHistogram2D();
  ~vtkPExtractHistogram2D() override;

  vtkMultiProcessController* Controller;

  int ComputeBinExtents(
    vtkDataSetAttributes* rowData, vtkDataArray* col1, vtkDataArray* col2) override;

  // Execute the calculations required by the Learn option.
  void Learn(vtkTable* inData, vtkTable* inParameters, vtkMultiBlockDataSet* outMeta) override;

private:
  vtkPExtractHistogram2D(const vtkPExtractHistogram2D&) = delete;
  void operator=(const vtkPExtractHistogram2D&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
