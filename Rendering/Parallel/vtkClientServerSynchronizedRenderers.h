/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkClientServerSynchronizedRenderers.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkClientServerSynchronizedRenderers
 *
 * vtkClientServerSynchronizedRenderers is a vtkSynchronizedRenderers subclass
 * designed to be used in 2 processes, client-server mode.
 */

#ifndef vtkClientServerSynchronizedRenderers_h
#define vtkClientServerSynchronizedRenderers_h

#include "vtkRenderingParallelModule.h" // For export macro
#include "vtkSynchronizedRenderers.h"

VTK_ABI_NAMESPACE_BEGIN
class VTKRENDERINGPARALLEL_EXPORT vtkClientServerSynchronizedRenderers
  : public vtkSynchronizedRenderers
{
public:
  static vtkClientServerSynchronizedRenderers* New();
  vtkTypeMacro(vtkClientServerSynchronizedRenderers, vtkSynchronizedRenderers);
  void PrintSelf(ostream& os, vtkIndent indent) override;

protected:
  vtkClientServerSynchronizedRenderers();
  ~vtkClientServerSynchronizedRenderers() override;

  void MasterEndRender() override;
  void SlaveEndRender() override;

private:
  vtkClientServerSynchronizedRenderers(const vtkClientServerSynchronizedRenderers&) = delete;
  void operator=(const vtkClientServerSynchronizedRenderers&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
