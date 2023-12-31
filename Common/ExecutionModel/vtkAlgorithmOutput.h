/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkAlgorithmOutput.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkAlgorithmOutput
 * @brief   Proxy object to connect input/output ports.
 *
 * vtkAlgorithmOutput is a proxy object returned by the GetOutputPort
 * method of vtkAlgorithm.  It may be passed to the
 * SetInputConnection, AddInputConnection, or RemoveInputConnection
 * methods of another vtkAlgorithm to establish a connection between
 * an output and input port.  The connection is not stored in the
 * proxy object: it is simply a convenience for creating or removing
 * connections.
 */

#ifndef vtkAlgorithmOutput_h
#define vtkAlgorithmOutput_h

#include "vtkCommonExecutionModelModule.h" // For export macro
#include "vtkObject.h"

VTK_ABI_NAMESPACE_BEGIN
class vtkAlgorithm;

class VTKCOMMONEXECUTIONMODEL_EXPORT vtkAlgorithmOutput : public vtkObject
{
public:
  static vtkAlgorithmOutput* New();
  vtkTypeMacro(vtkAlgorithmOutput, vtkObject);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  void SetIndex(int index);
  int GetIndex() const;

  vtkAlgorithm* GetProducer() const;
  void SetProducer(vtkAlgorithm* producer);

protected:
  vtkAlgorithmOutput();
  ~vtkAlgorithmOutput() override;

  int Index;
  vtkAlgorithm* Producer;

private:
  vtkAlgorithmOutput(const vtkAlgorithmOutput&) = delete;
  void operator=(const vtkAlgorithmOutput&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
