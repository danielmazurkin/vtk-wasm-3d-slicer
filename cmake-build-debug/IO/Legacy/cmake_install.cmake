# Install script for directory: /home/danil/vtk_new/IO/Legacy

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
    "/home/danil/vtk_new/IO/Legacy/vtkCompositeDataReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkCompositeDataWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkDataObjectReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkDataObjectWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkDataReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkDataSetReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkDataSetWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkDataWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkGenericDataObjectReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkGenericDataObjectWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkGraphReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkGraphWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkPixelExtentIO.h"
    "/home/danil/vtk_new/IO/Legacy/vtkPolyDataReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkPolyDataWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkRectilinearGridReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkRectilinearGridWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkSimplePointsReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkSimplePointsWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkStructuredGridReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkStructuredGridWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkStructuredPointsReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkStructuredPointsWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkTableReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkTableWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkTreeReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkTreeWriter.h"
    "/home/danil/vtk_new/IO/Legacy/vtkUnstructuredGridReader.h"
    "/home/danil/vtk_new/IO/Legacy/vtkUnstructuredGridWriter.h"
    "/home/danil/vtk_new/cmake-build-debug/IO/Legacy/vtkIOLegacyModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkIOLegacy-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkIOLegacy-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOLegacy-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOLegacy-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOLegacy-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-9.2.so")
    endif()
  endif()
endif()

