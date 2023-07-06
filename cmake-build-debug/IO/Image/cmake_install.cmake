# Install script for directory: /home/danil/vtk_new/IO/Image

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
    "/home/danil/vtk_new/IO/Image/vtkBMPReader.h"
    "/home/danil/vtk_new/IO/Image/vtkBMPWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkDEMReader.h"
    "/home/danil/vtk_new/IO/Image/vtkDICOMImageReader.h"
    "/home/danil/vtk_new/IO/Image/vtkGESignaReader.h"
    "/home/danil/vtk_new/IO/Image/vtkHDRReader.h"
    "/home/danil/vtk_new/IO/Image/vtkImageExport.h"
    "/home/danil/vtk_new/IO/Image/vtkImageImport.h"
    "/home/danil/vtk_new/IO/Image/vtkImageImportExecutive.h"
    "/home/danil/vtk_new/IO/Image/vtkImageReader.h"
    "/home/danil/vtk_new/IO/Image/vtkImageReader2.h"
    "/home/danil/vtk_new/IO/Image/vtkImageReader2Collection.h"
    "/home/danil/vtk_new/IO/Image/vtkImageReader2Factory.h"
    "/home/danil/vtk_new/IO/Image/vtkImageWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkJPEGReader.h"
    "/home/danil/vtk_new/IO/Image/vtkJPEGWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkJSONImageWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkMedicalImageProperties.h"
    "/home/danil/vtk_new/IO/Image/vtkMedicalImageReader2.h"
    "/home/danil/vtk_new/IO/Image/vtkMetaImageReader.h"
    "/home/danil/vtk_new/IO/Image/vtkMetaImageWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkMRCReader.h"
    "/home/danil/vtk_new/IO/Image/vtkNIFTIImageHeader.h"
    "/home/danil/vtk_new/IO/Image/vtkNIFTIImageReader.h"
    "/home/danil/vtk_new/IO/Image/vtkNIFTIImageWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkNrrdReader.h"
    "/home/danil/vtk_new/IO/Image/vtkOMETIFFReader.h"
    "/home/danil/vtk_new/IO/Image/vtkPNGReader.h"
    "/home/danil/vtk_new/IO/Image/vtkPNGWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkPNMReader.h"
    "/home/danil/vtk_new/IO/Image/vtkPNMWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkPostScriptWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkSEPReader.h"
    "/home/danil/vtk_new/IO/Image/vtkSLCReader.h"
    "/home/danil/vtk_new/IO/Image/vtkTGAReader.h"
    "/home/danil/vtk_new/IO/Image/vtkTIFFReader.h"
    "/home/danil/vtk_new/IO/Image/vtkTIFFWriter.h"
    "/home/danil/vtk_new/IO/Image/vtkVolume16Reader.h"
    "/home/danil/vtk_new/IO/Image/vtkVolumeReader.h"
    "/home/danil/vtk_new/cmake-build-debug/IO/Image/vtkIOImageModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkIOImage-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkIOImage-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOImage-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOImage-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOImage-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-9.2.so")
    endif()
  endif()
endif()

