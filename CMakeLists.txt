cmake_minimum_required(VERSION 2.8)
project(qwt)


find_package(Qt4 REQUIRED QtCore QtGui QtSvg QtXml)
include(${QT_USE_FILE})
add_definitions(${QT_DEFINITIONS})

add_subdirectory(src)
add_subdirectory(examples)
add_subdirectory(textengines)

SET(SCI_QWT_INCLUDE "${CMAKE_SOURCE_DIR}/src")
SET(SCI_QWT_LIBRARY qwt CACHE INTERNAL "Qwt library" FORCE)

CONFIGURE_FILE("${CMAKE_SOURCE_DIR}/CMake/QwtConfig.cmake.in"
  "${CMAKE_BINARY_DIR}/QwtConfig.cmake" @ONLY IMMEDIATE)
EXPORT(TARGETS ${SCI_QWT_LIBRARY} FILE QwtExports.cmake)
