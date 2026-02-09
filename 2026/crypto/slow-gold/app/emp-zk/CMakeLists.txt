cmake_minimum_required (VERSION 3.0...4.1.2)
project (emp-zk)
set(NAME "emp-zk")

find_path(CMAKE_FOLDER NAMES cmake/emp-tool-config.cmake)
include(${CMAKE_FOLDER}/cmake/emp-base.cmake)

find_package(emp-ot REQUIRED)
include_directories(${EMP-OT_INCLUDE_DIRS})
set(sources
  emp-zk/emp-zk-bool/emp-zk-bool.cpp
  emp-zk/emp-zk-arith/emp-zk-arith.cpp
)
add_library(${NAME} SHARED ${sources})

install(DIRECTORY emp-zk DESTINATION include/)
install(FILES cmake/emp-zk-config.cmake DESTINATION cmake/)
install(TARGETS ${NAME} DESTINATION lib)

ENABLE_TESTING()
ADD_SUBDIRECTORY(test)
