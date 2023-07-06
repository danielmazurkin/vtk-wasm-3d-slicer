# Install script for directory: /home/danil/vtk_new/Common/ExecutionModel

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
    "/home/danil/vtk_new/Common/ExecutionModel/vtkAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkAlgorithmOutput.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkAnnotationLayersAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkArrayDataAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkCachedStreamingDemandDrivenPipeline.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkCastToConcrete.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkCellGridAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkCompositeDataPipeline.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkCompositeDataSetAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkDataObjectAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkDataSetAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkDemandDrivenPipeline.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkDirectedGraphAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkEnsembleSource.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkExecutive.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkExplicitStructuredGridAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkExtentRCBPartitioner.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkExtentSplitter.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkExtentTranslator.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkFilteringInformationKeyManager.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkGraphAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkHierarchicalBoxDataSetAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkHyperTreeGridAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkImageAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkImageInPlaceFilter.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkImageProgressIterator.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkImageToStructuredGrid.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkImageToStructuredPoints.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkInformationDataObjectMetaDataKey.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkInformationExecutivePortKey.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkInformationExecutivePortVectorKey.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkInformationIntegerRequestKey.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkMoleculeAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkMultiBlockDataSetAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkMultiTimeStepAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkParallelReader.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkPartitionedDataSetAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkPartitionedDataSetCollectionAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkPassInputTypeAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkPiecewiseFunctionAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkPiecewiseFunctionShiftScale.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkPointSetAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkPolyDataAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkProgressObserver.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkReaderAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkRectilinearGridAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkSMPProgressObserver.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkScalarTree.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkSelectionAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkSimpleImageToImageFilter.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkSimpleReader.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkSimpleScalarTree.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkSpanSpace.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkSphereTree.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkStreamingDemandDrivenPipeline.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkStructuredGridAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkTableAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkThreadedCompositeDataPipeline.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkThreadedImageAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkTreeAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkTrivialConsumer.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkTrivialProducer.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkUndirectedGraphAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkUniformGridPartitioner.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkUnstructuredGridAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkUnstructuredGridBaseAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkNonOverlappingAMRAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkOverlappingAMRAlgorithm.h"
    "/home/danil/vtk_new/Common/ExecutionModel/vtkUniformGridAMRAlgorithm.h"
    "/home/danil/vtk_new/cmake-build-debug/Common/ExecutionModel/vtkCommonExecutionModelModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/vtk-9.2/hierarchy/VTK" TYPE FILE RENAME "vtkCommonExecutionModel-hierarchy.txt" FILES "/home/danil/vtk_new/cmake-build-debug/lib/vtk-9.2/hierarchy/VTK/vtkCommonExecutionModel-hierarchy.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "\$ORIGIN")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkCommonExecutionModel-9.2.so.9.2"
    "/home/danil/vtk_new/cmake-build-debug/lib/libvtkCommonExecutionModel-9.2.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so.9.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so.1"
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so"
         RPATH "\$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/danil/vtk_new/cmake-build-debug/lib/libvtkCommonExecutionModel-9.2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so"
         OLD_RPATH "\$ORIGIN:"
         NEW_RPATH "\$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-9.2.so")
    endif()
  endif()
endif()

