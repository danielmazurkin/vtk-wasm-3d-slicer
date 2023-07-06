/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkInteractionStyleObjectFactory.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkInteractionStyleObjectFactory_h
#define vtkInteractionStyleObjectFactory_h

#include "vtkInteractionStyleModule.h" // For export macro
#include "vtkObjectFactory.h"

VTK_ABI_NAMESPACE_BEGIN

class VTKINTERACTIONSTYLE_EXPORT vtkInteractionStyleObjectFactory : public vtkObjectFactory
{
public:
  static vtkInteractionStyleObjectFactory * New();
  vtkTypeMacro(vtkInteractionStyleObjectFactory, vtkObjectFactory);

  const char * GetDescription() override { return "vtkInteractionStyle factory overrides."; }

  const char * GetVTKSourceVersion() override;

  void PrintSelf(ostream &os, vtkIndent indent) override;

protected:
  vtkInteractionStyleObjectFactory();

private:
  vtkInteractionStyleObjectFactory(const vtkInteractionStyleObjectFactory&) = delete;
  void operator=(const vtkInteractionStyleObjectFactory&) = delete;
};

VTK_ABI_NAMESPACE_END

#endif // vtkInteractionStyleObjectFactory_h
