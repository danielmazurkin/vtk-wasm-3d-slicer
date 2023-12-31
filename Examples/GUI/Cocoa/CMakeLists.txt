#--////////////////////////////////////////////////////////////////////////////
#--  Copyright (c) 2010-2019, Michael A. Jackson. BlueQuartz Software
#--  All rights reserved.
#--  BSD License: https://www.opensource.org/licenses/bsd-license.html
#--////////////////////////////////////////////////////////////////////////////
cmake_minimum_required(VERSION 3.8...3.12 FATAL_ERROR)

project(SimpleCocoaVTK)

if(NOT VTK_BINARY_DIR)
  find_package(VTK COMPONENTS
    RenderingOpenGL2 
    InteractionStyle 
    RenderingFreeType 
    FiltersSources 
    RenderingGL2PSOpenGL2
  )
  if(NOT VTK_DIR)
    message(FATAL_ERROR "Please set VTK_DIR.")
  endif()
endif()

# This is needed in case we are building this project separate from the VTK build
if (NOT EXECUTABLE_OUTPUT_PATH)
  set (EXECUTABLE_OUTPUT_PATH ${SimpleCocoaVTK_BINARY_DIR})
endif()

# The source files - Note because the files have both C++ and Objective-C in them
# the file extension is .mm
set (SimpleCocoaVTK_SRCS
  ${SimpleCocoaVTK_SOURCE_DIR}/main.mm
  ${SimpleCocoaVTK_SOURCE_DIR}/BasicVTKView.mm
  ${SimpleCocoaVTK_SOURCE_DIR}/CustomLayer.mm
  ${SimpleCocoaVTK_SOURCE_DIR}/CustomView.mm
  ${SimpleCocoaVTK_SOURCE_DIR}/MyDocument.mm
  ${SimpleCocoaVTK_SOURCE_DIR}/MyWindowController.mm
)

# Build all Objective-C as ARC.
set_source_files_properties(main.mm
                            BasicVTKView.mm
                            CustomLayer.mm
                            CustomView.mm
                            MyDocument.mm
                            MyWindowController.mm
                            PROPERTIES COMPILE_FLAGS "-fobjc-arc")

# The Headers
set (SimpleCocoaVTK_HDRS
  ${SimpleCocoaVTK_SOURCE_DIR}/BasicVTKView.h
  ${SimpleCocoaVTK_SOURCE_DIR}/CustomLayer.h
  ${SimpleCocoaVTK_SOURCE_DIR}/CustomView.h
  ${SimpleCocoaVTK_SOURCE_DIR}/MyDocument.h
  ${SimpleCocoaVTK_SOURCE_DIR}/MyWindowController.h
)

# these are the OS X Interface Builder Files
set (SimpleCocoaVTK_XIBS
  MainMenu
  MyWindow
)

# Set the OS X Bundle specific CMake variables which will be used to populate the plist for
# the application bundle
set(MACOSX_BUNDLE_GUI_IDENTIFIER "org.vtk.SimpleCocoaVTK")
set(MACOSX_BUNDLE_BUNDLE_NAME ${PROJECT_NAME})

# These variables are specific to our plist and are NOT standard CMake variables
set(MACOSX_BUNDLE_NSMAIN_NIB_FILE "MainMenu")
set(MACOSX_BUNDLE_NSPRINCIPAL_CLASS "NSApplication")

# Add our Executable
add_executable(SimpleCocoaVTK MACOSX_BUNDLE ${SimpleCocoaVTK_SRCS} ${SimpleCocoaVTK_HDRS})

# Probably a better way to set the framework link libraries.
target_link_libraries(SimpleCocoaVTK "-framework Cocoa -framework OpenGL -framework QuartzCore"
                      ${VTK_LIBRARIES})

# Set a custom plist file for the app bundle
set_target_properties(SimpleCocoaVTK PROPERTIES MACOSX_BUNDLE_INFO_PLIST ${SimpleCocoaVTK_SOURCE_DIR}/Info-CMake.plist)

# Make sure we can find the 'ibtool' program. If we can NOT find it we
# skip generation of this project
find_program(IBTOOL ibtool HINTS "/usr/bin" "${OSX_DEVELOPER_ROOT}/usr/bin")
if (${IBTOOL} STREQUAL "IBTOOL-NOTFOUND")
  message(SEND_ERROR "ibtool can not be found and is needed to compile the .xib files. It should have been installed with the Apple developer tools. The default system paths were searched in addition to ${OSX_DEVELOPER_ROOT}/usr/bin")
endif()

# Make sure the 'Resources' Directory is correctly created before we build
add_custom_command (TARGET SimpleCocoaVTK PRE_BUILD
                      COMMAND mkdir -p ${EXECUTABLE_OUTPUT_PATH}/\${CONFIGURATION}/SimpleCocoaVTK.app/Contents/Resources)

# Compile the .xib files using the 'ibtool' program with the destination being the app package
foreach(xib ${SimpleCocoaVTK_XIBS})
  add_custom_command (TARGET SimpleCocoaVTK POST_BUILD
                      COMMAND ${IBTOOL} --errors --warnings --notices --output-format human-readable-text --compile ${EXECUTABLE_OUTPUT_PATH}/\${CONFIGURATION}/SimpleCocoaVTK.app/Contents/Resources/${xib}.nib ${SimpleCocoaVTK_SOURCE_DIR}/${xib}.xib
                      COMMENT "Compiling ${SimpleCocoaVTK_SOURCE_DIR}/${xib}.xib")

endforeach()

vtk_module_autoinit(
  TARGETS SimpleCocoaVTK
  MODULES ${VTK_LIBRARIES}
)
