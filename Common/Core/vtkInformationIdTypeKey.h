/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkInformationIdTypeKey.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkInformationIdTypeKey
 * @brief   Key for vtkIdType values in vtkInformation.
 *
 * vtkInformationIdTypeKey is used to represent keys for vtkIdType values
 * in vtkInformation.
 */

#ifndef vtkInformationIdTypeKey_h
#define vtkInformationIdTypeKey_h

#include "vtkCommonCoreModule.h" // For export macro
#include "vtkInformationKey.h"

#include "vtkCommonInformationKeyManager.h" // Manage instances of this type.

VTK_ABI_NAMESPACE_BEGIN
class VTKCOMMONCORE_EXPORT vtkInformationIdTypeKey : public vtkInformationKey
{
public:
  vtkTypeMacro(vtkInformationIdTypeKey, vtkInformationKey);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  vtkInformationIdTypeKey(const char* name, const char* location);
  ~vtkInformationIdTypeKey() override;

  /**
   * This method simply returns a new vtkInformationIdTypeKey, given a
   * name and a location. This method is provided for wrappers. Use the
   * constructor directly from C++ instead.
   */
  static VTK_NEWINSTANCE vtkInformationIdTypeKey* MakeKey(const char* name, const char* location)
  {
    return new vtkInformationIdTypeKey(name, location);
  }

  ///@{
  /**
   * Get/Set the value associated with this key in the given
   * information object.
   */
  void Set(vtkInformation* info, vtkIdType);
  vtkIdType Get(vtkInformation* info);
  ///@}

  /**
   * Copy the entry associated with this key from one information
   * object to another.  If there is no entry in the first information
   * object for this key, the value is removed from the second.
   */
  void ShallowCopy(vtkInformation* from, vtkInformation* to) override;

  /**
   * Print the key's value in an information object to a stream.
   */
  void Print(ostream& os, vtkInformation* info) override;

protected:
  /**
   * Get the address at which the actual value is stored.  This is
   * meant for use from a debugger to add watches and is therefore not
   * a public method.
   */
  vtkIdType* GetWatchAddress(vtkInformation* info);

private:
  vtkInformationIdTypeKey(const vtkInformationIdTypeKey&) = delete;
  void operator=(const vtkInformationIdTypeKey&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
