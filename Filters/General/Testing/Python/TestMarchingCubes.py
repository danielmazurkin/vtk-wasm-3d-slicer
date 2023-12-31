#!/usr/bin/env python
from vtkmodules.vtkFiltersCore import vtkMarchingCubes
from vtkmodules.vtkIOImage import vtkVolume16Reader
from vtkmodules.vtkRenderingCore import (
    vtkActor,
    vtkPolyDataMapper,
    vtkRenderWindow,
    vtkRenderWindowInteractor,
    vtkRenderer,
)
import vtkmodules.vtkInteractionStyle
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2
from math import cos, sin, pi
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

# Create the RenderWindow, Renderer and both Actors
#
ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.AddRenderer(ren1)
iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)

# create pipeline
#
angle = pi/2
orientation = [
  -1, 0, 0,
  0, cos(angle), -sin(angle),
  0, -sin(angle), -cos(angle)
]
v16 = vtkVolume16Reader()
v16.SetDataDimensions(64, 64)
v16.SetDataByteOrderToLittleEndian()
v16.SetFilePrefix(VTK_DATA_ROOT + "/Data/headsq/quarter")
v16.SetImageRange(1, 93)
v16.SetDataSpacing(3.2, 3.2, 1.5)
v16.SetDataOrigin(0.1, 10, 1000)
v16.GetOutput().SetDirectionMatrix(orientation)
v16.Update()

iso = vtkMarchingCubes()
iso.SetInputData(v16.GetOutput())
iso.ComputeNormalsOn()
iso.SetValue(0, 1150)

isoMapper = vtkPolyDataMapper()
isoMapper.SetInputConnection(iso.GetOutputPort())
isoMapper.ScalarVisibilityOff()

isoActor = vtkActor()
isoActor.SetMapper(isoMapper)

# Add the actor to the renderer, set the background and size
#
ren1.AddActor(isoActor)
ren1.SetBackground(0.2, 0.3, 0.4)

renWin.SetSize(200, 200)
ren1.ResetCamera()
renWin.Render()

# render the image
#
iren.Initialize()
#iren.Start()
