# Install script for directory: /home/danil/vtk_new/IO/Core

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
    "/home/danil/vtk_new/IO/Core/vtkUpdateCellsV8toV9.h"
    "/home/danil/vtk_new/IO/Core/vtkAbstractParticleWriter.h"
    "/home/danil/vtk_new/IO/Core/vtkAbstractPolyDataReader.h"
    "/home/danil/vtk_new/IO/Core/vtkArrayDataReader.h"
    "/home/danil/vtk_new/IO/Core/vtkArrayDataWriter.h"
    "/home/danil/vtk_new/IO/Core/vtkArrayReader.h"
    "/home/danil/vtk_new/IO/Core/vtkArrayWriter.h"
    "/home/danil/vtk_new/IO/Core/vtkASCIITextCodec.h"
    "/home/danil/vtk_new/IO/Core/vtkBase64InputStream.h"
    "/home/danil/vtk_new/IO/Core/vtkBase64OutputStream.h"
    "/home/danil/vtk_new/IO/Core/vtkBase64Utilities.h"
    "/home/danil/vtk_new/IO/Core/vtkDataCompressor.h"
    "/home/danil/vtk_new/IO/Core/vtkDelimitedTextWriter.h"
    "/home/danil/vtk_new/IO/Core/vtkFileResourceStream.h"
    "/home/danil/vtk_new/IO/Core/vtkGlobFileNames.h"
    "/home/danil/vtk_new/IO/Core/vtkInputStream.h"
    "/home/danil/vtk_new/IO/Core/vtkJavaScriptDataWriter.h"
    "/home/danil/vtk_new/IO/Core/vtkLZ4DataCompressor.h"
    "/home/danil/vtk_new/IO/Core/vtkLZMADataCompressor.h"
    "/home/danil/vtk_new/IO/Core/vtkMemoryResourceStream.h"
    "/home/danil/vtk_new/IO/Core/vtkNumberToString.h"
    "/home/danil/vtk_new/IO/Core/vtkOutputStream.h"
    "/home/danil/vtk_new/IO/Core/vtkResourceParser.h"
    "/home/danil/vtk_new/IO/Core/vtkResourceStream.h"
    "/home/danil/vtk_new/IO/Core/vtkSortFileNames.h"
    "/home/danil/vtk_new/IO/Core/vtkTextCodec.h"
    "/home/danil/vtk_new/IO/Core/vtkTextCodecFactory.h"
    "/home/danil/vtk_new/IO/Core/vtkUTF16TextCodec.h"
    "/home/danil/vtk_new/IO/Core/vtkUTF8TextCodec.h"
    "/home/danil/vtk_new/IO/Core/vtkWriter.h"
    "/home/danil/vtk_new/IO/Core/vtkZLibDataCompressor.h"
    "/home/danil/vtk_new/cmake-build-debug/IO/Core/vtkIOCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkIOCore-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkIOCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOCore-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOCore-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOCore-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOCore-9.2.so")
    endif()
  endif()
endif()

