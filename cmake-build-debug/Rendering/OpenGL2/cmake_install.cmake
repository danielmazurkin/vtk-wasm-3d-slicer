# Install script for directory: /home/danil/vtk_new/Rendering/OpenGL2

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
    "/home/danil/vtk_new/cmake-build-debug/Rendering/OpenGL2/vtkOpenGLError.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/OpenGL2/vtkRenderingOpenGLConfigure.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/OpenGL2/vtkTextureObjectVS.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkCameraPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkClearRGBPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkClearZPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkCompositePolyDataMapper2.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkDataTransferHelper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkDefaultPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkDepthImageProcessingPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkDepthOfFieldPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkDepthPeelingPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkDualDepthPeelingPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkEDLShading.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkEquirectangularToCubeMapTexture.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkFramebufferPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkGaussianBlurPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkGenericOpenGLRenderWindow.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkHiddenLineRemovalPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkImageProcessingPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkLightingMapPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkLightsPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpaquePass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLActor.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLBatchedPolyDataMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLBillboardTextActor3D.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLBufferObject.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLCamera.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLCellToVTKCellMap.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLCompositePolyDataMapperDelegator.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLFXAAFilter.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLFXAAPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLFluidMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLFramebufferObject.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLGL2PSHelper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLGlyph3DHelper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLGlyph3DMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLHardwareSelector.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLHelper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLHyperTreeGridMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLImageAlgorithmHelper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLImageMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLImageSliceMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLIndexBufferObject.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLInstanceCulling.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLLabeledContourMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLLight.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLPointGaussianMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLPolyDataMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLPolyDataMapper2D.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLProperty.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLQuadHelper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderTimer.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderTimerLog.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderUtilities.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderWindow.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderer.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLShaderCache.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLShaderProperty.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLSkybox.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLSphereMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLState.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLStickMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLTextActor.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLTextActor3D.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLTextMapper.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLTexture.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLUniforms.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexArrayObject.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexBufferObject.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectCache.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectGroup.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOrderIndependentTranslucentPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOutlineGlowPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkOverlayPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkPBRIrradianceTexture.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkPBRLUTTexture.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkPBRPrefilterTexture.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkPanoramicProjectionPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkPixelBufferObject.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkPointFillPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkRenderPassCollection.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkRenderStepsPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkRenderbuffer.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkSSAAPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkSSAOPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkSequencePass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkShader.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkShaderProgram.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkShadowMapBakerPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkShadowMapPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkSimpleMotionBlurPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkSobelGradientMagnitudePass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkTextureObject.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkTextureUnitManager.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkToneMappingPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkTransformFeedback.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkTranslucentPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkValuePass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkVolumetricPass.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkDummyGPUInfoList.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkXOpenGLRenderWindow.h"
    "/home/danil/vtk_new/cmake-build-debug/Rendering/OpenGL2/vtkRenderingOpenGL2Module.h"
    "/home/danil/vtk_new/Rendering/OpenGL2/vtkCompositeMapperHelper2.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkRenderingOpenGL2-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkRenderingOpenGL2-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingOpenGL2-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingOpenGL2-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkRenderingOpenGL2-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL2-9.2.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/vtkProbeOpenGLVersion-9.2" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/vtkProbeOpenGLVersion-9.2")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/vtkProbeOpenGLVersion-9.2"
         RPATH "\$ORIGIN/../lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/danil/vtk_new/cmake-build-debug/bin/vtkProbeOpenGLVersion-9.2")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/vtkProbeOpenGLVersion-9.2" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/vtkProbeOpenGLVersion-9.2")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/vtkProbeOpenGLVersion-9.2"
         OLD_RPATH "\$ORIGIN/../lib:"
         NEW_RPATH "\$ORIGIN/../lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/vtkProbeOpenGLVersion-9.2")
    endif()
  endif()
endif()

