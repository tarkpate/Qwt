#if(NOT LodePng_FOUND)
#  MESSAGE(FATAL_ERROR "Including UseLodePng.cmake but the LODEPNG package was not found.")
#endif()

include_directories(${SCI_QWT_INCLUDE})
link_directories(${SCI_QWT_LIBRARY_DIR})
