/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkRenderingCellGridObjectFactory.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

// Object factories should never have deprecation warnings.
// NOLINTNEXTLINE(modernize-macro-to-enum)
#define VTK_DEPRECATION_LEVEL 0

#include "vtkRenderingCellGridObjectFactory.h"
#include "vtkVersion.h"

// Include all of the classes we want to create overrides for.
#include "vtkOpenGLCellGridMapper.h"


VTK_ABI_NAMESPACE_BEGIN

vtkStandardNewMacro(vtkRenderingCellGridObjectFactory);

// Now create the functions to create overrides with.
VTK_CREATE_CREATE_FUNCTION(vtkOpenGLCellGridMapper)


vtkRenderingCellGridObjectFactory::vtkRenderingCellGridObjectFactory()
{
this->RegisterOverride("vtkCellGridMapper", "vtkOpenGLCellGridMapper", "Override for VTK::RenderingCellGrid module", 1, vtkObjectFactoryCreatevtkOpenGLCellGridMapper);

}

const char * vtkRenderingCellGridObjectFactory::GetVTKSourceVersion()
{
  return VTK_SOURCE_VERSION;
}

void vtkRenderingCellGridObjectFactory::PrintSelf(ostream &os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

// Registration of object factories.
static unsigned int vtkRenderingCellGridCount = 0;

VTKRENDERINGCELLGRID_EXPORT void vtkRenderingCellGrid_AutoInit_Construct()
{
  if(++vtkRenderingCellGridCount == 1)
  {


    vtkRenderingCellGridObjectFactory* factory = vtkRenderingCellGridObjectFactory::New();
    if (factory)
    {
      // vtkObjectFactory keeps a reference to the "factory",
      vtkObjectFactory::RegisterFactory(factory);
      factory->Delete();
    }
  }
}
VTK_ABI_NAMESPACE_END
