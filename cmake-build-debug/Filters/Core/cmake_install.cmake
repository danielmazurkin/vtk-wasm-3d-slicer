# Install script for directory: /home/danil/vtk_new/Filters/Core

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
    "/home/danil/vtk_new/Filters/Core/vtk3DLinearGridCrinkleExtractor.h"
    "/home/danil/vtk_new/Filters/Core/vtk3DLinearGridPlaneCutter.h"
    "/home/danil/vtk_new/Filters/Core/vtkAppendArcLength.h"
    "/home/danil/vtk_new/Filters/Core/vtkAppendCompositeDataLeaves.h"
    "/home/danil/vtk_new/Filters/Core/vtkAppendDataSets.h"
    "/home/danil/vtk_new/Filters/Core/vtkAppendFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkAppendPolyData.h"
    "/home/danil/vtk_new/Filters/Core/vtkAppendSelection.h"
    "/home/danil/vtk_new/Filters/Core/vtkArrayCalculator.h"
    "/home/danil/vtk_new/Filters/Core/vtkArrayRename.h"
    "/home/danil/vtk_new/Filters/Core/vtkAssignAttribute.h"
    "/home/danil/vtk_new/Filters/Core/vtkAttributeDataToFieldDataFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkAttributeDataToTableFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkBinCellDataFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkBinnedDecimation.h"
    "/home/danil/vtk_new/Filters/Core/vtkCellCenters.h"
    "/home/danil/vtk_new/Filters/Core/vtkCellDataToPointData.h"
    "/home/danil/vtk_new/Filters/Core/vtkCenterOfMass.h"
    "/home/danil/vtk_new/Filters/Core/vtkCleanPolyData.h"
    "/home/danil/vtk_new/Filters/Core/vtkClipPolyData.h"
    "/home/danil/vtk_new/Filters/Core/vtkCompositeCutter.h"
    "/home/danil/vtk_new/Filters/Core/vtkCompositeDataProbeFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkConnectivityFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkConstrainedSmoothingFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkContour3DLinearGrid.h"
    "/home/danil/vtk_new/Filters/Core/vtkContourFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkContourGrid.h"
    "/home/danil/vtk_new/Filters/Core/vtkContourHelper.h"
    "/home/danil/vtk_new/Filters/Core/vtkConvertToMultiBlockDataSet.h"
    "/home/danil/vtk_new/Filters/Core/vtkConvertToPartitionedDataSetCollection.h"
    "/home/danil/vtk_new/Filters/Core/vtkConvertToPolyhedra.h"
    "/home/danil/vtk_new/Filters/Core/vtkCutter.h"
    "/home/danil/vtk_new/Filters/Core/vtkDataObjectGenerator.h"
    "/home/danil/vtk_new/Filters/Core/vtkDataObjectToDataSetFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkDataSetEdgeSubdivisionCriterion.h"
    "/home/danil/vtk_new/Filters/Core/vtkDataSetToDataObjectFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkDecimatePolylineFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkDecimatePro.h"
    "/home/danil/vtk_new/Filters/Core/vtkDelaunay2D.h"
    "/home/danil/vtk_new/Filters/Core/vtkDelaunay3D.h"
    "/home/danil/vtk_new/Filters/Core/vtkEdgeSubdivisionCriterion.h"
    "/home/danil/vtk_new/Filters/Core/vtkElevationFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkExecutionTimer.h"
    "/home/danil/vtk_new/Filters/Core/vtkExplicitStructuredGridCrop.h"
    "/home/danil/vtk_new/Filters/Core/vtkExplicitStructuredGridToUnstructuredGrid.h"
    "/home/danil/vtk_new/Filters/Core/vtkExtractCells.h"
    "/home/danil/vtk_new/Filters/Core/vtkExtractCellsAlongPolyLine.h"
    "/home/danil/vtk_new/Filters/Core/vtkExtractEdges.h"
    "/home/danil/vtk_new/Filters/Core/vtkFeatureEdges.h"
    "/home/danil/vtk_new/Filters/Core/vtkFieldDataToAttributeDataFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkFlyingEdges2D.h"
    "/home/danil/vtk_new/Filters/Core/vtkFlyingEdges3D.h"
    "/home/danil/vtk_new/Filters/Core/vtkFlyingEdgesPlaneCutter.h"
    "/home/danil/vtk_new/Filters/Core/vtkGlyph2D.h"
    "/home/danil/vtk_new/Filters/Core/vtkGlyph3D.h"
    "/home/danil/vtk_new/Filters/Core/vtkGridSynchronizedTemplates3D.h"
    "/home/danil/vtk_new/Filters/Core/vtkHedgeHog.h"
    "/home/danil/vtk_new/Filters/Core/vtkHull.h"
    "/home/danil/vtk_new/Filters/Core/vtkHyperTreeGridProbeFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkIdFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkImageAppend.h"
    "/home/danil/vtk_new/Filters/Core/vtkImageDataToExplicitStructuredGrid.h"
    "/home/danil/vtk_new/Filters/Core/vtkImplicitPolyDataDistance.h"
    "/home/danil/vtk_new/Filters/Core/vtkImplicitProjectOnPlaneDistance.h"
    "/home/danil/vtk_new/Filters/Core/vtkMarchingCubes.h"
    "/home/danil/vtk_new/Filters/Core/vtkMarchingSquares.h"
    "/home/danil/vtk_new/Filters/Core/vtkMaskFields.h"
    "/home/danil/vtk_new/Filters/Core/vtkMaskPoints.h"
    "/home/danil/vtk_new/Filters/Core/vtkMaskPolyData.h"
    "/home/danil/vtk_new/Filters/Core/vtkMassProperties.h"
    "/home/danil/vtk_new/Filters/Core/vtkMergeDataObjectFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkMergeFields.h"
    "/home/danil/vtk_new/Filters/Core/vtkMergeFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkMoleculeAppend.h"
    "/home/danil/vtk_new/Filters/Core/vtkMultiObjectMassProperties.h"
    "/home/danil/vtk_new/Filters/Core/vtkPackLabels.h"
    "/home/danil/vtk_new/Filters/Core/vtkPassThrough.h"
    "/home/danil/vtk_new/Filters/Core/vtkPlaneCutter.h"
    "/home/danil/vtk_new/Filters/Core/vtkPointDataToCellData.h"
    "/home/danil/vtk_new/Filters/Core/vtkPolyDataConnectivityFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkPolyDataEdgeConnectivityFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkPolyDataNormals.h"
    "/home/danil/vtk_new/Filters/Core/vtkPolyDataPlaneClipper.h"
    "/home/danil/vtk_new/Filters/Core/vtkPolyDataPlaneCutter.h"
    "/home/danil/vtk_new/Filters/Core/vtkPolyDataTangents.h"
    "/home/danil/vtk_new/Filters/Core/vtkPolyDataToUnstructuredGrid.h"
    "/home/danil/vtk_new/Filters/Core/vtkProbeFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkQuadricClustering.h"
    "/home/danil/vtk_new/Filters/Core/vtkQuadricDecimation.h"
    "/home/danil/vtk_new/Filters/Core/vtkRearrangeFields.h"
    "/home/danil/vtk_new/Filters/Core/vtkRectilinearSynchronizedTemplates.h"
    "/home/danil/vtk_new/Filters/Core/vtkRemoveDuplicatePolys.h"
    "/home/danil/vtk_new/Filters/Core/vtkRemoveUnusedPoints.h"
    "/home/danil/vtk_new/Filters/Core/vtkResampleToImage.h"
    "/home/danil/vtk_new/Filters/Core/vtkResampleWithDataSet.h"
    "/home/danil/vtk_new/Filters/Core/vtkReverseSense.h"
    "/home/danil/vtk_new/Filters/Core/vtkSimpleElevationFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkSmoothPolyDataFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkSphereTreeFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkStructuredDataPlaneCutter.h"
    "/home/danil/vtk_new/Filters/Core/vtkStaticCleanPolyData.h"
    "/home/danil/vtk_new/Filters/Core/vtkStaticCleanUnstructuredGrid.h"
    "/home/danil/vtk_new/Filters/Core/vtkStreamerBase.h"
    "/home/danil/vtk_new/Filters/Core/vtkStreamingTessellator.h"
    "/home/danil/vtk_new/Filters/Core/vtkStripper.h"
    "/home/danil/vtk_new/Filters/Core/vtkStructuredGridAppend.h"
    "/home/danil/vtk_new/Filters/Core/vtkStructuredGridOutlineFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkSurfaceNets2D.h"
    "/home/danil/vtk_new/Filters/Core/vtkSurfaceNets3D.h"
    "/home/danil/vtk_new/Filters/Core/vtkSynchronizedTemplates2D.h"
    "/home/danil/vtk_new/Filters/Core/vtkSynchronizedTemplates3D.h"
    "/home/danil/vtk_new/Filters/Core/vtkSynchronizedTemplatesCutter3D.h"
    "/home/danil/vtk_new/Filters/Core/vtkTensorGlyph.h"
    "/home/danil/vtk_new/Filters/Core/vtkThreshold.h"
    "/home/danil/vtk_new/Filters/Core/vtkThresholdPoints.h"
    "/home/danil/vtk_new/Filters/Core/vtkTransposeTable.h"
    "/home/danil/vtk_new/Filters/Core/vtkTriangleFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkTriangleMeshPointNormals.h"
    "/home/danil/vtk_new/Filters/Core/vtkTubeBender.h"
    "/home/danil/vtk_new/Filters/Core/vtkTubeFilter.h"
    "/home/danil/vtk_new/Filters/Core/vtkUnstructuredGridQuadricDecimation.h"
    "/home/danil/vtk_new/Filters/Core/vtkUnstructuredGridToExplicitStructuredGrid.h"
    "/home/danil/vtk_new/Filters/Core/vtkVectorDot.h"
    "/home/danil/vtk_new/Filters/Core/vtkVectorNorm.h"
    "/home/danil/vtk_new/Filters/Core/vtkVoronoi2D.h"
    "/home/danil/vtk_new/Filters/Core/vtkWindowedSincPolyDataFilter.h"
    "/home/danil/vtk_new/cmake-build-debug/Filters/Core/vtkFiltersCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkFiltersCore-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkFiltersCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersCore-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersCore-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersCore-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-9.2.so")
    endif()
  endif()
endif()

