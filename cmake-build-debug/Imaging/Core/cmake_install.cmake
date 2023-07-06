# Install script for directory: /home/danil/vtk_new/Imaging/Core

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
    "/home/danil/vtk_new/Imaging/Core/vtkAbstractImageInterpolator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkExtractVOI.h"
    "/home/danil/vtk_new/Imaging/Core/vtkGenericImageInterpolator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageAppendComponents.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageBlend.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageBSplineCoefficients.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageBSplineInternals.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageBSplineInterpolator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageCacheFilter.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageCast.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageChangeInformation.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageClip.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageConstantPad.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageDataStreamer.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageDecomposeFilter.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageDifference.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageExtractComponents.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageFlip.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageInterpolator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageIterateFilter.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageMagnify.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageMapToColors.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageMask.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageMirrorPad.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImagePadFilter.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImagePermute.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImagePointDataIterator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImagePointIterator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageProbeFilter.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageResample.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageResize.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageReslice.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageResliceToColors.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageShiftScale.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageShrink3D.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageSincInterpolator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageStencilAlgorithm.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageStencilData.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageStencilIterator.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageStencilSource.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageThreshold.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageTranslateExtent.h"
    "/home/danil/vtk_new/Imaging/Core/vtkImageWrapPad.h"
    "/home/danil/vtk_new/Imaging/Core/vtkRTAnalyticSource.h"
    "/home/danil/vtk_new/cmake-build-debug/Imaging/Core/vtkImagingCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkImagingCore-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkImagingCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkImagingCore-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkImagingCore-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkImagingCore-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-9.2.so")
    endif()
  endif()
endif()

