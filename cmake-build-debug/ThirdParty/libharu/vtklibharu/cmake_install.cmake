# Install script for directory: /home/danil/vtk_new/ThirdParty/libharu/vtklibharu

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/danil/vtk_new/cmake-build-debug/ThirdParty/libharu/vtklibharu/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtklibharu/include" TYPE FILE FILES
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_types.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_consts.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_version.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_annotation.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_catalog.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_conf.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_destination.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_doc.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_encoder.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_encrypt.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_encryptdict.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_error.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_ext_gstate.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_font.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_fontdef.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_gstate.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_image.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_info.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_list.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_mmgr.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_objects.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_outline.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_pages.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_page_label.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_streams.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_u3d.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_utils.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_pdfa.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_3dmeasure.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_exdata.h"
    "/home/danil/vtk_new/ThirdParty/libharu/vtklibharu/include/vtk_haru_mangle.h"
    "/home/danil/vtk_new/cmake-build-debug/ThirdParty/libharu/vtklibharu/include/hpdf_config.h"
    )
endif()

