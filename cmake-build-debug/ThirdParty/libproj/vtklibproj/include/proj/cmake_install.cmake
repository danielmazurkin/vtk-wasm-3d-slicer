# Install script for directory: /home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtklibproj/include/proj" TYPE FILE FILES
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/util.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/metadata.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/common.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/crs.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/datum.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/coordinatesystem.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/coordinateoperation.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/io.hpp"
    "/home/danil/vtk_new/ThirdParty/libproj/vtklibproj/include/proj/nn.hpp"
    )
endif()

