cmake_minimum_required(VERSION 3.0.0)
project(test_countprime VERSION 0.1.0)

include(CTest)
enable_testing()

include_directories(swap/)

# add_executable(test_swap swap_a_b.cpp swap/swap.cpp)
add_executable(test_countprime count_prime.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
