# Install script for directory: /home/danil/vtk_new/Infovis/Layout

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
    "/home/danil/vtk_new/Infovis/Layout/vtkArcParallelEdgeStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkAreaLayout.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkAreaLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkAssignCoordinates.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkAssignCoordinatesLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkAttributeClustering2DLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkBoxLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkCirclePackFrontChainLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkCirclePackLayout.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkCirclePackLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkCirclePackToPolyData.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkCircularLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkClustering2DLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkCommunity2DLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkConeLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkConstrained2DLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkCosmicTreeLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkEdgeLayout.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkEdgeLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkFast2DLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkForceDirectedLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkGeoEdgeStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkGeoMath.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkGraphLayout.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkGraphLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkIncrementalForceLayout.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkKCoreLayout.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkPassThroughEdgeStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkPassThroughLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkPerturbCoincidentVertices.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkRandomLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkSimple2DLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkSimple3DCirclesStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkSliceAndDiceLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkSpanTreeLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkSplineGraphEdges.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkSquarifyLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkStackedTreeLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkTreeLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkTreeMapLayout.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkTreeMapLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkTreeMapToPolyData.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkTreeOrbitLayoutStrategy.h"
    "/home/danil/vtk_new/Infovis/Layout/vtkTreeRingToPolyData.h"
    "/home/danil/vtk_new/cmake-build-debug/Infovis/Layout/vtkInfovisLayoutModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkInfovisLayout-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkInfovisLayout-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInfovisLayout-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInfovisLayout-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInfovisLayout-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-9.2.so")
    endif()
  endif()
endif()

