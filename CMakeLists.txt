cmake_minimum_required(VERSION 3.10)
project(PracticeFortran LANGUAGES Fortran)

# 设置编译选项
set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -fPIC")
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_SHARED_LIBRARY_SUFFIX ".so")

# PRACTICE_DISCON 实现
add_library(practice_discon SHARED 
            PRACTICE_CONTROLLERBLOCKS.f90 
            PRACTICE_DISCON.F90)
set_target_properties(practice_discon PROPERTIES PREFIX "lib")

# 安装规则
install(TARGETS practice_discon DESTINATION lib)

# 添加头文件安装规则
install(FILES ${CMAKE_BINARY_DIR}/practice_controllerblocks.mod DESTINATION include) 