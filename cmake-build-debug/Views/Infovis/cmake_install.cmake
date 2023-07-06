# Install script for directory: /home/danil/vtk_new/Views/Infovis

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
    "/home/danil/vtk_new/Views/Infovis/vtkApplyColors.h"
    "/home/danil/vtk_new/Views/Infovis/vtkApplyIcons.h"
    "/home/danil/vtk_new/Views/Infovis/vtkDendrogramItem.h"
    "/home/danil/vtk_new/Views/Infovis/vtkGraphItem.h"
    "/home/danil/vtk_new/Views/Infovis/vtkGraphLayoutView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkHeatmapItem.h"
    "/home/danil/vtk_new/Views/Infovis/vtkHierarchicalGraphPipeline.h"
    "/home/danil/vtk_new/Views/Infovis/vtkHierarchicalGraphView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkIcicleView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkInteractorStyleAreaSelectHover.h"
    "/home/danil/vtk_new/Views/Infovis/vtkInteractorStyleTreeMapHover.h"
    "/home/danil/vtk_new/Views/Infovis/vtkParallelCoordinatesHistogramRepresentation.h"
    "/home/danil/vtk_new/Views/Infovis/vtkParallelCoordinatesRepresentation.h"
    "/home/danil/vtk_new/Views/Infovis/vtkParallelCoordinatesView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkRenderedGraphRepresentation.h"
    "/home/danil/vtk_new/Views/Infovis/vtkRenderedHierarchyRepresentation.h"
    "/home/danil/vtk_new/Views/Infovis/vtkRenderedRepresentation.h"
    "/home/danil/vtk_new/Views/Infovis/vtkRenderedSurfaceRepresentation.h"
    "/home/danil/vtk_new/Views/Infovis/vtkRenderedTreeAreaRepresentation.h"
    "/home/danil/vtk_new/Views/Infovis/vtkRenderView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkSCurveSpline.h"
    "/home/danil/vtk_new/Views/Infovis/vtkTanglegramItem.h"
    "/home/danil/vtk_new/Views/Infovis/vtkTreeAreaView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkTreeHeatmapItem.h"
    "/home/danil/vtk_new/Views/Infovis/vtkTreeMapView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkTreeRingView.h"
    "/home/danil/vtk_new/Views/Infovis/vtkViewUpdater.h"
    "/home/danil/vtk_new/cmake-build-debug/Views/Infovis/vtkViewsInfovisModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkViewsInfovis-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkViewsInfovis-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkViewsInfovis-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkViewsInfovis-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkViewsInfovis-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-9.2.so")
    endif()
  endif()
endif()

