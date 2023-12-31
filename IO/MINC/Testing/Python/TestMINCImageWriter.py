#!/usr/bin/env python
import os
from vtkmodules.vtkIOMINC import (
    vtkMINCImageAttributes,
    vtkMINCImageReader,
    vtkMINCImageWriter,
)
from vtkmodules.vtkInteractionImage import vtkImageViewer
import vtkmodules.vtkInteractionStyle
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

# Image pipeline
reader = vtkMINCImageReader()
reader.SetFileName(VTK_DATA_ROOT + "/Data/t3_grid_0.mnc")
reader.RescaleRealValuesOn()
attributes = vtkMINCImageAttributes()
image = reader

# The current directory must be writeable.
#
try:
    channel = open("minc1.mnc", "wb")
    channel.close()

    minc1 = vtkMINCImageWriter()
    minc1.SetInputConnection(reader.GetOutputPort())
    minc1.SetFileName("minc1.mnc")

    attributes.ShallowCopy(reader.GetImageAttributes())
    attributes.SetAttributeValueAsString(
      "patient", "full_name", "DOE^JOHN DAVID")

    minc2 = vtkMINCImageWriter()
    minc2.SetImageAttributes(attributes)
    minc2.SetInputConnection(reader.GetOutputPort())
    minc2.SetFileName("minc2.mnc")

    minc3 = vtkMINCImageWriter()
    minc3.SetImageAttributes(attributes)
    minc3.AddInputConnection(reader.GetOutputPort())
    minc3.AddInputConnection(reader.GetOutputPort())
    minc3.SetFileName("minc3.mnc")

    minc1.Write()
    minc2.Write()
    minc3.Write()

    reader2 = vtkMINCImageReader()
    reader2.SetFileName("minc3.mnc")
    reader2.RescaleRealValuesOn()
    reader2.SetTimeStep(1)
    reader2.Update()
    image = reader2

    # cleanup
    #
    try:
        os.remove("minc1.mnc")
    except OSError:
        pass
    try:
        os.remove("minc2.mnc")
    except OSError:
        pass
    try:
        os.remove("minc3.mnc")
    except OSError:
        pass

    # Write out the file header for coverage
    attributes.PrintFileHeader()

    viewer = vtkImageViewer()
    viewer.SetInputConnection(image.GetOutputPort())
    viewer.SetColorWindow(100)
    viewer.SetColorLevel(0)
    viewer.Render()

except IOError:
    print("Unable to test the writer/reader.")
