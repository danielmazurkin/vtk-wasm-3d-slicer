#!/usr/bin/env python
from vtkmodules.vtkCommonCore import (
    vtkMath,
    vtkPoints,
)
from vtkmodules.vtkCommonDataModel import (
    vtkCellArray,
    vtkPolyData,
)
from vtkmodules.vtkCommonComputationalGeometry import vtkKochanekSpline
from vtkmodules.vtkFiltersCore import (
    vtkGlyph3D,
    vtkTubeFilter,
)
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

# Now create the RenderWindow, Renderer and Interactor
#
ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.AddRenderer(ren1)
iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)

math = vtkMath()

numberOfInputPoints = 30

aSplineX = vtkKochanekSpline()
aSplineY = vtkKochanekSpline()
aSplineZ = vtkKochanekSpline()

# generate random points
inputPoints = vtkPoints()
i = 0
while i < numberOfInputPoints:
    x = math.Random(0, 1)
    y = math.Random(0, 1)
    z = math.Random(0, 1)
    aSplineX.AddPoint(i, x)
    aSplineY.AddPoint(i, y)
    aSplineZ.AddPoint(i, z)
    inputPoints.InsertPoint(i, x, y, z)
    i += 1

inputData = vtkPolyData()
inputData.SetPoints(inputPoints)

balls = vtkSphereSource()
balls.SetRadius(.01)
balls.SetPhiResolution(10)
balls.SetThetaResolution(10)

glyphPoints = vtkGlyph3D()
glyphPoints.SetInputData(inputData)
glyphPoints.SetSourceConnection(balls.GetOutputPort())

glyphMapper = vtkPolyDataMapper()
glyphMapper.SetInputConnection(glyphPoints.GetOutputPort())

glyph = vtkActor()
glyph.SetMapper(glyphMapper)
glyph.GetProperty().SetDiffuseColor(1, 0.6, 0.6)
glyph.GetProperty().SetSpecular(.3)
glyph.GetProperty().SetSpecularPower(30)

ren1.AddActor(glyph)

points = vtkPoints()

# create a line
tension = 0
bias = 0
continuity = 0
aSplineX.SetDefaultTension(tension)
aSplineX.SetDefaultBias(bias)
aSplineX.SetDefaultContinuity(continuity)
aSplineY.SetDefaultTension(tension)
aSplineY.SetDefaultBias(bias)
aSplineY.SetDefaultContinuity(continuity)
aSplineZ.SetDefaultTension(tension)
aSplineZ.SetDefaultBias(bias)
aSplineZ.SetDefaultContinuity(continuity)

profileData = vtkPolyData()

numberOfOutputPoints = 300
offset = 1.0
def fit ():
    points.Reset()
    i = 0
    while i < numberOfOutputPoints:
        t = (numberOfInputPoints - offset) / (numberOfOutputPoints - 1) * i
        points.InsertPoint(i, aSplineX.Evaluate(t), aSplineY.Evaluate(t), aSplineZ.Evaluate(t))
        i = i + 1

    profileData.Modified()

fit()

lines = vtkCellArray()
lines.InsertNextCell(numberOfOutputPoints)

i = 0
while i < numberOfOutputPoints:
    lines.InsertCellPoint(i)
    i = i + 1

profileData.SetPoints(points)
profileData.SetLines(lines)

profileTubes = vtkTubeFilter()
profileTubes.SetNumberOfSides(8)
profileTubes.SetInputData(profileData)
profileTubes.SetRadius(.005)

profileMapper = vtkPolyDataMapper()
profileMapper.SetInputConnection(profileTubes.GetOutputPort())

profile = vtkActor()
profile.SetMapper(profileMapper)
profile.GetProperty().SetDiffuseColor(1, 1, 0.7)
profile.GetProperty().SetSpecular(.3)
profile.GetProperty().SetSpecularPower(30)

ren1.AddActor(profile)
ren1.GetActiveCamera().Dolly(1.5)
ren1.ResetCamera()
ren1.ResetCameraClippingRange()

renWin.SetSize(400, 400)

# render the image
#
iren.Initialize()

def defaults (aSplineX, aSplineY, aSplineZ):
    aSplineX.SetDefaultBias(0)
    aSplineX.SetDefaultTension(0)
    aSplineX.SetDefaultContinuity(0)
    aSplineY.SetDefaultBias(0)
    aSplineY.SetDefaultTension(0)
    aSplineY.SetDefaultContinuity(0)
    aSplineZ.SetDefaultBias(0)
    aSplineZ.SetDefaultTension(0)
    aSplineZ.SetDefaultContinuity(0)
    fit()
    renWin.Render()

def varyBias (aSplineX, aSplineY, aSplineZ):
    defaults(aSplineX, aSplineY, aSplineZ)
    bias = -1
    while bias <= 1:
        aSplineX.SetDefaultBias(bias)
        aSplineY.SetDefaultBias(bias)
        aSplineZ.SetDefaultBias(bias)
        fit()
        renWin.Render()
        bias += .05


def varyTension (aSplineX, aSplineY, aSplineZ):
    defaults(aSplineX, aSplineY, aSplineZ)
    tension = -1
    while tension <= 1:
        aSplineX.SetDefaultTension(tension)
        aSplineY.SetDefaultTension(tension)
        aSplineZ.SetDefaultTension(tension)
        fit()
        renWin.Render()
        tension += 0.05


def varyContinuity (aSplineX, aSplineY, aSplineZ):
    defaults(aSplineX, aSplineY, aSplineZ)
    Continuity = -1
    while Continuity <= 1:
        aSplineX.SetDefaultContinuity(Continuity)
        aSplineY.SetDefaultContinuity(Continuity)
        aSplineZ.SetDefaultContinuity(Continuity)
        fit()
        renWin.Render()
        Continuity += 0.05


def closed (aSplineX, aSplineY, aSplineZ):
    offset = 0.0
    aSplineX.ClosedOn()
    aSplineY.ClosedOn()
    aSplineZ.ClosedOn()
    fit()
    renWin.Render()

def opened (aSplineX, aSplineY, aSplineZ):
    offset = 1.0
    aSplineX.ClosedOff()
    aSplineY.ClosedOff()
    aSplineZ.ClosedOff()
    fit()
    renWin.Render()

# iren.Start()
