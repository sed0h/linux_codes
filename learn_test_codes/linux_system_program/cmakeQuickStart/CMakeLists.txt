cmake_minimum_required(VERSION 3.0.0)
project(cmake_test VERSION 0.1.0)

include(CTest)
enable_testing()

include_directories(../)
link_directories(../)

add_executable(cmake_test main.cpp file1.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
