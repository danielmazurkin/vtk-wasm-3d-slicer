/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkOpenGLVolumeRGBTable.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkOpenGLVolumeRGBTable_h
#define vtkOpenGLVolumeRGBTable_h

#include "vtkOpenGLVolumeLookupTable.h"
#include "vtkRenderingVolumeOpenGL2Module.h" // For export macro

// Forward declarations
VTK_ABI_NAMESPACE_BEGIN
class vtkOpenGLRenderWindow;

//----------------------------------------------------------------------------
class VTKRENDERINGVOLUMEOPENGL2_EXPORT vtkOpenGLVolumeRGBTable : public vtkOpenGLVolumeLookupTable
{
public:
  vtkTypeMacro(vtkOpenGLVolumeRGBTable, vtkOpenGLVolumeLookupTable);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  static vtkOpenGLVolumeRGBTable* New();

protected:
  vtkOpenGLVolumeRGBTable();

  /**
   * Update the internal texture object using the color transfer function
   */
  void InternalUpdate(vtkObject* func, int blendMode, double sampleDistance, double unitDistance,
    int filterValue) override;

private:
  vtkOpenGLVolumeRGBTable(const vtkOpenGLVolumeRGBTable&) = delete;
  void operator=(const vtkOpenGLVolumeRGBTable&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif // vtkOpenGLVolumeRGBTable_h
