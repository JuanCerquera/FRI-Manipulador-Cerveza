MODULE Module1
        CONST robtarget Target_20:=[[169.031251371,-1292.121107335,325.324677452],[0.498224529,0.498630114,0.501366142,-0.501769189],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[43.020626756,83.516164382,116.037891516],[0.504789368,-0.504388796,0.495572339,0.49516431],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[-76.193592,663.456240796,411.938040376],[0.5,-0.5,-0.5,-0.5],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Home:=[[687.290961,0.000012,574.999989],[0.499999992,0.000000024,0.866025408,-0.000000039],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_2:=[[43.020626756,83.516164382,357.926410182],[0.500772854,-0.500904497,0.499096093,0.499223722],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_2_2:=[[173.020584253,83.411041711,357.926410182],[0.500772854,-0.500904497,0.499096093,0.499223722],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_3:=[[173.020584253,83.411041711,101.037891516],[0.504789368,-0.504388796,0.495572339,0.49516431],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_2_3:=[[303.02054175,83.305919039,357.926410182],[0.500772854,-0.500904497,0.499096093,0.499223722],[-2,-2,1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10_4:=[[303.02054175,83.305919039,86.037891516],[0.504789368,-0.504388796,0.495572339,0.49516431],[-2,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3:=[[299.028644781,-1292.2262279,-89.731114913],[0.498224529,0.498630114,0.501366142,-0.501769189],[1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3_3:=[[39.033857929,-1292.015986738,-88.098144393],[0.498224529,0.498630114,0.501366142,-0.501769189],[0,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3_2:=[[169.031251371,-1292.121107335,-88.914629693],[0.498224529,0.498630114,0.501366142,-0.501769189],[0,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3_3_2:=[[39.661923468,-1292.016494526,94.837636458],[0.498224529,0.498630114,0.501366142,-0.501769189],[0,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3_2_2:=[[169.65931691,-1292.121615123,94.021151158],[0.498224529,0.498630114,0.501366142,-0.501769189],[0,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3_4:=[[299.65671032,-1292.226735688,93.204665938],[0.498224529,0.498630114,0.501366142,-0.501769189],[1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: jecer
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        WHILE TRUE DO
            Path_10;
        ENDWHILE
    ENDPROC
    PROC Path_10()
        WaitDI DI_06,1;
        PulseDO DO_04;
        Cerveza3;
        Cerveza2;
        Cerveza1;
        MoveJ Home,v300,fine,GripperCerveza\WObj:=wobj0;
    ENDPROC
    PROC Cerveza1()
        MoveJ Target_10_2_3,v300,z200,GripperCerveza\WObj:=Estiba;
        MoveL Target_10_4,v100,fine,GripperCerveza\WObj:=Estiba;
        PulseDO DO_06;
        WaitTime 1;
        MoveL Target_10_2_3,v30,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20,v150,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20_3_3_2,v30,z200,GripperCerveza\WObj:=Estiba;
        MoveL Target_20_3_3,v30,fine,GripperCerveza\WObj:=Estiba;
        WaitTime 1;
        PulseDO DO_05;
        WaitTime 1;
        MoveL Target_20_3_3_2,v100,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20,v300,z200,GripperCerveza\WObj:=Estiba;
    ENDPROC
    PROC Cerveza2()
        MoveJ Target_10_2_2,v300,z200,GripperCerveza\WObj:=Estiba;
        MoveL Target_10_3,v100,fine,GripperCerveza\WObj:=Estiba;
        PulseDO DO_06;
        WaitTime 1;
        MoveL Target_10_2_2,v30,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20,v150,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20_3_2_2,v30,z200,GripperCerveza\WObj:=Estiba;
        MoveL Target_20_3_2,v30,fine,GripperCerveza\WObj:=Estiba;
        WaitTime 1;
        PulseDO DO_05;
        WaitTime 1;
        MoveL Target_20_3_2_2,v100,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20,v300,z200,GripperCerveza\WObj:=Estiba;
    ENDPROC
    PROC Cerveza3()
        MoveJ Target_10_2,v300,z200,GripperCerveza\WObj:=Estiba;
        MoveL Target_10,v100,fine,GripperCerveza\WObj:=Estiba;
        PulseDO DO_06;
        WaitTime 1;
        MoveL Target_10_2,v30,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20,v150,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20_3_4,v30,z200,GripperCerveza\WObj:=Estiba;
        MoveL Target_20_3,v30,fine,GripperCerveza\WObj:=Estiba;
        WaitTime 1;
        PulseDO DO_05;
        WaitTime 1;
        MoveL Target_20_3_4,v100,z200,GripperCerveza\WObj:=Estiba;
        MoveJ Target_20,v300,z200,GripperCerveza\WObj:=Estiba;
    ENDPROC
ENDMODULE