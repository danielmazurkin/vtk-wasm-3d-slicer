# Install script for directory: /home/danil/vtk_new/Common/DataModel

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2" TYPE FILE FILES
    "/home/danil/vtk_new/Common/DataModel/vtkCellGridQuery.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellGridResponder.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellGridResponderBase.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellType.h"
    "/home/danil/vtk_new/Common/DataModel/vtkColor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataAssemblyVisitor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataObjectTreeInternals.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridScales.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridTools.h"
    "/home/danil/vtk_new/Common/DataModel/vtkIntersectionCounter.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLabelMapLookup.h"
    "/home/danil/vtk_new/Common/DataModel/vtkRect.h"
    "/home/danil/vtk_new/Common/DataModel/vtkVector.h"
    "/home/danil/vtk_new/Common/DataModel/vtkVectorOperators.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAMRBox.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAMRUtilities.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAbstractCellLinks.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAbstractCellLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAbstractElectronicData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAbstractPointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAdjacentVertexIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAnimationScene.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAnnotation.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAnnotationLayers.h"
    "/home/danil/vtk_new/Common/DataModel/vtkArrayData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAtom.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAttributesErrorMetric.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBSPCuts.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBSPIntersections.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBezierCurve.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBezierHexahedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBezierInterpolation.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBezierQuadrilateral.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBezierTetra.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBezierTriangle.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBezierWedge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBiQuadraticQuad.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBiQuadraticQuadraticHexahedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBiQuadraticQuadraticWedge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBiQuadraticTriangle.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBond.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBoundingBox.h"
    "/home/danil/vtk_new/Common/DataModel/vtkBox.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCell.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCell3D.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellArray.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellArrayIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellAttribute.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellGridBoundsQuery.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellGridResponders.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellGridSidesQuery.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellLinks.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellLocatorStrategy.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellMetadata.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellTreeLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCellTypes.h"
    "/home/danil/vtk_new/Common/DataModel/vtkClosestNPointsStrategy.h"
    "/home/danil/vtk_new/Common/DataModel/vtkClosestPointStrategy.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCompositeDataIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCompositeDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCone.h"
    "/home/danil/vtk_new/Common/DataModel/vtkConvexPointSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCoordinateFrame.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCubicLine.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCylinder.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataAssembly.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataAssemblyUtilities.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataObject.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataObjectCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataObjectTree.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataObjectTreeIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataObjectTypes.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataSetAttributes.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataSetAttributesFieldList.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataSetCellIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataSetCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDirectedAcyclicGraph.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDirectedGraph.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDistributedGraphHelper.h"
    "/home/danil/vtk_new/Common/DataModel/vtkEdgeListIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkEdgeTable.h"
    "/home/danil/vtk_new/Common/DataModel/vtkEmptyCell.h"
    "/home/danil/vtk_new/Common/DataModel/vtkExplicitStructuredGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkExtractStructuredGridHelper.h"
    "/home/danil/vtk_new/Common/DataModel/vtkFieldData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkFindCellStrategy.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericAdaptorCell.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericAttribute.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericAttributeCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericCell.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericCellIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericCellTessellator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericEdgeTable.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericInterpolatedVelocityField.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericPointIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGenericSubdivisionErrorMetric.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGeometricErrorMetric.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGraph.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGraphEdge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkGraphInternals.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHexagonalPrism.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHexahedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHierarchicalBoxDataIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHierarchicalBoxDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHigherOrderCurve.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHigherOrderHexahedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHigherOrderInterpolation.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHigherOrderQuadrilateral.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHigherOrderTetra.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHigherOrderTriangle.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHigherOrderWedge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTree.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridGeometricLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedGeometryCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedUnlimitedGeometryCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedMooreSuperCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedMooreSuperCursorLight.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedUnlimitedMooreSuperCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedSuperCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedSuperCursorLight.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedUnlimitedSuperCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedVonNeumannSuperCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridNonOrientedVonNeumannSuperCursorLight.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridOrientedCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridOrientedGeometryCursor.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImageData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImageIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImageTransform.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitBoolean.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitFunction.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitFunctionCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitHalo.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitSelectionLoop.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitSum.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitVolume.h"
    "/home/danil/vtk_new/Common/DataModel/vtkImplicitWindowFunction.h"
    "/home/danil/vtk_new/Common/DataModel/vtkInEdgeIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkIncrementalOctreeNode.h"
    "/home/danil/vtk_new/Common/DataModel/vtkIncrementalOctreePointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkIncrementalPointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkInformationQuadratureSchemeDefinitionVectorKey.h"
    "/home/danil/vtk_new/Common/DataModel/vtkIterativeClosestPointTransform.h"
    "/home/danil/vtk_new/Common/DataModel/vtkKdNode.h"
    "/home/danil/vtk_new/Common/DataModel/vtkKdTree.h"
    "/home/danil/vtk_new/Common/DataModel/vtkKdTreePointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLagrangeCurve.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLagrangeHexahedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLagrangeInterpolation.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLagrangeQuadrilateral.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLagrangeTetra.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLagrangeTriangle.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLagrangeWedge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLine.h"
    "/home/danil/vtk_new/Common/DataModel/vtkLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMarchingCubesTriangleCases.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMarchingCubesPolygonCases.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMarchingSquaresLineCases.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMeanValueCoordinatesInterpolator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMergePoints.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMolecule.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMultiBlockDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMultiPieceDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMutableDirectedGraph.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMutableUndirectedGraph.h"
    "/home/danil/vtk_new/Common/DataModel/vtkNonLinearCell.h"
    "/home/danil/vtk_new/Common/DataModel/vtkNonMergingPointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkOctreePointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkOctreePointLocatorNode.h"
    "/home/danil/vtk_new/Common/DataModel/vtkOrderedTriangulator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkOutEdgeIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPartitionedDataSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPartitionedDataSetCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPath.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPentagonalPrism.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPerlinNoise.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPiecewiseFunction.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPixel.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPixelExtent.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPixelTransfer.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPlane.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPlaneCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPlanes.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPlanesIntersection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPointData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPointSet.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPointSetCellIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPointsProjectedHull.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyDataCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyLine.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyPlane.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyVertex.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolygon.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyhedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyhedronUtilities.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPyramid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuad.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticEdge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticHexahedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticLinearQuad.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticLinearWedge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticPolygon.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticPyramid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticQuad.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticTetra.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticTriangle.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadraticWedge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadratureSchemeDefinition.h"
    "/home/danil/vtk_new/Common/DataModel/vtkQuadric.h"
    "/home/danil/vtk_new/Common/DataModel/vtkRectilinearGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkReebGraph.h"
    "/home/danil/vtk_new/Common/DataModel/vtkReebGraphSimplificationMetric.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSelection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSelectionNode.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSimpleCellTessellator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSmoothErrorMetric.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSortFieldData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSphere.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSpheres.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSphericalPointIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSpline.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticCellLinks.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticCellLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticPointLocator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticPointLocator2D.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStructuredData.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStructuredExtent.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStructuredGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStructuredPoints.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStructuredPointsCollection.h"
    "/home/danil/vtk_new/Common/DataModel/vtkSuperquadric.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTable.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTetra.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTree.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTreeBFSIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTreeDFSIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTreeIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTriQuadraticHexahedron.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTriQuadraticPyramid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTriangle.h"
    "/home/danil/vtk_new/Common/DataModel/vtkTriangleStrip.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUndirectedGraph.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUniformGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUniformHyperTreeGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUnstructuredGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUnstructuredGridBase.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUnstructuredGridCellIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkVertex.h"
    "/home/danil/vtk_new/Common/DataModel/vtkVertexListIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkVoxel.h"
    "/home/danil/vtk_new/Common/DataModel/vtkWedge.h"
    "/home/danil/vtk_new/Common/DataModel/vtkXMLDataElement.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAMRDataInternals.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAMRInformation.h"
    "/home/danil/vtk_new/Common/DataModel/vtkNonOverlappingAMR.h"
    "/home/danil/vtk_new/Common/DataModel/vtkOverlappingAMR.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUniformGridAMR.h"
    "/home/danil/vtk_new/Common/DataModel/vtkUniformGridAMRDataIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkAngularPeriodicDataArray.h"
    "/home/danil/vtk_new/Common/DataModel/vtkArrayListTemplate.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMappedUnstructuredGrid.h"
    "/home/danil/vtk_new/Common/DataModel/vtkMappedUnstructuredGridCellIterator.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPeriodicDataArray.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticCellLinksTemplate.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticEdgeLocatorTemplate.h"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticFaceHashLinksTemplate.h"
    "/home/danil/vtk_new/cmake-build-debug/Common/DataModel/vtkCommonDataModelModule.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCompositeDataSetNodeReference.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCompositeDataSetRange.h"
    "/home/danil/vtk_new/Common/DataModel/vtkDataObjectTreeRange.h"
    "/home/danil/vtk_new/Common/DataModel/vtkPolyDataInternals.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridEntry.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridGeometryEntry.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridGeometryUnlimitedEntry.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridGeometryLevelEntry.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridGeometryUnlimitedLevelEntry.h"
    "/home/danil/vtk_new/Common/DataModel/vtkHyperTreeGridLevelEntry.h"
    "/home/danil/vtk_new/Common/DataModel/vtkCompositeDataSet.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkAngularPeriodicDataArray.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkArrayListTemplate.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkMappedUnstructuredGrid.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkMappedUnstructuredGridCellIterator.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkPeriodicDataArray.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticCellLinksTemplate.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticEdgeLocatorTemplate.txx"
    "/home/danil/vtk_new/Common/DataModel/vtkStaticFaceHashLinksTemplate.txx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkCommonDataModel-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkCommonDataModel-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkCommonDataModel-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkCommonDataModel-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "\$ORIGIN:"
           NEW_RPATH "\$ORIGIN")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkCommonDataModel-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonDataModel-9.2.so")
    endif()
  endif()
endif()

