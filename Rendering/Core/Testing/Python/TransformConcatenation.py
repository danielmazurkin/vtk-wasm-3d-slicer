#!/usr/bin/env python
from vtkmodules.vtkCommonTransforms import vtkTransform
from vtkmodules.vtkFiltersGeneral import vtkTransformPolyDataFilter
from vtkmodules.vtkFiltersSources import vtkCylinderSource
from vtkmodules.vtkRenderingCore import (
    vtkActor,
    vtkDataSetMapper,
    vtkRenderWindow,
    vtkRenderer,
)
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2
from vtkmodules.util.misc import vtkGetDataRoot
VTK_DATA_ROOT = vtkGetDataRoot()

# This example demonstrates how to set up flexible joints using
# the transformation pipeline and vtkTransformPolyDataFilter.
# create a rendering window and renderer
ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.AddRenderer(ren1)
# set up first set of polydata
c1 = vtkCylinderSource()
c1.SetHeight(1.6)
c1.SetRadius(0.2)
c1.SetCenter(0,0.8,0)
t1 = vtkTransform()
f1 = vtkTransformPolyDataFilter()
f1.SetInputConnection(c1.GetOutputPort())
f1.SetTransform(t1)
m1 = vtkDataSetMapper()
m1.SetInputConnection(f1.GetOutputPort())
a1 = vtkActor()
a1.SetMapper(m1)
a1.GetProperty().SetColor(1,0,0)
# set up second set, at a relative transform to the first
c2 = vtkCylinderSource()
c2.SetHeight(1.6)
c2.SetRadius(0.15)
c2.SetCenter(0,0.8,0)
# relative rotation for first joint
joint1 = vtkTransform()
# set input to initial transform
t2 = vtkTransform()
t2.SetInput(t1)
t2.Translate(0,1.6,0)
t2.Concatenate(joint1)
f2 = vtkTransformPolyDataFilter()
f2.SetInputConnection(c2.GetOutputPort())
f2.SetTransform(t2)
m2 = vtkDataSetMapper()
m2.SetInputConnection(f2.GetOutputPort())
a2 = vtkActor()
a2.SetMapper(m2)
a2.GetProperty().SetColor(0.0,0.7,1.0)
# set up third set, at a relative transform to the second
c3 = vtkCylinderSource()
c3.SetHeight(0.5)
c3.SetRadius(0.1)
c3.SetCenter(0,0.25,0)
# relative rotation
joint2 = vtkTransform()
# set input to previous transform
t3 = vtkTransform()
t3.SetInput(t2)
t3.Translate(0,1.6,0)
t3.Concatenate(joint2)
f3 = vtkTransformPolyDataFilter()
f3.SetInputConnection(c3.GetOutputPort())
f3.SetTransform(t3)
m3 = vtkDataSetMapper()
m3.SetInputConnection(f3.GetOutputPort())
a3 = vtkActor()
a3.SetMapper(m3)
a3.GetProperty().SetColor(0.9,0.9,0)
# add actors to renderer
ren1.AddActor(a1)
ren1.AddActor(a2)
ren1.AddActor(a3)
# set clipping range
ren1.ResetCamera(-1,1,-0.1,2,-3,3)
# set angles for first joint
phi2 = 70
theta2 = 85
# set angles for second joint
phi3 = 50
theta3 = 90
joint1.Identity()
joint1.RotateY(phi2)
joint1.RotateX(theta2)
joint2.Identity()
joint2.RotateY(phi3)
joint2.RotateX(theta3)
renWin.Render()
# --- end of script --
