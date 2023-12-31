//=============================================================================
//
//  Copyright (c) Kitware, Inc.
//  All rights reserved.
//  See LICENSE.txt for details.
//
//  This software is distributed WITHOUT ANY WARRANTY; without even
//  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
//  PURPOSE.  See the above copyright notice for more information.
//
//  Copyright 2012 Sandia Corporation.
//  Under the terms of Contract DE-AC04-94AL85000 with Sandia Corporation,
//  the U.S. Government retains certain rights in this software.
//
//=============================================================================

#ifndef vtkmlib_DataSetConverters_h
#define vtkmlib_DataSetConverters_h

#include "vtkAcceleratorsVTKmDataModelModule.h"

#include "ArrayConverters.h" // for FieldsFlag

#include "vtkmConfigDataModel.h" //required for general vtkm setup

#include <vtkm/cont/DataSet.h>

VTK_ABI_NAMESPACE_BEGIN
class vtkDataSet;
class vtkDataSetAttributes;
class vtkImageData;
class vtkPoints;
class vtkRectilinearGrid;
class vtkStructuredGrid;
VTK_ABI_NAMESPACE_END

namespace tovtkm
{
VTK_ABI_NAMESPACE_BEGIN

// convert a vtkPoints array into a coordinate system
VTKACCELERATORSVTKMDATAMODEL_EXPORT
vtkm::cont::CoordinateSystem Convert(vtkPoints* points);

// convert an structured grid type
VTKACCELERATORSVTKMDATAMODEL_EXPORT
vtkm::cont::DataSet Convert(vtkStructuredGrid* input, FieldsFlag fields = FieldsFlag::None);

// convert a rectilinear grid type
VTKACCELERATORSVTKMDATAMODEL_EXPORT
vtkm::cont::DataSet Convert(vtkRectilinearGrid* input, FieldsFlag fields);

// determine the type and call the proper Convert routine
VTKACCELERATORSVTKMDATAMODEL_EXPORT
vtkm::cont::DataSet Convert(vtkDataSet* input, FieldsFlag fields = FieldsFlag::None);
VTK_ABI_NAMESPACE_END
}

namespace fromvtkm
{
VTK_ABI_NAMESPACE_BEGIN

VTKACCELERATORSVTKMDATAMODEL_EXPORT
void PassAttributesInformation(vtkDataSetAttributes* input, vtkDataSetAttributes* output);

VTKACCELERATORSVTKMDATAMODEL_EXPORT
bool Convert(const vtkm::cont::DataSet& vtkmOut, vtkRectilinearGrid* output, vtkDataSet* input);

VTKACCELERATORSVTKMDATAMODEL_EXPORT
bool Convert(const vtkm::cont::DataSet& vtkmOut, vtkStructuredGrid* output, vtkDataSet* input);

VTK_ABI_NAMESPACE_END
}

#endif // vtkmlib_DataSetConverters_h
