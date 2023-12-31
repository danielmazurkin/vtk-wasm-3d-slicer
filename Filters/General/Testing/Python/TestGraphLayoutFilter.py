#!/usr/bin/env python
from vtkmodules.vtkCommonCore import vtkPoints
from vtkmodules.vtkCommonColor import vtkNamedColors
from vtkmodules.vtkCommonDataModel import (
    vtkCellArray,
    vtkPolyData,
)
from vtkmodules.vtkFiltersCore import (
    vtkAppendPolyData,
    vtkGlyph3D,
    vtkTubeFilter,
)
from vtkmodules.vtkFiltersGeneral import vtkGraphLayoutFilter
from vtkmodules.vtkFiltersSources import vtkSphereSource
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
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

def GetRGBColor(colorName):
    '''
        Return the red, green and blue components for a
        color as doubles.
    '''
    rgb = [0.0, 0.0, 0.0]  # black
    vtkNamedColors().GetColorRGB(colorName, rgb)
    return rgb

# Create a simple graph (it's jittered from optimum)
pts = vtkPoints()
pts.SetNumberOfPoints(10)
pts.SetPoint(0, -0.5, 1.0, -0.3)
pts.SetPoint(1, -3.0, 0.1, 0.2)
pts.SetPoint(2, 0.0, 0.0, 0.0)
pts.SetPoint(3, 1.2, -0.1, -0.2)
pts.SetPoint(4, 0.2, -3.0, 0.2)
pts.SetPoint(5, -4.2, -5.5, 0.7)
pts.SetPoint(6, 1.2, -7.3, -0.6)
pts.SetPoint(7, 4.2, -5.5, 0.7)
pts.SetPoint(8, 0.0, 0.0, -0.4)
pts.SetPoint(9, 0.0, 0.0, 0.8)

lines = vtkCellArray()
lines.InsertNextCell(4)
lines.InsertCellPoint(0)
lines.InsertCellPoint(2)
lines.InsertCellPoint(4)
lines.InsertCellPoint(6)
lines.InsertNextCell(2)
lines.InsertCellPoint(1)
lines.InsertCellPoint(2)
lines.InsertNextCell(2)
lines.InsertCellPoint(2)
lines.InsertCellPoint(3)
lines.InsertNextCell(2)
lines.InsertCellPoint(5)
lines.InsertCellPoint(6)
lines.InsertNextCell(2)
lines.InsertCellPoint(6)
lines.InsertCellPoint(7)
lines.InsertNextCell(2)
lines.InsertCellPoint(2)
lines.InsertCellPoint(8)
lines.InsertNextCell(2)
lines.InsertCellPoint(2)
lines.InsertCellPoint(9)

pd = vtkPolyData()
pd.SetPoints(pts)
pd.SetLines(lines)

layout2D = vtkGraphLayoutFilter()
layout2D.SetInputData(pd)
layout2D.SetMaxNumberOfIterations(100)
layout2D.ThreeDimensionalLayoutOff()
layout2D.AutomaticBoundsComputationOff()
layout2D.SetGraphBounds(-2.0, 0.0, -1.0, 1.0, -1.0, 1.0)

layout3D = vtkGraphLayoutFilter()
layout3D.SetInputData(pd)
layout3D.SetMaxNumberOfIterations(100)
layout3D.ThreeDimensionalLayoutOn()
layout3D.AutomaticBoundsComputationOff()
layout3D.SetGraphBounds(0.0, 2.0, -1.0, 1.0, -1.0, 1.0)

apf = vtkAppendPolyData()
apf.AddInputConnection(layout2D.GetOutputPort())
apf.AddInputConnection(layout3D.GetOutputPort())

tubes = vtkTubeFilter()
tubes.SetInputConnection(apf.GetOutputPort())
tubes.SetRadius(0.01)
tubes.SetNumberOfSides(6)

mapEdges = vtkPolyDataMapper()
mapEdges.SetInputConnection(tubes.GetOutputPort())

edgeActor = vtkActor()
edgeActor.SetMapper(mapEdges)
edgeActor.GetProperty().SetColor(GetRGBColor('peacock'))
edgeActor.GetProperty().SetSpecularColor(1, 1, 1)
edgeActor.GetProperty().SetSpecular(0.3)
edgeActor.GetProperty().SetSpecularPower(20)
edgeActor.GetProperty().SetAmbient(0.2)
edgeActor.GetProperty().SetDiffuse(0.8)

ball = vtkSphereSource()
ball.SetRadius(0.025)
ball.SetThetaResolution(12)
ball.SetPhiResolution(12)
balls = vtkGlyph3D()

balls.SetInputConnection(apf.GetOutputPort())
balls.SetSourceConnection(ball.GetOutputPort())

mapBalls = vtkPolyDataMapper()
mapBalls.SetInputConnection(balls.GetOutputPort())

ballActor = vtkActor()
ballActor.SetMapper(mapBalls)
ballActor.GetProperty().SetColor(GetRGBColor('hot_pink'))
ballActor.GetProperty().SetSpecularColor(1, 1, 1)
ballActor.GetProperty().SetSpecular(0.3)
ballActor.GetProperty().SetSpecularPower(20)
ballActor.GetProperty().SetAmbient(0.2)
ballActor.GetProperty().SetDiffuse(0.8)

ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.AddRenderer(ren1)

iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)

ren1.AddActor(edgeActor)
ren1.AddActor(ballActor)
ren1.SetBackground(1, 1, 1)

renWin.SetSize(400, 250)

cam1 = ren1.GetActiveCamera()
cam1.SetClippingRange(3.55085, 6.01004)
cam1.SetFocalPoint(0.0427, -0.0149608, 0.0)
cam1.SetPosition(0.0427, -0.0149608, 4.63462)
cam1.SetViewUp(0, 1, 0)

iren.Initialize()
#iren.Start()
