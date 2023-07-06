# Install script for directory: /home/danil/vtk_new/Interaction/Widgets

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
    "/home/danil/vtk_new/Interaction/Widgets/vtk3DCursorRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtk3DCursorWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtk3DWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAbstractPolygonalHandleRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAbstractSplineRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAbstractWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAffineRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAffineRepresentation2D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAffineWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAngleRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAngleRepresentation2D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAngleRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAngleWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAxesTransformRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkAxesTransformWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBalloonRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBalloonWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBezierContourLineInterpolator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBiDimensionalRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBiDimensionalRepresentation2D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBiDimensionalWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBorderRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBorderWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBoundedPlanePointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBoxRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBoxWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBoxWidget2.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkBrokenLineWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkButtonRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkButtonWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCamera3DRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCamera3DWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCameraHandleSource.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCameraOrientationWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCameraOrientationRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCameraPathRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCameraPathWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCameraRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCameraWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCaptionRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCaptionWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCellCentersPointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCenteredSliderRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCenteredSliderWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCheckerboardRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCheckerboardWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkClosedSurfacePointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCompassRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCompassWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkConstrainedPointHandleRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkContinuousValueWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkContinuousValueWidgetRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkContourLineInterpolator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkContourRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkContourWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCoordinateFrameRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCoordinateFrameWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkCurveRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkDijkstraImageContourLineInterpolator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkDisplaySizedImplicitPlaneWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkDisplaySizedImplicitPlaneRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkDistanceRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkDistanceRepresentation2D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkDistanceRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkDistanceWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkEllipsoidTensorProbeRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkEqualizerContextItem.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkEvent.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkFinitePlaneRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkFinitePlaneWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkFixedSizeHandleRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkFocalPlaneContourRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkFocalPlanePointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkHandleRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkHandleWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkHoverWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImageActorPointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImageCroppingRegionsWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImageOrthoPlanes.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImagePlaneWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImageTracerWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImplicitCylinderRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImplicitCylinderWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImplicitImageRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImplicitPlaneRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImplicitPlaneWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkImplicitPlaneWidget2.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLightRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLightWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLinearContourLineInterpolator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLineRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLineWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLineWidget2.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLogoRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkLogoWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkMagnifierRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkMagnifierWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkMeasurementCubeHandleRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkOrientationMarkerWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkOrientedGlyphContourRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkOrientedGlyphFocalPlaneContourRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkOrientedPolygonalHandleRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkParallelopipedRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkParallelopipedWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPlaneWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPlaybackRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPlaybackWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPointCloudRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPointCloudWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPointHandleRepresentation2D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPointHandleRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPointWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolyDataContourLineInterpolator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolyDataPointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolyDataSourceWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolygonalHandleRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolygonalSurfaceContourLineInterpolator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolygonalSurfacePointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolyLineRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkPolyLineWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkProgressBarRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkProgressBarWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkProp3DButtonRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkRectilinearWipeRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkRectilinearWipeWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursor.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursorActor.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursorLineRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursorPicker.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursorPolyDataAlgorithm.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursorRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursorThickLineRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkResliceCursorWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkScalarBarRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkScalarBarWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSeedRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSeedWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSliderRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSliderRepresentation2D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSliderRepresentation3D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSliderWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSphereHandleRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSphereRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSphereWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSphereWidget2.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSplineRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSplineWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkSplineWidget2.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTensorProbeRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTensorProbeWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTensorRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTensorWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTerrainContourLineInterpolator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTerrainDataPointPlacer.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTextRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTexturedButtonRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTexturedButtonRepresentation2D.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkTextWidget.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkWidgetCallbackMapper.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkWidgetEvent.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkWidgetEventTranslator.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkWidgetRepresentation.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkWidgetSet.h"
    "/home/danil/vtk_new/Interaction/Widgets/vtkXYPlotWidget.h"
    "/home/danil/vtk_new/cmake-build-debug/Interaction/Widgets/vtkInteractionWidgetsModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkInteractionWidgets-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkInteractionWidgets-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInteractionWidgets-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInteractionWidgets-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkInteractionWidgets-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-9.2.so")
    endif()
  endif()
endif()

