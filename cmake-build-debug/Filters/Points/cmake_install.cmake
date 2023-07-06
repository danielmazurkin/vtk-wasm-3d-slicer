# Install script for directory: /home/danil/vtk_new/Filters/Points

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
    "/home/danil/vtk_new/Filters/Points/vtkBoundedPointSource.h"
    "/home/danil/vtk_new/Filters/Points/vtkConnectedPointsFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkConvertToPointCloud.h"
    "/home/danil/vtk_new/Filters/Points/vtkDensifyPointCloudFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkEllipsoidalGaussianKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkEuclideanClusterExtraction.h"
    "/home/danil/vtk_new/Filters/Points/vtkExtractEnclosedPoints.h"
    "/home/danil/vtk_new/Filters/Points/vtkExtractHierarchicalBins.h"
    "/home/danil/vtk_new/Filters/Points/vtkExtractPointCloudPiece.h"
    "/home/danil/vtk_new/Filters/Points/vtkExtractPoints.h"
    "/home/danil/vtk_new/Filters/Points/vtkExtractSurface.h"
    "/home/danil/vtk_new/Filters/Points/vtkFitImplicitFunction.h"
    "/home/danil/vtk_new/Filters/Points/vtkGaussianKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkGeneralizedKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkHierarchicalBinningFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkInterpolationKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkLinearKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkMaskPointsFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkPCACurvatureEstimation.h"
    "/home/danil/vtk_new/Filters/Points/vtkPCANormalEstimation.h"
    "/home/danil/vtk_new/Filters/Points/vtkPointCloudFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkPointDensityFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkPointInterpolator.h"
    "/home/danil/vtk_new/Filters/Points/vtkPointInterpolator2D.h"
    "/home/danil/vtk_new/Filters/Points/vtkPointOccupancyFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkPointSmoothingFilter.h"
    "/home/danil/vtk_new/Filters/Points/vtkPoissonDiskSampler.h"
    "/home/danil/vtk_new/Filters/Points/vtkProbabilisticVoronoiKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkProjectPointsToPlane.h"
    "/home/danil/vtk_new/Filters/Points/vtkRadiusOutlierRemoval.h"
    "/home/danil/vtk_new/Filters/Points/vtkSPHCubicKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkSPHInterpolator.h"
    "/home/danil/vtk_new/Filters/Points/vtkSPHKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkSPHQuarticKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkSPHQuinticKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkShepardKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkSignedDistance.h"
    "/home/danil/vtk_new/Filters/Points/vtkStatisticalOutlierRemoval.h"
    "/home/danil/vtk_new/Filters/Points/vtkUnsignedDistance.h"
    "/home/danil/vtk_new/Filters/Points/vtkVoronoiKernel.h"
    "/home/danil/vtk_new/Filters/Points/vtkVoxelGrid.h"
    "/home/danil/vtk_new/Filters/Points/vtkWendlandQuinticKernel.h"
    "/home/danil/vtk_new/cmake-build-debug/Filters/Points/vtkFiltersPointsModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkFiltersPoints-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkFiltersPoints-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersPoints-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersPoints-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersPoints-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersPoints-9.2.so")
    endif()
  endif()
endif()

