/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkNonOverlappingAMRLevelIdScalars.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkNonOverlappingAMRLevelIdScalars
 * @brief   generate scalars from levels.
 *
 * vtkNonOverlappingAMRLevelIdScalars is a filter that generates scalars using
 * the level number for each level. Note that all datasets within a level get
 * the same scalar. The new scalars array is named \c LevelIdScalars.
 */

#ifndef vtkNonOverlappingAMRLevelIdScalars_h
#define vtkNonOverlappingAMRLevelIdScalars_h

#include "vtkFiltersGeneralModule.h" // For export macro
#include "vtkNonOverlappingAMRAlgorithm.h"

VTK_ABI_NAMESPACE_BEGIN
class vtkUniformGrid;
class vtkUniformGridAMR;

class VTKFILTERSGENERAL_EXPORT vtkNonOverlappingAMRLevelIdScalars
  : public vtkNonOverlappingAMRAlgorithm
{
public:
  static vtkNonOverlappingAMRLevelIdScalars* New();
  vtkTypeMacro(vtkNonOverlappingAMRLevelIdScalars, vtkNonOverlappingAMRAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent);

protected:
  vtkNonOverlappingAMRLevelIdScalars();
  ~vtkNonOverlappingAMRLevelIdScalars() override;

  int RequestData(vtkInformation*, vtkInformationVector**, vtkInformationVector*);

  void AddColorLevels(vtkUniformGridAMR* input, vtkUniformGridAMR* output);
  vtkUniformGrid* ColorLevel(vtkUniformGrid* input, int group);

private:
  vtkNonOverlappingAMRLevelIdScalars(const vtkNonOverlappingAMRLevelIdScalars&) = delete;
  void operator=(const vtkNonOverlappingAMRLevelIdScalars&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
