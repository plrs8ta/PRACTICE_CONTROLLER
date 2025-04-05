MODULE PRACTICE_CONTROLLERBLOCKS
    
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

END MODULE PRACTICE_CONTROLLERBLOCKS
