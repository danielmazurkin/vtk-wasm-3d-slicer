/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkInteractionStyleObjectFactory.cxx

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

#include "vtkInteractionStyleObjectFactory.h"
#include "vtkVersion.h"

// Include all of the classes we want to create overrides for.
#include "vtkInteractorStyleSwitch.h"


VTK_ABI_NAMESPACE_BEGIN

vtkStandardNewMacro(vtkInteractionStyleObjectFactory);

// Now create the functions to create overrides with.
VTK_CREATE_CREATE_FUNCTION(vtkInteractorStyleSwitch)


vtkInteractionStyleObjectFactory::vtkInteractionStyleObjectFactory()
{
this->RegisterOverride("vtkInteractorStyleSwitchBase", "vtkInteractorStyleSwitch", "Override for VTK::InteractionStyle module", 1, vtkObjectFactoryCreatevtkInteractorStyleSwitch);

}

const char * vtkInteractionStyleObjectFactory::GetVTKSourceVersion()
{
  return VTK_SOURCE_VERSION;
}

void vtkInteractionStyleObjectFactory::PrintSelf(ostream &os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os, indent);
}

// Registration of object factories.
static unsigned int vtkInteractionStyleCount = 0;

VTKINTERACTIONSTYLE_EXPORT void vtkInteractionStyle_AutoInit_Construct()
{
  if(++vtkInteractionStyleCount == 1)
  {


    vtkInteractionStyleObjectFactory* factory = vtkInteractionStyleObjectFactory::New();
    if (factory)
    {
      // vtkObjectFactory keeps a reference to the "factory",
      vtkObjectFactory::RegisterFactory(factory);
      factory->Delete();
    }
  }
}
VTK_ABI_NAMESPACE_END
