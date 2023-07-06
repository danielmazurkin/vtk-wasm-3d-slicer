# Install script for directory: /home/danil/vtk_new/Filters/Extraction

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
    "/home/danil/vtk_new/Filters/Extraction/vtkBlockSelector.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkConvertSelection.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExpandMarkedElements.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractBlock.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractBlockUsingDataAssembly.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractCellsByType.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractDataArraysOverTime.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractDataOverTime.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractDataSets.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractExodusGlobalTemporalVariables.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractGeometry.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractGrid.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractLevel.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractParticlesOverTime.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractPolyDataGeometry.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractRectilinearGrid.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelectedArraysOverTime.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelectedBlock.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelectedIds.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelectedLocations.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelectedPolyDataIds.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelectedRows.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelectedThresholds.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractSelection.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractTensorComponents.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractTimeSteps.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractUnstructuredGrid.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkExtractVectorComponents.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkFrustumSelector.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkHierarchicalDataExtractDataSets.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkHierarchicalDataExtractLevel.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkLocationSelector.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkProbeSelectedLocations.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkSelector.h"
    "/home/danil/vtk_new/Filters/Extraction/vtkValueSelector.h"
    "/home/danil/vtk_new/cmake-build-debug/Filters/Extraction/vtkFiltersExtractionModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkFiltersExtraction-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkFiltersExtraction-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersExtraction-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersExtraction-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersExtraction-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersExtraction-9.2.so")
    endif()
  endif()
endif()

