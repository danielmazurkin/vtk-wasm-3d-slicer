# Install script for directory: /home/danil/vtk_new/Filters/Parallel

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
    "/home/danil/vtk_new/Filters/Parallel/vtkBlockDistribution.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkAdaptiveTemporalInterpolator.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkAggregateDataSetFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkAlignImageDataSetFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkAngularPeriodicFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkCollectGraph.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkCollectPolyData.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkCollectTable.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkCutMaterial.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkDistributedDataFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkDuplicatePolyData.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkExtractCTHPart.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkExtractPolyDataPiece.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkExtractUnstructuredGridPiece.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkExtractUserDefinedPiece.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkGenerateProcessIds.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkHyperTreeGridGhostCellsGenerator.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPHyperTreeGridProbeFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkIntegrateAttributes.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPeriodicFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPCellDataToPointData.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPConvertToMultiBlockDataSet.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPExtractDataArraysOverTime.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPExtractExodusGlobalTemporalVariables.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPExtractSelectedArraysOverTime.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPieceRequestFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPieceScalars.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPipelineSize.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPKdTree.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPLinearExtrusionFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPMaskPoints.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPMergeArrays.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPOutlineCornerFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPOutlineFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPOutlineFilterInternals.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPPolyDataNormals.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPProbeFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPProjectSphereFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPReflectionFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPResampleFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPartitionBalancer.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkProcessIdScalars.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPSphereSource.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPTextureMapToSphere.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkPYoungsMaterialInterface.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkRectilinearGridOutlineFilter.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkRemoveGhosts.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkTransmitPolyDataPiece.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkTransmitRectilinearGridPiece.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkTransmitStructuredDataPiece.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkTransmitStructuredGridPiece.h"
    "/home/danil/vtk_new/Filters/Parallel/vtkTransmitUnstructuredGridPiece.h"
    "/home/danil/vtk_new/cmake-build-debug/Filters/Parallel/vtkFiltersParallelModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkFiltersParallel-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkFiltersParallel-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersParallel-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersParallel-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersParallel-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-9.2.so")
    endif()
  endif()
endif()

