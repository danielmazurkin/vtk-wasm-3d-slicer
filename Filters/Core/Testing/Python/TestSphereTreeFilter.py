#!/usr/bin/env python
from vtkmodules.vtkCommonDataModel import vtkSphere
from vtkmodules.vtkCommonExecutionModel import vtkSphereTree
from vtkmodules.vtkFiltersCore import (
    vtkGlyph3D,
    vtkSphereTreeFilter,
)
from vtkmodules.vtkFiltersExtraction import vtkExtractGeometry
from vtkmodules.vtkFiltersGeneral import vtkImageDataToPointSet
from vtkmodules.vtkFiltersModeling import vtkOutlineFilter
from vtkmodules.vtkFiltersSources import vtkSphereSource
from vtkmodules.vtkImagingHybrid import vtkSampleFunction
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

# Control debugging parameters
res = 25

# Create the RenderWindow, Renderer
#
ren0 = vtkRenderer()
ren1 = vtkRenderer()
renWin = vtkRenderWindow()
renWin.SetMultiSamples(0)
renWin.AddRenderer(ren0)
renWin.AddRenderer(ren1)
iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)

# Create a synthetic source: sample a sphere across a volume
sphere = vtkSphere()
sphere.SetCenter(0.0,0.0,0.0)
sphere.SetRadius(0.25)

sample = vtkSampleFunction()
sample.SetImplicitFunction(sphere)
sample.SetModelBounds(-0.5,0.5, -0.5,0.5, -0.5,0.5)
sample.SetSampleDimensions(res,res,res)

# Handy dandy filter converts image data to structured grid
convert = vtkImageDataToPointSet()
convert.SetInputConnection(sample.GetOutputPort())

# Create a sphere tree and see what it look like
# (structured sphere tree)
stf = vtkSphereTreeFilter()
stf.SetInputConnection(convert.GetOutputPort())
stf.SetLevel(0);

sph = vtkSphereSource()
sph.SetPhiResolution(8)
sph.SetThetaResolution(16)
sph.SetRadius(1)

stfGlyphs = vtkGlyph3D()
stfGlyphs.SetInputConnection(stf.GetOutputPort())
stfGlyphs.SetSourceConnection(sph.GetOutputPort())

stfMapper = vtkPolyDataMapper()
stfMapper.SetInputConnection(stfGlyphs.GetOutputPort())
stfMapper.ScalarVisibilityOff()

stfActor = vtkActor()
stfActor.SetMapper(stfMapper)
stfActor.GetProperty().SetColor(1,1,1)

# Throw in an outline
outline = vtkOutlineFilter()
outline.SetInputConnection(sample.GetOutputPort())

outlineMapper = vtkPolyDataMapper()
outlineMapper.SetInputConnection(outline.GetOutputPort())

outlineActor = vtkActor()
outlineActor.SetMapper(outlineMapper)

# Convert the image data to unstructured grid
extractionSphere = vtkSphere()
extractionSphere.SetRadius(100)
extractionSphere.SetCenter(0,0,0)

extract = vtkExtractGeometry()
extract.SetImplicitFunction(extractionSphere)
extract.SetInputConnection(sample.GetOutputPort())
extract.Update()

# This time around create a sphere tree, assign it to the filter, and see
# what it look like (unstructured sphere tree)
ust = vtkSphereTree()
ust.BuildHierarchyOn()
ust.Build(extract.GetOutput())
print (ust)

ustf = vtkSphereTreeFilter()
ustf.SetSphereTree(ust)
ustf.SetLevel(0);

ustfGlyphs = vtkGlyph3D()
ustfGlyphs.SetInputConnection(ustf.GetOutputPort())
ustfGlyphs.SetSourceConnection(sph.GetOutputPort())

ustfMapper = vtkPolyDataMapper()
ustfMapper.SetInputConnection(ustfGlyphs.GetOutputPort())
ustfMapper.ScalarVisibilityOff()

ustfActor = vtkActor()
ustfActor.SetMapper(ustfMapper)
ustfActor.GetProperty().SetColor(1,1,1)

# Throw in an outline
uOutline = vtkOutlineFilter()
uOutline.SetInputConnection(sample.GetOutputPort())

uOutlineMapper = vtkPolyDataMapper()
uOutlineMapper.SetInputConnection(uOutline.GetOutputPort())

uOutlineActor = vtkActor()
uOutlineActor.SetMapper(uOutlineMapper)


# Add the actors to the renderer, set the background and size
#
ren0.AddActor(stfActor)
ren0.AddActor(outlineActor)
ren1.AddActor(ustfActor)
ren1.AddActor(uOutlineActor)

ren0.SetBackground(0,0,0)
ren1.SetBackground(0,0,0)
ren0.SetViewport(0,0,0.5,1);
ren1.SetViewport(0.5,0,1,1);
renWin.SetSize(600,300)
ren0.ResetCamera()
ren1.ResetCamera()
iren.Initialize()

renWin.Render()
#iren.Start()
# --- end of script --
