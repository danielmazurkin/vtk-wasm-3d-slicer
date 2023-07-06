# Install script for directory: /home/danil/vtk_new/Infovis/Core

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
    "/home/danil/vtk_new/Infovis/Core/vtkAddMembershipArray.h"
    "/home/danil/vtk_new/Infovis/Core/vtkAdjacencyMatrixToEdgeTable.h"
    "/home/danil/vtk_new/Infovis/Core/vtkArrayNorm.h"
    "/home/danil/vtk_new/Infovis/Core/vtkArrayToTable.h"
    "/home/danil/vtk_new/Infovis/Core/vtkCollapseGraph.h"
    "/home/danil/vtk_new/Infovis/Core/vtkCollapseVerticesByArray.h"
    "/home/danil/vtk_new/Infovis/Core/vtkContinuousScatterplot.h"
    "/home/danil/vtk_new/Infovis/Core/vtkDataObjectToTable.h"
    "/home/danil/vtk_new/Infovis/Core/vtkDotProductSimilarity.h"
    "/home/danil/vtk_new/Infovis/Core/vtkEdgeCenters.h"
    "/home/danil/vtk_new/Infovis/Core/vtkExpandSelectedGraph.h"
    "/home/danil/vtk_new/Infovis/Core/vtkExtractSelectedGraph.h"
    "/home/danil/vtk_new/Infovis/Core/vtkExtractSelectedTree.h"
    "/home/danil/vtk_new/Infovis/Core/vtkGenerateIndexArray.h"
    "/home/danil/vtk_new/Infovis/Core/vtkGraphHierarchicalBundleEdges.h"
    "/home/danil/vtk_new/Infovis/Core/vtkGroupLeafVertices.h"
    "/home/danil/vtk_new/Infovis/Core/vtkKCoreDecomposition.h"
    "/home/danil/vtk_new/Infovis/Core/vtkMergeColumns.h"
    "/home/danil/vtk_new/Infovis/Core/vtkMergeGraphs.h"
    "/home/danil/vtk_new/Infovis/Core/vtkMergeTables.h"
    "/home/danil/vtk_new/Infovis/Core/vtkMutableGraphHelper.h"
    "/home/danil/vtk_new/Infovis/Core/vtkNetworkHierarchy.h"
    "/home/danil/vtk_new/Infovis/Core/vtkPipelineGraphSource.h"
    "/home/danil/vtk_new/Infovis/Core/vtkPruneTreeFilter.h"
    "/home/danil/vtk_new/Infovis/Core/vtkRandomGraphSource.h"
    "/home/danil/vtk_new/Infovis/Core/vtkReduceTable.h"
    "/home/danil/vtk_new/Infovis/Core/vtkRemoveHiddenData.h"
    "/home/danil/vtk_new/Infovis/Core/vtkRemoveIsolatedVertices.h"
    "/home/danil/vtk_new/Infovis/Core/vtkSparseArrayToTable.h"
    "/home/danil/vtk_new/Infovis/Core/vtkStreamGraph.h"
    "/home/danil/vtk_new/Infovis/Core/vtkStringToCategory.h"
    "/home/danil/vtk_new/Infovis/Core/vtkStringToNumeric.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTableToArray.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTableToGraph.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTableToSparseArray.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTableToTreeFilter.h"
    "/home/danil/vtk_new/Infovis/Core/vtkThresholdGraph.h"
    "/home/danil/vtk_new/Infovis/Core/vtkThresholdTable.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTransferAttributes.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTransposeMatrix.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTreeDifferenceFilter.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTreeFieldAggregator.h"
    "/home/danil/vtk_new/Infovis/Core/vtkTreeLevelsFilter.h"
    "/home/danil/vtk_new/Infovis/Core/vtkVertexDegree.h"
    "/home/danil/vtk_new/Infovis/Core/vtkWordCloud.h"
    "/home/danil/vtk_new/cmake-build-debug/Infovis/Core/vtkInfovisCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkInfovisCore-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkInfovisCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInfovisCore-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInfovisCore-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInfovisCore-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisCore-9.2.so")
    endif()
  endif()
endif()

