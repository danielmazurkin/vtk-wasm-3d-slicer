/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkGenericDataArrayValueRangeInstantiate.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

// We only compile the 64-bit integer range compulation for value types
// of long, unsigned long, long long, and unsigned long log.  All others
// reuse the double-precision vtkDataArray::GetRange version, since they
// won't lose precision.

#define VTK_GDA_VALUERANGE_INSTANTIATING
#include "vtkGenericDataArray.h"

#include "vtkDataArrayPrivate.txx"

#include "vtkAOSDataArrayTemplate.h"
#include "vtkSOADataArrayTemplate.h"

#ifdef VTK_USE_SCALED_SOA_ARRAYS
#include "vtkScaledSOADataArrayTemplate.h"
#endif

namespace vtkDataArrayPrivate
{
VTK_ABI_NAMESPACE_BEGIN
VTK_INSTANTIATE_VALUERANGE_VALUETYPE(long)
VTK_ABI_NAMESPACE_END
}
