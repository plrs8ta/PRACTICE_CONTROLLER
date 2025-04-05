SUBROUTINE PRACTICE_DISCON(State, GeneratorSpeed, GeneratorTorque, PitchAngle) BIND(C, NAME='PRACTICE_DISCON')
    
    USE, INTRINSIC:: ISO_C_BINDING
    USE:: PRACTICE_CONTROLLERBLOCKS  

    IMPLICIT NONE

    INTEGER, INTENT(INOUT):: State
    REAL, INTENT(IN):: GeneratorSpeed
    REAL, INTENT(OUT):: GeneratorTorque
    REAL, INTENT(OUT):: PitchAngle 

    ! PRINT*, "当前状态:", State
    CALL Practice_StateMachine(State, GeneratorSpeed)
    ! PRINT*, "下一时间步状态", State

END SUBROUTINE