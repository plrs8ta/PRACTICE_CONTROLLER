SUBROUTINE PRACTICE_DISCON(State, GeneratorSpeed, GeneratorTorque, PitchAngle) BIND(C, NAME='PRACTICE_DISCON')
    
    USE, INTRINSIC:: ISO_C_BINDING
    USE:: Practice_ControllerBlocks  

    IMPLICIT NONE

    INTEGER, INTENT(INOUT):: State
    REAL, INTENT(IN):: GeneratorSpeed
    REAL, INTENT(OUT):: GeneratorTorque
    REAL, INTENT(OUT):: PitchAngle 

    CALL Practice_StateMachine(State, GeneratorSpeed)
    CALL Practice_VariableSpeedControl(State, GeneratorSpeed, GeneratorTorque)
    
END SUBROUTINE