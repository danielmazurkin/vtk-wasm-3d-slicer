# Install script for directory: /home/danil/vtk_new/Rendering/Context2D

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
    "/home/danil/vtk_new/Rendering/Context2D/vtkAbstractContextBufferId.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkAbstractContextItem.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkBlockItem.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkBrush.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContext2D.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContext3D.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextActor.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextClip.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextDevice2D.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextDevice3D.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextItem.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextKeyEvent.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextMapper2D.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextMouseEvent.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextScene.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkContextTransform.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkImageItem.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkLabeledContourPolyDataItem.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkMarkerUtilities.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkPen.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkPolyDataItem.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkPropItem.h"
    "/home/danil/vtk_new/Rendering/Context2D/vtkTooltipItem.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/Context2D/vtkRenderingContext2DModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkRenderingContext2D-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkRenderingContext2D-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingContext2D-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingContext2D-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingContext2D-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingContext2D-9.2.so")
    endif()
  endif()
endif()

