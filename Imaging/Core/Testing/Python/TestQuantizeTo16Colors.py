#!/usr/bin/env python
from vtkmodules.vtkIOImage import vtkPNMReader
from vtkmodules.vtkImagingCore import vtkImageMirrorPad
from vtkmodules.vtkImagingColor import (
    vtkImageMapToRGBA,
    vtkImageQuantizeRGBToIndex,
)
from vtkmodules.vtkInteractionImage import vtkImageViewer
import vtkmodules.vtkInteractionStyle
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

# Make an image larger by repeating the data.  Tile.
# Image pipeline
reader = vtkPNMReader()
reader.ReleaseDataFlagOff()
reader.SetFileName(VTK_DATA_ROOT + "/Data/earth.ppm")
pad = vtkImageMirrorPad()
pad.SetInputConnection(reader.GetOutputPort())
pad.SetOutputWholeExtent(-120,320,-120,320,0,0)
quant = vtkImageQuantizeRGBToIndex()
quant.SetInputConnection(pad.GetOutputPort())
quant.SetNumberOfColors(16)
quant.Update()
map = vtkImageMapToRGBA()
map.SetInputConnection(quant.GetOutputPort())
map.SetLookupTable(quant.GetLookupTable())
viewer = vtkImageViewer()
viewer.SetInputConnection(map.GetOutputPort())
viewer.SetColorWindow(256)
viewer.SetColorLevel(127)
viewer.GetActor2D().SetDisplayPosition(110,110)
viewer.SetSize(440,440)
viewer.Render()
# --- end of script --
