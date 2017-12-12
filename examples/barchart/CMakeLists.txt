set(barchart_HDRS
  barchart.h
)

set(barchart_SRCS
  main.cpp
  barchart.cpp
)

qt4_wrap_cpp(barchart_MOC_HDRS ${barchart_HDRS})

add_executable(barchart ${barchart_MOC_HDRS} ${barchart_SRCS})
target_link_libraries(barchart qwt)
