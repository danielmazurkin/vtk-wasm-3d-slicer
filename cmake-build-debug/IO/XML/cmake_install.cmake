# Install script for directory: /home/danil/vtk_new/IO/XML

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
    "/home/danil/vtk_new/IO/XML/vtkRTXMLPolyDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLCompositeDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLCompositeDataWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLDataObjectWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLDataSetWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLFileReadTester.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLGenericDataObjectReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLHierarchicalBoxDataFileConverter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLHierarchicalBoxDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLHierarchicalBoxDataWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLHierarchicalDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLHyperTreeGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLHyperTreeGridWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLImageDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLImageDataWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLMultiBlockDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLMultiBlockDataWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLMultiGroupDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPDataObjectReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPHyperTreeGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPImageDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPPolyDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPRectilinearGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPStructuredDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPStructuredGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPTableReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPUnstructuredDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPUnstructuredGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPartitionedDataSetCollectionReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPartitionedDataSetReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPolyDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLPolyDataWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLRectilinearGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLRectilinearGridWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLStructuredDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLStructuredDataWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLStructuredGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLStructuredGridWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLTableReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLTableWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLUniformGridAMRReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLUniformGridAMRWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLUnstructuredDataReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLUnstructuredDataWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLUnstructuredGridReader.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLUnstructuredGridWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLWriter.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLWriterBase.h"
    "/home/danil/vtk_new/IO/XML/vtkXMLWriterC.h"
    "/home/danil/vtk_new/cmake-build-debug/IO/XML/vtkIOXMLModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkIOXML-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkIOXML-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOXML-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOXML-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkIOXML-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-9.2.so")
    endif()
  endif()
endif()

