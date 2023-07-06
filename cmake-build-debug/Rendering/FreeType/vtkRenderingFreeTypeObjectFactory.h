/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkRenderingFreeTypeObjectFactory.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkRenderingFreeTypeObjectFactory_h
#define vtkRenderingFreeTypeObjectFactory_h

#include "vtkRenderingFreeTypeModule.h" // For export macro
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN

class VTKRENDERINGFREETYPE_EXPORT vtkRenderingFreeTypeObjectFactory : public vtkObjectFactory
{
public:
  static vtkRenderingFreeTypeObjectFactory * New();
  vtkTypeMacro(vtkRenderingFreeTypeObjectFactory, vtkObjectFactory);

  const char * GetDescription() override { return "vtkRenderingFreeType factory overrides."; }

  const char * GetVTKSourceVersion() override;

  void PrintSelf(ostream &os, vtkIndent indent) override;

protected:
  vtkRenderingFreeTypeObjectFactory();

private:
  vtkRenderingFreeTypeObjectFactory(const vtkRenderingFreeTypeObjectFactory&) = delete;
  void operator=(const vtkRenderingFreeTypeObjectFactory&) = delete;
};

VTK_ABI_NAMESPACE_END

#endif // vtkRenderingFreeTypeObjectFactory_h
