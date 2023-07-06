# Install script for directory: /home/danil/vtk_new/Charts/Core

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
    "/home/danil/vtk_new/Charts/Core/vtkAxis.h"
    "/home/danil/vtk_new/Charts/Core/vtkAxisExtended.h"
    "/home/danil/vtk_new/Charts/Core/vtkCategoryLegend.h"
    "/home/danil/vtk_new/Charts/Core/vtkChart.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartBox.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartHistogram2D.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartLegend.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartMatrix.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartParallelCoordinates.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartPie.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartXY.h"
    "/home/danil/vtk_new/Charts/Core/vtkChartXYZ.h"
    "/home/danil/vtk_new/Charts/Core/vtkColorLegend.h"
    "/home/danil/vtk_new/Charts/Core/vtkColorTransferControlPointsItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkColorTransferFunctionItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkCompositeControlPointsItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkCompositeTransferFunctionItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkContextArea.h"
    "/home/danil/vtk_new/Charts/Core/vtkContextPolygon.h"
    "/home/danil/vtk_new/Charts/Core/vtkControlPointsItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkInteractiveArea.h"
    "/home/danil/vtk_new/Charts/Core/vtkLookupTableItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkPiecewiseControlPointsItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkPiecewiseFunctionItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkPiecewisePointHandleItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlot.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlot3D.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotArea.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotBag.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotBar.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotBarRangeHandlesItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotBox.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotFunctionalBag.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotGrid.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotHistogram2D.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotLine.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotLine3D.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotParallelCoordinates.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotPie.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotPoints.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotPoints3D.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotRangeHandlesItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotStacked.h"
    "/home/danil/vtk_new/Charts/Core/vtkPlotSurface.h"
    "/home/danil/vtk_new/Charts/Core/vtkRangeHandlesItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkScalarsToColorsItem.h"
    "/home/danil/vtk_new/Charts/Core/vtkScatterPlotMatrix.h"
    "/home/danil/vtk_new/cmake-build-debug/Charts/Core/vtkChartsCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkChartsCore-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkChartsCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkChartsCore-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkChartsCore-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkChartsCore-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-9.2.so")
    endif()
  endif()
endif()

