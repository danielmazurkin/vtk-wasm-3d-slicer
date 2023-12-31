/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkPVWebGLExporter.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#ifndef vtkPVWebGLExporter_h
#define vtkPVWebGLExporter_h

#include "vtkExporter.h"
#include "vtkWebGLExporterModule.h" // needed for export macro

VTK_ABI_NAMESPACE_BEGIN
class VTKWEBGLEXPORTER_EXPORT vtkPVWebGLExporter : public vtkExporter
{
public:
  static vtkPVWebGLExporter* New();
  vtkTypeMacro(vtkPVWebGLExporter, vtkExporter);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  // Description:
  // Specify the name of the VRML file to write.
  vtkSetFilePathMacro(FileName);
  vtkGetFilePathMacro(FileName);

protected:
  vtkPVWebGLExporter();
  ~vtkPVWebGLExporter() override;

  void WriteData() override;

  char* FileName;

private:
  vtkPVWebGLExporter(const vtkPVWebGLExporter&) = delete;
  void operator=(const vtkPVWebGLExporter&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
