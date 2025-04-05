#!/bin/bash

# 确保build目录存在
if [ ! -d "build" ]; then
    echo "错误: 构建目录不存在，请先运行 build.sh"
    exit 1
fi

# 进入build目录
cd build

# 编译main.c并链接到libpractice_discon.so
gcc -o test_practice_discon ../main.c -L. -lpractice_discon -Wl,-rpath,.

# 检查编译是否成功
if [ $? -ne 0 ]; then
    echo "错误: 编译main.c失败"
    exit 1
fi

echo "编译成功，运行程序："
# 运行程序
./test_practice_discon 