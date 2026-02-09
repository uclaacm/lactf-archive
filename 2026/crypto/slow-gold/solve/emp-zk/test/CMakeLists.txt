#Testing macro
macro (add_test_executable_with_lib folder _name)
	add_executable(test_${folder}_${_name} "${folder}/${_name}.cpp")
	target_link_libraries(test_${folder}_${_name} ${EMP-OT_LIBRARIES} emp-zk)
endmacro()

macro (add_test_case folder _name)
	add_test_executable_with_lib(${folder} ${_name})
  	add_test(NAME ${folder}_${_name} COMMAND "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/test_${folder}_${_name}" WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/")
endmacro()

macro (add_test_case_with_run folder _name)
	add_test_executable_with_lib(${folder} ${_name})
	add_test(NAME ${folder}_${_name} COMMAND "./run" "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/test_${folder}_${_name}" WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/")

endmacro()

add_test_case_with_run(arith abconversion)
add_test_case_with_run(arith zk_proof)
add_test_case_with_run(arith ostriple)
add_test_case_with_run(arith input_scalability)
add_test_case_with_run(arith circuit_scalability)
add_test_case_with_run(arith polynomial)
add_test_case_with_run(arith inner_prdt)
add_test_case_with_run(arith matrix_mul)
add_test_case_with_run(arith sis)
add_test_case_with_run(arith chall)
add_test_case_with_run(arith client)