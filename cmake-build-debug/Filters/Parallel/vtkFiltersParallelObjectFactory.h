/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkFiltersParallelObjectFactory.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkFiltersParallelObjectFactory_h
#define vtkFiltersParallelObjectFactory_h

#include "vtkFiltersParallelModule.h" // For export macro
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN

class VTKFILTERSPARALLEL_EXPORT vtkFiltersParallelObjectFactory : public vtkObjectFactory
{
public:
  static vtkFiltersParallelObjectFactory * New();
  vtkTypeMacro(vtkFiltersParallelObjectFactory, vtkObjectFactory);

  const char * GetDescription() override { return "vtkFiltersParallel factory overrides."; }

  const char * GetVTKSourceVersion() override;

  void PrintSelf(ostream &os, vtkIndent indent) override;

protected:
  vtkFiltersParallelObjectFactory();

private:
  vtkFiltersParallelObjectFactory(const vtkFiltersParallelObjectFactory&) = delete;
  void operator=(const vtkFiltersParallelObjectFactory&) = delete;
};

VTK_ABI_NAMESPACE_END

#endif // vtkFiltersParallelObjectFactory_h
