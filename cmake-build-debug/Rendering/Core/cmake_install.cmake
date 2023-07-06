# Install script for directory: /home/danil/vtk_new/Rendering/Core

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
    "/home/danil/vtk_new/Rendering/Core/vtkGPUInfoListArray.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPythagoreanQuadruples.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRayCastStructures.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderingCoreEnums.h"
    "/home/danil/vtk_new/Rendering/Core/vtkStateStorage.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/Core/vtkTDxConfigure.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTDxMotionEventInfo.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractHyperTreeGridMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractMapper3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractVolumeMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkActor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkActor2D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkActor2DCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkActorCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAssembly.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAvatar.h"
    "/home/danil/vtk_new/Rendering/Core/vtkBackgroundColorMonitor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkBillboardTextActor3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCamera.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCameraActor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCameraInterpolator.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCellCenterDepthSort.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCellGridMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkColorTransferFunction.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCompositeDataDisplayAttributes.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCompositeDataDisplayAttributesLegacy.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCompositePolyDataMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCompositePolyDataMapperDelegator.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCoordinate.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCuller.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCullerCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkDataSetMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkDiscretizableColorTransferFunction.h"
    "/home/danil/vtk_new/Rendering/Core/vtkDistanceToCamera.h"
    "/home/danil/vtk_new/Rendering/Core/vtkFXAAOptions.h"
    "/home/danil/vtk_new/Rendering/Core/vtkFlagpoleLabel.h"
    "/home/danil/vtk_new/Rendering/Core/vtkFollower.h"
    "/home/danil/vtk_new/Rendering/Core/vtkFrameBufferObjectBase.h"
    "/home/danil/vtk_new/Rendering/Core/vtkFrustumCoverageCuller.h"
    "/home/danil/vtk_new/Rendering/Core/vtkGPUInfo.h"
    "/home/danil/vtk_new/Rendering/Core/vtkGPUInfoList.h"
    "/home/danil/vtk_new/Rendering/Core/vtkGenericVertexAttributeMapping.h"
    "/home/danil/vtk_new/Rendering/Core/vtkGlyph3DMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkGraphMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkGraphToGlyphs.h"
    "/home/danil/vtk_new/Rendering/Core/vtkGraphicsFactory.h"
    "/home/danil/vtk_new/Rendering/Core/vtkHardwarePicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkHardwareSelector.h"
    "/home/danil/vtk_new/Rendering/Core/vtkHardwareWindow.h"
    "/home/danil/vtk_new/Rendering/Core/vtkHierarchicalPolyDataMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkImageActor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkImageMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkImageMapper3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkImageProperty.h"
    "/home/danil/vtk_new/Rendering/Core/vtkImageSlice.h"
    "/home/danil/vtk_new/Rendering/Core/vtkImageSliceMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkInteractorEventRecorder.h"
    "/home/danil/vtk_new/Rendering/Core/vtkInteractorObserver.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLabeledContourMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLight.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLightActor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLightCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLightKit.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLogLookupTable.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLookupTableWithEnabling.h"
    "/home/danil/vtk_new/Rendering/Core/vtkMapArrayValues.h"
    "/home/danil/vtk_new/Rendering/Core/vtkMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkMapper2D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkMapperCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkObserverMediator.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPointGaussianMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPolyDataMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPolyDataMapper2D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkProp.h"
    "/home/danil/vtk_new/Rendering/Core/vtkProp3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkProp3DCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkProp3DFollower.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPropAssembly.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPropCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkProperty.h"
    "/home/danil/vtk_new/Rendering/Core/vtkProperty2D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderPass.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderState.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderTimerLog.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderWindow.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderWindowCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderWindowInteractor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderWindowInteractor3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderer.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRendererCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRendererDelegate.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRendererSource.h"
    "/home/danil/vtk_new/Rendering/Core/vtkResizingWindowToImageFilter.h"
    "/home/danil/vtk_new/Rendering/Core/vtkSelectVisiblePoints.h"
    "/home/danil/vtk_new/Rendering/Core/vtkShaderProperty.h"
    "/home/danil/vtk_new/Rendering/Core/vtkSkybox.h"
    "/home/danil/vtk_new/Rendering/Core/vtkStereoCompositor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTextActor.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTextActor3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTexture.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTexturedActor2D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTransformCoordinateSystems.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTransformInterpolator.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTupleInterpolator.h"
    "/home/danil/vtk_new/Rendering/Core/vtkUniforms.h"
    "/home/danil/vtk_new/Rendering/Core/vtkViewDependentErrorMetric.h"
    "/home/danil/vtk_new/Rendering/Core/vtkViewport.h"
    "/home/danil/vtk_new/Rendering/Core/vtkVisibilitySort.h"
    "/home/danil/vtk_new/Rendering/Core/vtkVolume.h"
    "/home/danil/vtk_new/Rendering/Core/vtkVolumeCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkVolumeProperty.h"
    "/home/danil/vtk_new/Rendering/Core/vtkWindowLevelLookupTable.h"
    "/home/danil/vtk_new/Rendering/Core/vtkWindowToImageFilter.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAssemblyNode.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAssemblyPath.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAssemblyPaths.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAreaPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractPropPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkLODProp3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPropPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPickingManager.h"
    "/home/danil/vtk_new/Rendering/Core/vtkWorldPointPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCellPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkPointPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderedAreaPicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkScenePicker.h"
    "/home/danil/vtk_new/Rendering/Core/vtkInteractorStyle.h"
    "/home/danil/vtk_new/Rendering/Core/vtkInteractorStyle3D.h"
    "/home/danil/vtk_new/Rendering/Core/vtkInteractorStyleSwitchBase.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTDxInteractorStyle.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTDxInteractorStyleCamera.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTDxInteractorStyleSettings.h"
    "/home/danil/vtk_new/Rendering/Core/vtkStringToImage.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTextMapper.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTextProperty.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTextPropertyCollection.h"
    "/home/danil/vtk_new/Rendering/Core/vtkTextRenderer.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractInteractionDevice.h"
    "/home/danil/vtk_new/Rendering/Core/vtkAbstractRenderDevice.h"
    "/home/danil/vtk_new/Rendering/Core/vtkRenderWidget.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/Core/vtkRenderingCoreModule.h"
    "/home/danil/vtk_new/Rendering/Core/vtkNoise200x200.h"
    "/home/danil/vtk_new/Rendering/Core/vtkCIEDE2000.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkRenderingCore-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkRenderingCore-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingCore-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingCore-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingCore-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-9.2.so")
    endif()
  endif()
endif()

