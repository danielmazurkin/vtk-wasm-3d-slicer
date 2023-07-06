# Install script for directory: /home/danil/vtk_new/IO/Geometry

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
    "/home/danil/vtk_new/IO/Geometry/vtkAVSucdReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkBYUReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkBYUWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkChacoReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkFacetWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkFLUENTReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkGAMBITReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkGLTFDocumentLoader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkGLTFReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkGLTFWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkHoudiniPolyDataWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkIVWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkMCubesReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkMCubesWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkMFIXReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkOBJReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkOBJWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkOpenFOAMReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkParticleReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkProStarReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkPTSReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkSTLReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkSTLWriter.h"
    "/home/danil/vtk_new/IO/Geometry/vtkTecplotReader.h"
    "/home/danil/vtk_new/IO/Geometry/vtkWindBladeReader.h"
    "/home/danil/vtk_new/cmake-build-debug/IO/Geometry/vtkIOGeometryModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkIOGeometry-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkIOGeometry-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOGeometry-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOGeometry-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOGeometry-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-9.2.so")
    endif()
  endif()
endif()

