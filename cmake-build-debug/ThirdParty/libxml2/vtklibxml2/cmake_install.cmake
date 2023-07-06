# Install script for directory: /home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtklibxml2/include/libxml" TYPE FILE FILES
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/c14n.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/catalog.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/chvalid.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/debugXML.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/dict.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/encoding.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/entities.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/globals.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/hash.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLparser.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLtree.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/list.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/nanoftp.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/nanohttp.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/parser.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/parserInternals.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/pattern.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/relaxng.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX2.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/schemasInternals.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/schematron.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/threads.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/tree.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/uri.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/valid.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/vtk_libxml2_mangle.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xinclude.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xlink.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlIO.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlautomata.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlerror.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlexports.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmemory.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmodule.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlreader.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlregexp.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlsave.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemas.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemastypes.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlstring.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlunicode.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlwriter.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xpath.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xpathInternals.h"
    "/home/danil/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xpointer.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtklibxml2-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtklibxml2-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtklibxml2-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtklibxml2-9.2.so")
    endif()
  endif()
endif()

