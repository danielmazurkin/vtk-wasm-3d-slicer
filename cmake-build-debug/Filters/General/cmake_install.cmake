# Install script for directory: /home/danil/vtk_new/Filters/General

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
    "/home/danil/vtk_new/Filters/General/vtkAnimateModes.h"
    "/home/danil/vtk_new/Filters/General/vtkAnnotationLink.h"
    "/home/danil/vtk_new/Filters/General/vtkAppendLocationAttributes.h"
    "/home/danil/vtk_new/Filters/General/vtkAppendPoints.h"
    "/home/danil/vtk_new/Filters/General/vtkApproximatingSubdivisionFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkAreaContourSpectrumFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkAxes.h"
    "/home/danil/vtk_new/Filters/General/vtkBlankStructuredGrid.h"
    "/home/danil/vtk_new/Filters/General/vtkBlankStructuredGridWithImage.h"
    "/home/danil/vtk_new/Filters/General/vtkBlockIdScalars.h"
    "/home/danil/vtk_new/Filters/General/vtkBooleanOperationPolyDataFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkBoxClipDataSet.h"
    "/home/danil/vtk_new/Filters/General/vtkBrownianPoints.h"
    "/home/danil/vtk_new/Filters/General/vtkCellDerivatives.h"
    "/home/danil/vtk_new/Filters/General/vtkCellValidator.h"
    "/home/danil/vtk_new/Filters/General/vtkCleanUnstructuredGrid.h"
    "/home/danil/vtk_new/Filters/General/vtkCleanUnstructuredGridCells.h"
    "/home/danil/vtk_new/Filters/General/vtkClipClosedSurface.h"
    "/home/danil/vtk_new/Filters/General/vtkClipConvexPolyData.h"
    "/home/danil/vtk_new/Filters/General/vtkClipDataSet.h"
    "/home/danil/vtk_new/Filters/General/vtkClipVolume.h"
    "/home/danil/vtk_new/Filters/General/vtkCoincidentPoints.h"
    "/home/danil/vtk_new/Filters/General/vtkContourTriangulator.h"
    "/home/danil/vtk_new/Filters/General/vtkCountFaces.h"
    "/home/danil/vtk_new/Filters/General/vtkCountVertices.h"
    "/home/danil/vtk_new/Filters/General/vtkCursor2D.h"
    "/home/danil/vtk_new/Filters/General/vtkCursor3D.h"
    "/home/danil/vtk_new/Filters/General/vtkCurvatures.h"
    "/home/danil/vtk_new/Filters/General/vtkDataSetGradient.h"
    "/home/danil/vtk_new/Filters/General/vtkDataSetGradientPrecompute.h"
    "/home/danil/vtk_new/Filters/General/vtkDataSetTriangleFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkDateToNumeric.h"
    "/home/danil/vtk_new/Filters/General/vtkDeflectNormals.h"
    "/home/danil/vtk_new/Filters/General/vtkDeformPointSet.h"
    "/home/danil/vtk_new/Filters/General/vtkDensifyPolyData.h"
    "/home/danil/vtk_new/Filters/General/vtkDicer.h"
    "/home/danil/vtk_new/Filters/General/vtkDiscreteFlyingEdges2D.h"
    "/home/danil/vtk_new/Filters/General/vtkDiscreteFlyingEdges3D.h"
    "/home/danil/vtk_new/Filters/General/vtkDiscreteFlyingEdgesClipper2D.h"
    "/home/danil/vtk_new/Filters/General/vtkDiscreteMarchingCubes.h"
    "/home/danil/vtk_new/Filters/General/vtkDistancePolyDataFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkEdgePoints.h"
    "/home/danil/vtk_new/Filters/General/vtkEqualizerFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkExtractArray.h"
    "/home/danil/vtk_new/Filters/General/vtkExtractGhostCells.h"
    "/home/danil/vtk_new/Filters/General/vtkExtractSelectedFrustum.h"
    "/home/danil/vtk_new/Filters/General/vtkExtractSelectionBase.h"
    "/home/danil/vtk_new/Filters/General/vtkFiniteElementFieldDistributor.h"
    "/home/danil/vtk_new/Filters/General/vtkGradientFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkGraphLayoutFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkGraphToPoints.h"
    "/home/danil/vtk_new/Filters/General/vtkGraphWeightEuclideanDistanceFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkGraphWeightFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkGroupDataSetsFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkGroupTimeStepsFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkHierarchicalDataLevelFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkHyperStreamline.h"
    "/home/danil/vtk_new/Filters/General/vtkIconGlyphFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkImageDataToPointSet.h"
    "/home/danil/vtk_new/Filters/General/vtkImageMarchingCubes.h"
    "/home/danil/vtk_new/Filters/General/vtkInterpolateDataSetAttributes.h"
    "/home/danil/vtk_new/Filters/General/vtkInterpolatingSubdivisionFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkIntersectionPolyDataFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkJoinTables.h"
    "/home/danil/vtk_new/Filters/General/vtkLevelIdScalars.h"
    "/home/danil/vtk_new/Filters/General/vtkLinkEdgels.h"
    "/home/danil/vtk_new/Filters/General/vtkLoopBooleanPolyDataFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkMarchingContourFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkMatricizeArray.h"
    "/home/danil/vtk_new/Filters/General/vtkMergeArrays.h"
    "/home/danil/vtk_new/Filters/General/vtkMergeCells.h"
    "/home/danil/vtk_new/Filters/General/vtkMergeTimeFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkMergeVectorComponents.h"
    "/home/danil/vtk_new/Filters/General/vtkMultiBlockDataGroupFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkMultiBlockMergeFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkMultiThreshold.h"
    "/home/danil/vtk_new/Filters/General/vtkNormalizeMatrixVectors.h"
    "/home/danil/vtk_new/Filters/General/vtkOBBDicer.h"
    "/home/danil/vtk_new/Filters/General/vtkOBBTree.h"
    "/home/danil/vtk_new/Filters/General/vtkOverlappingAMRLevelIdScalars.h"
    "/home/danil/vtk_new/Filters/General/vtkPassArrays.h"
    "/home/danil/vtk_new/Filters/General/vtkPassSelectedArrays.h"
    "/home/danil/vtk_new/Filters/General/vtkPointConnectivityFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkPolyDataStreamer.h"
    "/home/danil/vtk_new/Filters/General/vtkPolyDataToReebGraphFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkProbePolyhedron.h"
    "/home/danil/vtk_new/Filters/General/vtkQuadraturePointInterpolator.h"
    "/home/danil/vtk_new/Filters/General/vtkQuadraturePointsGenerator.h"
    "/home/danil/vtk_new/Filters/General/vtkQuadratureSchemeDictionaryGenerator.h"
    "/home/danil/vtk_new/Filters/General/vtkQuantizePolyDataPoints.h"
    "/home/danil/vtk_new/Filters/General/vtkRandomAttributeGenerator.h"
    "/home/danil/vtk_new/Filters/General/vtkRectilinearGridClip.h"
    "/home/danil/vtk_new/Filters/General/vtkRectilinearGridToPointSet.h"
    "/home/danil/vtk_new/Filters/General/vtkRectilinearGridToTetrahedra.h"
    "/home/danil/vtk_new/Filters/General/vtkRecursiveDividingCubes.h"
    "/home/danil/vtk_new/Filters/General/vtkReflectionFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkRemovePolyData.h"
    "/home/danil/vtk_new/Filters/General/vtkRotationFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkSampleImplicitFunctionFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkShrinkFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkShrinkPolyData.h"
    "/home/danil/vtk_new/Filters/General/vtkSpatialRepresentationFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkSphericalHarmonics.h"
    "/home/danil/vtk_new/Filters/General/vtkSplineFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkSplitByCellScalarFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkSplitColumnComponents.h"
    "/home/danil/vtk_new/Filters/General/vtkSplitField.h"
    "/home/danil/vtk_new/Filters/General/vtkStructuredGridClip.h"
    "/home/danil/vtk_new/Filters/General/vtkSubPixelPositionEdgels.h"
    "/home/danil/vtk_new/Filters/General/vtkSubdivisionFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkSynchronizeTimeFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkTableBasedClipDataSet.h"
    "/home/danil/vtk_new/Filters/General/vtkTableFFT.h"
    "/home/danil/vtk_new/Filters/General/vtkTableToPolyData.h"
    "/home/danil/vtk_new/Filters/General/vtkTableToStructuredGrid.h"
    "/home/danil/vtk_new/Filters/General/vtkTemporalPathLineFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkTemporalStatistics.h"
    "/home/danil/vtk_new/Filters/General/vtkTessellatorFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkTimeSourceExample.h"
    "/home/danil/vtk_new/Filters/General/vtkTransformFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkTransformPolyDataFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkUncertaintyTubeFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkVertexGlyphFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkVolumeContourSpectrumFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkVoxelContoursToSurfaceFilter.h"
    "/home/danil/vtk_new/Filters/General/vtkWarpLens.h"
    "/home/danil/vtk_new/Filters/General/vtkWarpScalar.h"
    "/home/danil/vtk_new/Filters/General/vtkWarpTo.h"
    "/home/danil/vtk_new/Filters/General/vtkWarpVector.h"
    "/home/danil/vtk_new/Filters/General/vtkYoungsMaterialInterface.h"
    "/home/danil/vtk_new/cmake-build-debug/Filters/General/vtkFiltersGeneralModule.h"
    "/home/danil/vtk_new/Filters/General/vtkJoinTables.txx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkFiltersGeneral-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkFiltersGeneral-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersGeneral-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersGeneral-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersGeneral-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-9.2.so")
    endif()
  endif()
endif()

