#!/usr/bin/env python
from vtkmodules.vtkCommonCore import vtkLookupTable
from vtkmodules.vtkFiltersCore import vtkPolyDataNormals
from vtkmodules.vtkFiltersHybrid import vtkGreedyTerrainDecimation
from vtkmodules.vtkIOImage import vtkDEMReader
from vtkmodules.vtkRenderingCore import (
    vtkPolyDataMapper,
    vtkRenderWindow,
    vtkRenderWindowInteractor,
    vtkRenderer,
)
from vtkmodules.vtkRenderingLOD import vtkLODActor
import vtkmodules.vtkInteractionStyle
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

lut = vtkLookupTable()
lut.SetHueRange(0.6, 0)
lut.SetSaturationRange(1.0, 0)
lut.SetValueRange(0.5, 1.0)

# Read the data: a height field results
demReader = vtkDEMReader()
demReader.SetFileName(VTK_DATA_ROOT + "/Data/SainteHelens.dem")
demReader.Update()

lo = demReader.GetOutput().GetScalarRange()[0]
hi = demReader.GetOutput().GetScalarRange()[1]

# Decimate the terrain
deci = vtkGreedyTerrainDecimation()
deci.SetInputConnection(demReader.GetOutputPort())
deci.BoundaryVertexDeletionOn()
#  deci.SetErrorMeasureToSpecifiedReduction()
#  deci.SetReduction(0.95)
deci.SetErrorMeasureToNumberOfTriangles()
deci.SetNumberOfTriangles(5000)
#  deci.SetErrorMeasureToAbsoluteError()
#  deci.SetAbsoluteError(25.0)
#  deci.SetErrorMeasureToRelativeError()
#  deci.SetAbsoluteError(0.01)

normals = vtkPolyDataNormals()
normals.SetInputConnection(deci.GetOutputPort())
normals.SetFeatureAngle(60)
normals.ConsistencyOn()
normals.SplittingOff()

demMapper = vtkPolyDataMapper()
demMapper.SetInputConnection(normals.GetOutputPort())
demMapper.SetScalarRange(lo, hi)
demMapper.SetLookupTable(lut)

actor = vtkLODActor()
actor.SetMapper(demMapper)

# Create the RenderWindow, Renderer and both Actors
#
ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.AddRenderer(ren1)
iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)

# Add the actors to the renderer, set the background and size
#
ren1.AddActor(actor)

ren1.SetBackground(.1, .2, .4)
iren.SetDesiredUpdateRate(5)

ren1.GetActiveCamera().SetViewUp(0, 0, 1)
ren1.GetActiveCamera().SetPosition(-99900, -21354, 131801)
ren1.GetActiveCamera().SetFocalPoint(41461, 41461, 2815)
ren1.ResetCamera()
ren1.GetActiveCamera().Dolly(1.2)
ren1.ResetCameraClippingRange()

renWin.Render()

iren.Initialize()
#iren.Start()
