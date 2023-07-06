# Install script for directory: /home/danil/vtk_new/Rendering/Annotation

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
    "/home/danil/vtk_new/Rendering/Annotation/vtkAnnotatedCubeActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkArcPlotter.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkAxesActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkAxisActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkAxisActor2D.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkAxisFollower.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkBarChartActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkCaptionActor2D.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkConvexHull2D.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkCornerAnnotation.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkCubeAxesActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkCubeAxesActor2D.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkGraphAnnotationLayersFilter.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkLeaderActor2D.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkLegendBoxActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkLegendScaleActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkParallelCoordinatesActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkPieChartActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkPolarAxesActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkProp3DAxisFollower.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkScalarBarActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkSpiderPlotActor.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkXYPlotActor.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/Annotation/vtkRenderingAnnotationModule.h"
    "/home/danil/vtk_new/Rendering/Annotation/vtkScalarBarActorInternal.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkRenderingAnnotation-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkRenderingAnnotation-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingAnnotation-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingAnnotation-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingAnnotation-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-9.2.so")
    endif()
  endif()
endif()

