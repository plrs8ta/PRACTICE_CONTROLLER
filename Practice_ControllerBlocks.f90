MODULE Practice_ControllerBlocks
    
CONTAINS
    SUBROUTINE Practice_StateMachine(State, GeneratorSpeed)
        
        IMPLICIT NONE

        INTEGER, INTENT(INOUT):: State
        REAL, INTENT(IN):: GeneratorSpeed
        ! REAL, INTENT(OUT):: GeneratorTorque
        ! REAL, INTENT(OUT):: PitchAngle 

        ! 根据状态更新控制输出
        IF (State == 0) THEN
            
            IF ((GeneratorSpeed > 0.0) .AND. (GeneratorSpeed <= 1150.0)) THEN
                State = 1
            ENDIF

        ELSEIF (State == 1) THEN
            IF ((GeneratorSpeed > 1150.0) .AND. (GeneratorSpeed <= 1750.0)) THEN
                State = 2
            ENDIF

        ELSEIF (State == 2) THEN
            IF (GeneratorSpeed > 1750) THEN
            State = 3
            ENDIF
            
        ENDIF

    END SUBROUTINE Practice_StateMachine

    SUBROUTINE Practice_VariableSpeedControl(State, GeneratorSpeed, GeneratorTorque)

        INTEGER, INTENT(IN):: State
        REAL, INTENT(IN):: GeneratorSpeed
        REAL, INTENT(OUT):: GeneratorTorque

        IF (State == 3) THEN
            GeneratorTorque = 10000.1
        END IF

        IF (State == 2) THEN
            GeneratorTorque = 3.14 * GeneratorSpeed * GeneratorSpeed
        END IF

    END SUBROUTINE Practice_VariableSpeedControl

END MODULE Practice_ControllerBlocks
