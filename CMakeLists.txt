cmake_minimum_required(VERSION 2.8)
project(qwt)

find_package(Qt4 REQUIRED QtCore QtGui QtSvg QtXml)
include(${QT_USE_FILE})
add_definitions(${QT_DEFINITIONS})

OPTION(BUILD_SHARED_LIBS "Build shared libraries" ON)
MARK_AS_ADVANCED(BUILD_SHARED_LIBS)

add_subdirectory(src)
add_subdirectory(textengines)

OPTION(BUILD_EXAMPLES "Build examples" OFF)
MARK_AS_ADVANCED(BUILD_EXAMPLES)
IF (BUILD_EXAMPLES)
  add_subdirectory(examples)
ENDIF()

SET(SCI_QWT_INCLUDE "${CMAKE_SOURCE_DIR}/src")
SET(SCI_QWT_LIBRARY qwt CACHE INTERNAL "Qwt library" FORCE)

set(SCI_QWT_LIBRARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/src)
set(QWT_USE_FILE "${CMAKE_CURRENT_SOURCE_DIR}/UseQwt.cmake")

CONFIGURE_FILE("${CMAKE_SOURCE_DIR}/CMake/QwtConfig.cmake.in"
  "${CMAKE_BINARY_DIR}/QwtConfig.cmake" @ONLY IMMEDIATE)
EXPORT(TARGETS ${SCI_QWT_LIBRARY} FILE QwtExports.cmake)
