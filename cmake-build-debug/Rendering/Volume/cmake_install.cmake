# Install script for directory: /home/danil/vtk_new/Rendering/Volume

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
    "/home/danil/vtk_new/Rendering/Volume/vtkBlockSortHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkDirectionEncoder.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkEncodedGradientEstimator.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkEncodedGradientShader.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFiniteDifferenceGradientEstimator.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointRayCastImage.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOShadeHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeShadeHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastMapper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastMIPHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkGPUVolumeRayCastMapper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkMultiVolume.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkOSPRayVolumeInterface.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkProjectedTetrahedraMapper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkRayCastImageDisplayHelper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkRecursiveSphereDirectionEncoder.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkSphericalDirectionEncoder.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridBunykRayCastFunction.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridHomogeneousRayIntegrator.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridLinearRayIntegrator.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridPartialPreIntegration.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridPreIntegration.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeMapper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayCastFunction.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayCastIterator.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayCastMapper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayIntegrator.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeZSweepMapper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkVolumeMapper.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkVolumeOutlineSource.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkVolumePicker.h"
    "/home/danil/vtk_new/Rendering/Volume/vtkVolumeRayCastSpaceLeapingImageFilter.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/Volume/vtkRenderingVolumeModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkRenderingVolume-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkRenderingVolume-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingVolume-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingVolume-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingVolume-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-9.2.so")
    endif()
  endif()
endif()

