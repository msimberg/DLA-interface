# Usage: add_test(test_name [MPIRANKS <np>] [SRC <file.cpp>] [DEFS <defs>][LIBS <libs>])
# If SRC is not specified  ${test_name}.cpp is used.
# DEFS are the extra definitions needed to compile the test.
# If MPIRANKS is defined the test is linked with the MPI library and runned with
# ${TEST_RUNNER} ${RUNNER_NP_OPT} ${np} <exe>
function(add_miniapp name)
  cmake_parse_arguments("arg" "" "SRC" "DEFS;LIBS" ${ARGN} )

  if(DEFINED arg_SRC)
    set(source ${arg_SRC})
  else()
    set(source ${name}.cpp)
  endif()

  add_executable(${name} ${source})
  target_include_directories(${name} PUBLIC $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/test/include>)
  if(DEFINED arg_DEFS)
    target_compile_definitions(${name} PRIVATE ${arg_DEFS})
  endif()
  target_link_libraries(${name} gtest dla_interface ${arg_LIBS})

endfunction()
