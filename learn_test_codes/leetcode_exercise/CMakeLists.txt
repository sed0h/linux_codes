cmake_minimum_required(VERSION 3.0.0)
project(s1_cntained_s2 VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(s1_cntained_s2 s1_contained_s2.c)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
