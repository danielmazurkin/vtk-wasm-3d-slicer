#!/usr/bin/env python
from vtkmodules.vtkCommonCore import (
    vtkIdList,
    vtkPoints,
)
from vtkmodules.vtkCommonDataModel import (
    VTK_HEXAHEDRON,
    VTK_QUADRATIC_HEXAHEDRON,
    vtkHexahedron,
    vtkPixel,
    vtkPyramid,
    vtkQuad,
    vtkTriangle,
    vtkUnstructuredGrid,
    vtkVoxel,
    vtkWedge,
)
from vtkmodules.vtkFiltersCore import (
    vtkContour3DLinearGrid,
    vtkSimpleElevationFilter,
)
from vtkmodules.vtkFiltersSources import vtkCellTypeSource
from vtkmodules.vtkRenderingCore import (
    vtkActor,
    vtkDataSetMapper,
    vtkPolyDataMapper,
    vtkRenderWindow,
    vtkRenderWindowInteractor,
    vtkRenderer,
)
import vtkmodules.vtkInteractionStyle
import vtkmodules.vtkRenderingFreeType
import vtkmodules.vtkRenderingOpenGL2

# Test filter input validity check on datasets with linear and nonlinear cells
linearCells = vtkCellTypeSource()
linearCells.SetCellType(VTK_HEXAHEDRON)
linearCells.Update()
assert(vtkContour3DLinearGrid.CanFullyProcessDataObject(linearCells.GetOutput(), 'DistanceToCenter'))

# Test filter input validity check on datasets with linear and nonlinear cells
quadraticCells = vtkCellTypeSource()
quadraticCells.SetCellType(VTK_QUADRATIC_HEXAHEDRON)
quadraticCells.Update()
assert(not vtkContour3DLinearGrid.CanFullyProcessDataObject(quadraticCells.GetOutput(), 'DistanceToCenter'))

# Test vtkContour3DLinearGrid on mixed cell types as well as on wedges and
# pyramids.

# Control test parameters
mergePoints = 1
interpolateAttr = 1
computeNormals = 1

# Manually create an unstructured grid with a mix of cells.  We have: quad;
# 3x3x3 volume; triangle; 3x3x3 structured grid; pixel; pyramid; wedge. Total
# of 76 points, 21 cells.
ugrid = vtkUnstructuredGrid()
pts = vtkPoints()
pts.SetNumberOfPoints(76)
ugrid.SetPoints(pts)
pts.SetPoint(0, 0,0,0)
pts.SetPoint(1, 2,0,0)
pts.SetPoint(2, 0,2,0)
pts.SetPoint(3, 2,2,0)

pts.SetPoint(4,  4,0,-1)
pts.SetPoint(5,  5,0,-1)
pts.SetPoint(6,  6,0,-1)
pts.SetPoint(7,  4,1,-1)
pts.SetPoint(8,  5,1,-1)
pts.SetPoint(9,  6,1,-1)
pts.SetPoint(10, 4,2,-1)
pts.SetPoint(11, 5,2,-1)
pts.SetPoint(12, 6,2,-1)
pts.SetPoint(13, 4,0,0)
pts.SetPoint(14, 5,0,0)
pts.SetPoint(15, 6,0,0)
pts.SetPoint(16, 4,1,0)
pts.SetPoint(17, 5,1,0)
pts.SetPoint(18, 6,1,0)
pts.SetPoint(19, 4,2,0)
pts.SetPoint(20, 5,2,0)
pts.SetPoint(21, 6,2,0)
pts.SetPoint(22, 4,0,1)
pts.SetPoint(23, 5,0,1)
pts.SetPoint(24, 6,0,1)
pts.SetPoint(25, 4,1,1)
pts.SetPoint(26, 5,1,1)
pts.SetPoint(27, 6,1,1)
pts.SetPoint(28, 4,2,1)
pts.SetPoint(29, 5,2,1)
pts.SetPoint(30, 6,2,1)

pts.SetPoint(31, 8,0,0)
pts.SetPoint(32, 10,0,0)
pts.SetPoint(33, 9,2,0)

pts.SetPoint(34, 12,0,-1)
pts.SetPoint(35, 13,0,-1)
pts.SetPoint(36, 14,0,-1)
pts.SetPoint(37, 12,1,-1)
pts.SetPoint(38, 13,1,-1)
pts.SetPoint(39, 14,1,-1)
pts.SetPoint(40, 12,2,-1)
pts.SetPoint(41, 13,2,-1)
pts.SetPoint(42, 14,2,-1)
pts.SetPoint(43, 12,0,0)
pts.SetPoint(44, 13,0,0)
pts.SetPoint(45, 14,0,0)
pts.SetPoint(46, 12,1,0)
pts.SetPoint(47, 13,1,0)
pts.SetPoint(48, 14,1,0)
pts.SetPoint(49, 12,2,0)
pts.SetPoint(50, 13,2,0)
pts.SetPoint(51, 14,2,0)
pts.SetPoint(52, 12,0,1)
pts.SetPoint(53, 13,0,1)
pts.SetPoint(54, 14,0,1)
pts.SetPoint(55, 12,1,1)
pts.SetPoint(56, 13,1,1)
pts.SetPoint(57, 14,1,1)
pts.SetPoint(58, 12,2,1)
pts.SetPoint(59, 13,2,1)
pts.SetPoint(60, 14,2,1)

pts.SetPoint(61, 16,0,0)
pts.SetPoint(62, 18,0,0)
pts.SetPoint(63, 16,2,0)
pts.SetPoint(64, 18,2,0)

pts.SetPoint(65, 20,0,-1)
pts.SetPoint(66, 22,0,-1)
pts.SetPoint(67, 20,2,-1)
pts.SetPoint(68, 22,2,-1)
pts.SetPoint(69, 21,1,1)

pts.SetPoint(70, 24,0,1)
pts.SetPoint(71, 26,0,1)
pts.SetPoint(72, 24,2,1)
pts.SetPoint(73, 26,2,1)
pts.SetPoint(74, 25,0,-1)
pts.SetPoint(75, 25,2,-1)

# Now populate cells
ids = vtkIdList()

# quad
quad = vtkQuad()
ids.SetNumberOfIds(4)
ids.SetId(0,0)
ids.SetId(1,1)
ids.SetId(2,3)
ids.SetId(3,2)
ugrid.InsertNextCell(quad.GetCellType(),ids)

# 8 voxels
vox = vtkVoxel()
ids.SetNumberOfIds(8)
ids.SetId(0,4)
ids.SetId(1,5)
ids.SetId(2,7)
ids.SetId(3,8)
ids.SetId(4,13)
ids.SetId(5,14)
ids.SetId(6,16)
ids.SetId(7,17)
ugrid.InsertNextCell(vox.GetCellType(),ids)

ids.SetId(0,5)
ids.SetId(1,6)
ids.SetId(2,8)
ids.SetId(3,9)
ids.SetId(4,14)
ids.SetId(5,15)
ids.SetId(6,17)
ids.SetId(7,18)
ugrid.InsertNextCell(vox.GetCellType(),ids)

ids.SetId(0,7)
ids.SetId(1,8)
ids.SetId(2,10)
ids.SetId(3,11)
ids.SetId(4,16)
ids.SetId(5,17)
ids.SetId(6,19)
ids.SetId(7,20)
ugrid.InsertNextCell(vox.GetCellType(),ids)

ids.SetId(0,8)
ids.SetId(1,9)
ids.SetId(2,11)
ids.SetId(3,12)
ids.SetId(4,17)
ids.SetId(5,18)
ids.SetId(6,20)
ids.SetId(7,21)
ugrid.InsertNextCell(vox.GetCellType(),ids)

ids.SetId(0,13)
ids.SetId(1,14)
ids.SetId(2,16)
ids.SetId(3,17)
ids.SetId(4,22)
ids.SetId(5,23)
ids.SetId(6,25)
ids.SetId(7,26)
ugrid.InsertNextCell(vox.GetCellType(),ids)

ids.SetId(0,14)
ids.SetId(1,15)
ids.SetId(2,17)
ids.SetId(3,18)
ids.SetId(4,23)
ids.SetId(5,24)
ids.SetId(6,26)
ids.SetId(7,27)
ugrid.InsertNextCell(vox.GetCellType(),ids)

ids.SetId(0,16)
ids.SetId(1,17)
ids.SetId(2,19)
ids.SetId(3,20)
ids.SetId(4,25)
ids.SetId(5,26)
ids.SetId(6,28)
ids.SetId(7,29)
ugrid.InsertNextCell(vox.GetCellType(),ids)

ids.SetId(0,17)
ids.SetId(1,18)
ids.SetId(2,20)
ids.SetId(3,21)
ids.SetId(4,26)
ids.SetId(5,27)
ids.SetId(6,29)
ids.SetId(7,30)
ugrid.InsertNextCell(vox.GetCellType(),ids)

# triangle
tri = vtkTriangle()
ids.SetNumberOfIds(3)
ids.SetId(0,31)
ids.SetId(1,32)
ids.SetId(2,33)
ugrid.InsertNextCell(tri.GetCellType(),ids)

# 8 hexes
hexa = vtkHexahedron()
ids.SetNumberOfIds(8)
ids.SetId(0,34)
ids.SetId(1,35)
ids.SetId(3,37)
ids.SetId(2,38)
ids.SetId(4,43)
ids.SetId(5,44)
ids.SetId(7,46)
ids.SetId(6,47)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

ids.SetId(0,35)
ids.SetId(1,36)
ids.SetId(3,38)
ids.SetId(2,39)
ids.SetId(4,44)
ids.SetId(5,45)
ids.SetId(7,47)
ids.SetId(6,48)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

ids.SetId(0,37)
ids.SetId(1,38)
ids.SetId(3,40)
ids.SetId(2,41)
ids.SetId(4,46)
ids.SetId(5,47)
ids.SetId(7,49)
ids.SetId(6,50)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

ids.SetId(0,38)
ids.SetId(1,39)
ids.SetId(3,41)
ids.SetId(2,42)
ids.SetId(4,47)
ids.SetId(5,48)
ids.SetId(7,50)
ids.SetId(6,51)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

ids.SetId(0,43)
ids.SetId(1,44)
ids.SetId(3,46)
ids.SetId(2,47)
ids.SetId(4,52)
ids.SetId(5,53)
ids.SetId(7,55)
ids.SetId(6,56)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

ids.SetId(0,44)
ids.SetId(1,45)
ids.SetId(3,47)
ids.SetId(2,48)
ids.SetId(4,53)
ids.SetId(5,54)
ids.SetId(7,56)
ids.SetId(6,57)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

ids.SetId(0,46)
ids.SetId(1,47)
ids.SetId(3,49)
ids.SetId(2,50)
ids.SetId(4,55)
ids.SetId(5,56)
ids.SetId(7,58)
ids.SetId(6,59)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

ids.SetId(0,47)
ids.SetId(1,48)
ids.SetId(3,50)
ids.SetId(2,51)
ids.SetId(4,56)
ids.SetId(5,57)
ids.SetId(7,59)
ids.SetId(6,60)
ugrid.InsertNextCell(hexa.GetCellType(),ids)

# pixel
pixel = vtkPixel()
ids.SetNumberOfIds(4)
ids.SetId(0,61)
ids.SetId(1,62)
ids.SetId(2,63)
ids.SetId(3,64)
ugrid.InsertNextCell(pixel.GetCellType(),ids)

# pyramid
pyr = vtkPyramid()
ids.SetNumberOfIds(5)
ids.SetId(0,65)
ids.SetId(1,66)
ids.SetId(2,68)
ids.SetId(3,67)
ids.SetId(4,69)
ugrid.InsertNextCell(pyr.GetCellType(),ids)

# wedge
wedge = vtkWedge()
ids.SetNumberOfIds(6)
ids.SetId(0,70)
ids.SetId(1,71)
ids.SetId(2,74)
ids.SetId(3,72)
ids.SetId(4,73)
ids.SetId(5,75)
ugrid.InsertNextCell(wedge.GetCellType(),ids)

# Now contour the cells
ele = vtkSimpleElevationFilter()
ele.SetInputData(ugrid)
ele.SetVector(0,1,0)

contour = vtkContour3DLinearGrid()
contour.SetInputConnection(ele.GetOutputPort())
contour.SetValue(0, 1)
contour.SetMergePoints(mergePoints)
contour.SetInterpolateAttributes(interpolateAttr);
contour.SetComputeNormals(computeNormals);
contour.Update()

contMapper = vtkPolyDataMapper()
contMapper.SetInputConnection(contour.GetOutputPort())
contMapper.ScalarVisibilityOff()

contActor = vtkActor()
contActor.SetMapper(contMapper)
contActor.GetProperty().SetColor(.8,.4,.4)

# Display the cells
cellMapper = vtkDataSetMapper()
cellMapper.SetInputData(ugrid)
cellMapper.ScalarVisibilityOff()

cellActor = vtkActor()
cellActor.SetMapper(cellMapper)
cellActor.GetProperty().SetColor(.8,.4,.4)
cellActor.GetProperty().SetRepresentationToWireframe()

# Define graphics objects
renWin = vtkRenderWindow()

ren1 = vtkRenderer()
ren1.SetBackground(1,1,1)
ren1.GetActiveCamera().SetFocalPoint(0,0,0)
ren1.GetActiveCamera().SetPosition(0,0.5,1)

renWin.AddRenderer(ren1)
renWin.SetSize(400,100)

iren = vtkRenderWindowInteractor()
iren.SetRenderWindow(renWin)

ren1.AddActor(contActor)
ren1.AddActor(cellActor)

renWin.Render()
ren1.ResetCamera()
ren1.GetActiveCamera().Zoom(3.5)

iren.Initialize()
iren.Start()
# --- end of script --
