# Install script for directory: /home/danil/vtk_new/Utilities/MetaIO/vtkmetaio

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtkmetaio" TYPE FILE FILES
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaArray.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaArrow.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaBlob.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaCommand.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaContour.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaEvent.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaForm.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaGroup.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaImage.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaLine.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaMesh.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaObject.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaScene.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaSurface.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaTube.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaTransform.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaTypes.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaUtils.h"
    "/home/danil/vtk_new/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
    "/home/danil/vtk_new/cmake-build-debug/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkmetaio-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkmetaio-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkmetaio-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-9.2.so")
    endif()
  endif()
endif()

