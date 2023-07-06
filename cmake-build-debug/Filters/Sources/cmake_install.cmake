# Install script for directory: /home/danil/vtk_new/Filters/Sources

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
    "/home/danil/vtk_new/Filters/Sources/vtkArcSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkArrowSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkButtonSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkCapsuleSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkCellTypeSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkConeSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkCubeSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkCylinderSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkDiagonalMatrixSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkDiskSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkEllipseArcSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkEllipticalButtonSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkFrustumSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkGlyphSource2D.h"
    "/home/danil/vtk_new/Filters/Sources/vtkGraphToPolyData.h"
    "/home/danil/vtk_new/Filters/Sources/vtkHandleSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkHyperTreeGridPreConfiguredSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkHyperTreeGridSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkLineSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkOutlineCornerFilter.h"
    "/home/danil/vtk_new/Filters/Sources/vtkOutlineCornerSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkOutlineSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkParametricFunctionSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPartitionedDataSetSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPartitionedDataSetCollectionSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPlaneSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPlatonicSolidSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPointHandleSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPointSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPolyLineSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkPolyPointSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkProgrammableDataObjectSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkProgrammableSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkRandomHyperTreeGridSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkRectangularButtonSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkRegularPolygonSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkSelectionSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkSphereSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkSuperquadricSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkTessellatedBoxSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkTextSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkTexturedSphereSource.h"
    "/home/danil/vtk_new/Filters/Sources/vtkUniformHyperTreeGridSource.h"
    "/home/danil/vtk_new/cmake-build-debug/Filters/Sources/vtkFiltersSourcesModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkFiltersSources-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkFiltersSources-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersSources-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersSources-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkFiltersSources-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersSources-9.2.so")
    endif()
  endif()
endif()

