/*=========================================================================

  Program:   ParaView
  Module:    vtkXMLHierarchicalBoxDataReader.h

  Copyright (c) Kitware, Inc.
  All rights reserved.
  See Copyright.txt or http://www.paraview.org/HTML/Copyright.html for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkXMLHierarchicalBoxDataReader
 * @brief   Reader for hierarchical datasets
 * (for backwards compatibility).
 *
 *
 * vtkXMLHierarchicalBoxDataReader is an empty subclass of
 * vtkXMLUniformGridAMRReader. This is only for backwards compatibility. Newer
 * code should simply use vtkXMLUniformGridAMRReader.
 *
 * @warning
 * The reader supports reading v1.1 and above. For older versions, use
 * vtkXMLHierarchicalBoxDataFileConverter.
 */

#ifndef vtkXMLHierarchicalBoxDataReader_h
#define vtkXMLHierarchicalBoxDataReader_h

#include "vtkXMLUniformGridAMRReader.h"

VTK_ABI_NAMESPACE_BEGIN
class VTKIOXML_EXPORT vtkXMLHierarchicalBoxDataReader : public vtkXMLUniformGridAMRReader
{
public:
  static vtkXMLHierarchicalBoxDataReader* New();
  vtkTypeMacro(vtkXMLHierarchicalBoxDataReader, vtkXMLUniformGridAMRReader);
  void PrintSelf(ostream& os, vtkIndent indent) override;

protected:
  vtkXMLHierarchicalBoxDataReader();
  ~vtkXMLHierarchicalBoxDataReader() override;

private:
  vtkXMLHierarchicalBoxDataReader(const vtkXMLHierarchicalBoxDataReader&) = delete;
  void operator=(const vtkXMLHierarchicalBoxDataReader&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
