#!/bin/bash

# 清理旧文件
rm -f *.o *.mod *.so test_practice

# 使用gfortran编译Fortran代码为共享库
gfortran -c -fPIC practice.F90
gfortran -shared -o libpractice.so *.o

# 使用gcc编译C代码并链接到共享库
gcc -o test_practice main.c -L. -lpractice -Wl,-rpath,.

echo "编译完成"
echo "动态库: libpractice.so"
echo "测试程序: test_practice"
echo ""
echo "运行测试程序:"
./test_practice 