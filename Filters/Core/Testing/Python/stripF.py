#!/usr/bin/env python
from vtkmodules.vtkFiltersCore import (
    vtkMaskPolyData,
    vtkPolyDataNormals,
    vtkStripper,
)
from vtkmodules.vtkIOLegacy import vtkPolyDataReader
from vtkmodules.vtkRenderingCore import (
    vtkActor,
    vtkCamera,
    vtkPolyDataMapper,
    vtkRenderWindow,
    vtkRenderWindowInteractor,
    vtkRenderer,
)
import vtkmodules.vtkInteractionStyle
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

# Create the RenderWindow, Renderer and both Actors
#
ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.AddRenderer(ren1)
iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)
# create a cyberware source
#
cyber = vtkPolyDataReader()
cyber.SetFileName(VTK_DATA_ROOT + "/Data/fran_cut.vtk")
normals = vtkPolyDataNormals()
#enable this for cool effect
normals.SetInputConnection(cyber.GetOutputPort())
normals.FlipNormalsOn()
stripper = vtkStripper()
stripper.SetInputConnection(cyber.GetOutputPort())
mask = vtkMaskPolyData()
mask.SetInputConnection(stripper.GetOutputPort())
mask.SetOnRatio(2)
cyberMapper = vtkPolyDataMapper()
cyberMapper.SetInputConnection(mask.GetOutputPort())
cyberActor = vtkActor()
cyberActor.SetMapper(cyberMapper)
cyberActor.GetProperty().SetColor(1.0,0.49,0.25)
# Add the actors to the renderer, set the background and size
#
ren1.AddActor(cyberActor)
ren1.SetBackground(1,1,1)
renWin.SetSize(300,300)
#ren1 SetBackground 0.1 0.2 0.4
ren1.SetBackground(1,1,1)
# render the image
#
cam1 = vtkCamera()
cam1.SetFocalPoint(0.0520703,-0.128547,-0.0581083)
cam1.SetPosition(0.419653,-0.120916,-0.321626)
cam1.SetViewAngle(21.4286)
cam1.SetViewUp(-0.0136986,0.999858,0.00984497)
ren1.SetActiveCamera(cam1)
iren.Initialize()
# prevent the tk window from showing up then start the event loop
# --- end of script --
