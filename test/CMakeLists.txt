add_library(gtest gtest/src/gtest-all.cpp)
target_include_directories(gtest PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/gtest>)

add_library(gtest_main gtest/src/gtest_main.cpp)
target_include_directories(gtest_main PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/gtest>)

add_library(test_tools src/ref_scalapack_tools.cpp src/tile_matrix_tools.cpp)
target_include_directories(test_tools PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>)

include(dla_test)

add_subdirectory(unit)
add_subdirectory(extra)
