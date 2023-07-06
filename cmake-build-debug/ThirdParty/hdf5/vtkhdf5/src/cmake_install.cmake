# Install script for directory: /home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtkhdf5/src" TYPE FILE FILES
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/hdf5.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5api_adpt.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5public.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/vtk_hdf5_mangle.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Apublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5ACpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Cpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Dpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Epublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5ESdevelop.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5ESpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Fpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDcore.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDdevelop.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDdirect.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDfamily.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDhdfs.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDlog.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDmirror.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDmpi.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDmpio.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDmulti.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDros3.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDs3comms.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDsec2.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDsplitter.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDstdio.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5FDwindows.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Gpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Idevelop.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Ipublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Ldevelop.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Lpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Mpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5MMpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Opublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Ppublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5PLextern.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5PLpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Rpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Spublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Tdevelop.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Tpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5TSdevelop.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5VLconnector.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5VLconnector_passthru.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5VLnative.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5VLpassthru.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5VLpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Zdevelop.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Zpublic.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Edefin.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Einit.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Epubgen.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5Eterm.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5version.h"
    "/home/danil/vtk_new/ThirdParty/hdf5/vtkhdf5/src/H5overflow.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkhdf5-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkhdf5-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkhdf5-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkhdf5-9.2.so")
    endif()
  endif()
endif()

