#!/usr/bin/env python
from vtkmodules.vtkIOGeometry import vtkAVSucdReader
from vtkmodules.vtkRenderingCore import (
    vtkActor,
    vtkDataSetMapper,
    vtkRenderWindow,
    vtkRenderWindowInteractor,
    vtkRenderer,
)
import vtkmodules.vtkInteractionStyle
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

# Read some AVS UCD data in ASCII form
r = vtkAVSucdReader()
r.SetFileName(VTK_DATA_ROOT + "/Data/cellsnd.ascii.inp")
AVSMapper = vtkDataSetMapper()
AVSMapper.SetInputConnection(r.GetOutputPort())
AVSActor = vtkActor()
AVSActor.SetMapper(AVSMapper)
# Read some AVS UCD data in binary form
r2 = vtkAVSucdReader()
r2.SetFileName(VTK_DATA_ROOT + "/Data/cellsnd.bin.inp")
AVSMapper2 = vtkDataSetMapper()
AVSMapper2.SetInputConnection(r2.GetOutputPort())
AVSActor2 = vtkActor()
AVSActor2.SetMapper(AVSMapper2)
AVSActor2.AddPosition(5,0,0)
# Create the RenderWindow, Renderer and both Actors
#
ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.AddRenderer(ren1)
iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)
# Add the actors to the renderer, set the background and size
#
ren1.AddActor(AVSActor)
ren1.AddActor(AVSActor2)
renWin.SetSize(300,150)
iren.Initialize()
renWin.Render()
ren1.GetActiveCamera().Zoom(2)
# prevent the tk window from showing up then start the event loop
# --- end of script --
