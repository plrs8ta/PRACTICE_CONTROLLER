#include <stdio.h>
#include <stdlib.h>

// 声明Fortran子程序 - 使用BIND(C, NAME='PRACTICE_DISCON')时，C中使用指定的名称
extern void PRACTICE_DISCON(int* State, float* GeneratorSpeed, float* GeneratorTorque, float* PitchAngle);

int main() {
    int State = 2;
    float GeneratorSpeed = 1200.0;
    float GeneratorTorque = 0.0;
    float PitchAngle = 0.0;
    
    printf("当前时刻状态：%d\n", State);
    printf("初始转速: %.2f\n", GeneratorSpeed);
    printf("初始转矩: %.2f\n", GeneratorTorque);
    
    // 调用Fortran子程序
    PRACTICE_DISCON(&State, &GeneratorSpeed, &GeneratorTorque, &PitchAngle);
    
    printf("下一时刻状态：%d，转矩: %.2f, 桨距角: %.2f\n", State, GeneratorTorque, PitchAngle);
    
    return 0;
} 