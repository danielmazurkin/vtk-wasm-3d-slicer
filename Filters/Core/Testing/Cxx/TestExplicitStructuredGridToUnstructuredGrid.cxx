/*=========================================================================

  Program:   Visualization Toolkit
  Module:    TestImageDataToExplicitStructuredGrid.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

  This software is distributed WITHOUT ANY WARRANTY; without even
  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
  PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

// Description
// This test creates an explicit grid and convert it to unstructured grid using
// vtkExplicitStructuredGridToUnstructuredGrid

#include "vtkActor.h"
#include "vtkCellData.h"
#include "vtkDataSetMapper.h"
#include "vtkExplicitStructuredGrid.h"
#include "vtkExplicitStructuredGridToUnstructuredGrid.h"
#include "vtkImageDataToExplicitStructuredGrid.h"
#include "vtkNew.h"
#include "vtkRTAnalyticSource.h"
#include "vtkRegressionTestImage.h"
#include "vtkRenderWindow.h"
#include "vtkRenderWindowInteractor.h"
#include "vtkRenderer.h"
#include "vtkTesting.h"
#include "vtkUnstructuredGrid.h"

int TestExplicitStructuredGridToUnstructuredGrid(int argc, char* argv[])
{
  // Create the sample dataset
  vtkNew<vtkRTAnalyticSource> wavelet;
  wavelet->SetWholeExtent(-10, 10, -10, 10, -10, 10);
  wavelet->SetCenter(0.0, 0.0, 0.0);
  wavelet->Update();

  vtkNew<vtkImageDataToExplicitStructuredGrid> esgConvertor;
  esgConvertor->SetInputConnection(wavelet->GetOutputPort());
  esgConvertor->Update();

  vtkNew<vtkExplicitStructuredGrid> copy;
  copy->DeepCopy(esgConvertor->GetOutput());

  vtkNew<vtkExplicitStructuredGridToUnstructuredGrid> ugConvertor;
  ugConvertor->SetInputData(copy);
  ugConvertor->Update();

  vtkCellData* cellData = ugConvertor->GetOutput()->GetCellData();
  if (!cellData->GetArray("BLOCK_I") || !cellData->GetArray("BLOCK_I") ||
    !cellData->GetArray("BLOCK_I"))
  {
    std::cout << "Missing expected arrays" << std::endl;
    return EXIT_FAILURE;
  }

  vtkNew<vtkDataSetMapper> mapper;
  mapper->SetInputConnection(ugConvertor->GetOutputPort());
  vtkNew<vtkActor> actor;
  actor->SetMapper(mapper);
  vtkNew<vtkRenderer> ren;
  ren->AddActor(actor);

  vtkNew<vtkRenderWindow> renWin;
  renWin->SetSize(300, 300);
  renWin->AddRenderer(ren);
  vtkNew<vtkRenderWindowInteractor> iren;
  iren->SetRenderWindow(renWin);

  ren->ResetCamera();
  renWin->Render();

  int retVal = vtkRegressionTestImage(renWin);
  if (retVal == vtkRegressionTester::DO_INTERACTOR)
  {
    iren->Start();
  }
  return !retVal;
}
