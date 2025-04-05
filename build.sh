#!/bin/bash

# 清理旧的构建目录
rm -rf build
mkdir -p build
cd build

# 运行CMake生成Makefile
cmake ..

# 编译库
make

echo "编译完成，动态库位于 $(pwd)/libpractice_discon.so" 