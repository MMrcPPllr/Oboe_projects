  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 7;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (q_qube2_oboe_lqr2_rpc_P)
    ;%
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_P.Festar1
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Gestar1
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 9;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.KK
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 15;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_P.HILWriteAnalog_channels
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILReadAnalog_channels
	  section.data(2).logicalSrcIdx = 4;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 39;
      section.data(39)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_P.Constant2_Value
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOTerminate
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 1;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOExit
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 2;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOStart
	  section.data(4).logicalSrcIdx = 8;
	  section.data(4).dtTransOffset = 3;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOEnter
	  section.data(5).logicalSrcIdx = 9;
	  section.data(5).dtTransOffset = 4;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOFinal
	  section.data(6).logicalSrcIdx = 10;
	  section.data(6).dtTransOffset = 5;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOFinal
	  section.data(7).logicalSrcIdx = 11;
	  section.data(7).dtTransOffset = 6;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AIHigh
	  section.data(8).logicalSrcIdx = 12;
	  section.data(8).dtTransOffset = 9;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AILow
	  section.data(9).logicalSrcIdx = 13;
	  section.data(9).dtTransOffset = 10;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOHigh
	  section.data(10).logicalSrcIdx = 14;
	  section.data(10).dtTransOffset = 11;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOLow
	  section.data(11).logicalSrcIdx = 15;
	  section.data(11).dtTransOffset = 12;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOInitial
	  section.data(12).logicalSrcIdx = 16;
	  section.data(12).dtTransOffset = 13;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOWatchdog
	  section.data(13).logicalSrcIdx = 17;
	  section.data(13).dtTransOffset = 14;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOInitial
	  section.data(14).logicalSrcIdx = 18;
	  section.data(14).dtTransOffset = 15;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOWatchdog
	  section.data(15).logicalSrcIdx = 19;
	  section.data(15).dtTransOffset = 18;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Delay_InitialCondition
	  section.data(16).logicalSrcIdx = 20;
	  section.data(16).dtTransOffset = 21;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.DiscreteFilter_NumCoef
	  section.data(17).logicalSrcIdx = 21;
	  section.data(17).dtTransOffset = 22;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.DiscreteFilter_DenCoef
	  section.data(18).logicalSrcIdx = 22;
	  section.data(18).dtTransOffset = 26;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.DiscreteFilter_InitialStates
	  section.data(19).logicalSrcIdx = 23;
	  section.data(19).dtTransOffset = 27;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.SineWave2_Amp
	  section.data(20).logicalSrcIdx = 24;
	  section.data(20).dtTransOffset = 28;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.SineWave2_Bias
	  section.data(21).logicalSrcIdx = 25;
	  section.data(21).dtTransOffset = 29;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.SineWave2_NumSamp
	  section.data(22).logicalSrcIdx = 26;
	  section.data(22).dtTransOffset = 30;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.SineWave2_Offset
	  section.data(23).logicalSrcIdx = 27;
	  section.data(23).dtTransOffset = 31;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.upseudomisura2stima_Value
	  section.data(24).logicalSrcIdx = 28;
	  section.data(24).dtTransOffset = 32;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Countstorad_Gain
	  section.data(25).logicalSrcIdx = 29;
	  section.data(25).dtTransOffset = 33;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.TransferFcn_A
	  section.data(26).logicalSrcIdx = 30;
	  section.data(26).dtTransOffset = 34;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.TransferFcn_C
	  section.data(27).logicalSrcIdx = 31;
	  section.data(27).dtTransOffset = 35;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.TransferFcn_D
	  section.data(28).logicalSrcIdx = 32;
	  section.data(28).dtTransOffset = 36;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.DiscreteStateSpace1_C
	  section.data(29).logicalSrcIdx = 33;
	  section.data(29).dtTransOffset = 37;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.DiscreteStateSpace1_D
	  section.data(30).logicalSrcIdx = 34;
	  section.data(30).dtTransOffset = 46;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.DiscreteStateSpace1_InitialCond
	  section.data(31).logicalSrcIdx = 35;
	  section.data(31).dtTransOffset = 52;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Saturation1_UpperSat
	  section.data(32).logicalSrcIdx = 36;
	  section.data(32).dtTransOffset = 55;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Saturation1_LowerSat
	  section.data(33).logicalSrcIdx = 37;
	  section.data(33).dtTransOffset = 56;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Step1_Time
	  section.data(34).logicalSrcIdx = 38;
	  section.data(34).dtTransOffset = 57;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Step1_Y0
	  section.data(35).logicalSrcIdx = 39;
	  section.data(35).dtTransOffset = 58;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Step1_YFinal
	  section.data(36).logicalSrcIdx = 40;
	  section.data(36).dtTransOffset = 59;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.u0VLimit_UpperSat
	  section.data(37).logicalSrcIdx = 41;
	  section.data(37).dtTransOffset = 60;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.u0VLimit_LowerSat
	  section.data(38).logicalSrcIdx = 42;
	  section.data(38).dtTransOffset = 61;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.Delay2_InitialCondition
	  section.data(39).logicalSrcIdx = 43;
	  section.data(39).dtTransOffset = 62;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_CKChannels
	  section.data(1).logicalSrcIdx = 44;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOWatchdog
	  section.data(2).logicalSrcIdx = 45;
	  section.data(2).dtTransOffset = 1;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_EIInitial
	  section.data(3).logicalSrcIdx = 46;
	  section.data(3).dtTransOffset = 2;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILReadEncoderTimebase_Clock
	  section.data(4).logicalSrcIdx = 47;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AIChannels
	  section.data(1).logicalSrcIdx = 48;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOChannels
	  section.data(2).logicalSrcIdx = 49;
	  section.data(2).dtTransOffset = 1;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOChannels
	  section.data(3).logicalSrcIdx = 50;
	  section.data(3).dtTransOffset = 2;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_EIChannels
	  section.data(4).logicalSrcIdx = 51;
	  section.data(4).dtTransOffset = 3;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_EIQuadrature
	  section.data(5).logicalSrcIdx = 52;
	  section.data(5).dtTransOffset = 5;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOChannels
	  section.data(6).logicalSrcIdx = 53;
	  section.data(6).dtTransOffset = 6;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILReadEncoderTimebase_Channels
	  section.data(7).logicalSrcIdx = 54;
	  section.data(7).dtTransOffset = 9;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILReadEncoderTimebase_SamplesI
	  section.data(8).logicalSrcIdx = 55;
	  section.data(8).dtTransOffset = 10;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 38;
      section.data(38)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_Active
	  section.data(1).logicalSrcIdx = 56;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOTerminate
	  section.data(2).logicalSrcIdx = 57;
	  section.data(2).dtTransOffset = 1;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOExit
	  section.data(3).logicalSrcIdx = 58;
	  section.data(3).dtTransOffset = 2;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOTerminate
	  section.data(4).logicalSrcIdx = 59;
	  section.data(4).dtTransOffset = 3;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOExit
	  section.data(5).logicalSrcIdx = 60;
	  section.data(5).dtTransOffset = 4;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_POTerminate
	  section.data(6).logicalSrcIdx = 61;
	  section.data(6).dtTransOffset = 5;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_POExit
	  section.data(7).logicalSrcIdx = 62;
	  section.data(7).dtTransOffset = 6;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_CKPStart
	  section.data(8).logicalSrcIdx = 63;
	  section.data(8).dtTransOffset = 7;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_CKPEnter
	  section.data(9).logicalSrcIdx = 64;
	  section.data(9).dtTransOffset = 8;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_CKStart
	  section.data(10).logicalSrcIdx = 65;
	  section.data(10).dtTransOffset = 9;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_CKEnter
	  section.data(11).logicalSrcIdx = 66;
	  section.data(11).dtTransOffset = 10;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AIPStart
	  section.data(12).logicalSrcIdx = 67;
	  section.data(12).dtTransOffset = 11;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AIPEnter
	  section.data(13).logicalSrcIdx = 68;
	  section.data(13).dtTransOffset = 12;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOPStart
	  section.data(14).logicalSrcIdx = 69;
	  section.data(14).dtTransOffset = 13;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOPEnter
	  section.data(15).logicalSrcIdx = 70;
	  section.data(15).dtTransOffset = 14;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOStart
	  section.data(16).logicalSrcIdx = 71;
	  section.data(16).dtTransOffset = 15;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOEnter
	  section.data(17).logicalSrcIdx = 72;
	  section.data(17).dtTransOffset = 16;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_AOReset
	  section.data(18).logicalSrcIdx = 73;
	  section.data(18).dtTransOffset = 17;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOPStart
	  section.data(19).logicalSrcIdx = 74;
	  section.data(19).dtTransOffset = 18;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOPEnter
	  section.data(20).logicalSrcIdx = 75;
	  section.data(20).dtTransOffset = 19;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOStart
	  section.data(21).logicalSrcIdx = 76;
	  section.data(21).dtTransOffset = 20;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOEnter
	  section.data(22).logicalSrcIdx = 77;
	  section.data(22).dtTransOffset = 21;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOReset
	  section.data(23).logicalSrcIdx = 78;
	  section.data(23).dtTransOffset = 22;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_EIPStart
	  section.data(24).logicalSrcIdx = 79;
	  section.data(24).dtTransOffset = 23;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_EIPEnter
	  section.data(25).logicalSrcIdx = 80;
	  section.data(25).dtTransOffset = 24;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_EIStart
	  section.data(26).logicalSrcIdx = 81;
	  section.data(26).dtTransOffset = 25;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_EIEnter
	  section.data(27).logicalSrcIdx = 82;
	  section.data(27).dtTransOffset = 26;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_POPStart
	  section.data(28).logicalSrcIdx = 83;
	  section.data(28).dtTransOffset = 27;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_POPEnter
	  section.data(29).logicalSrcIdx = 84;
	  section.data(29).dtTransOffset = 28;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_POStart
	  section.data(30).logicalSrcIdx = 85;
	  section.data(30).dtTransOffset = 29;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_POEnter
	  section.data(31).logicalSrcIdx = 86;
	  section.data(31).dtTransOffset = 30;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_POReset
	  section.data(32).logicalSrcIdx = 87;
	  section.data(32).dtTransOffset = 31;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_OOReset
	  section.data(33).logicalSrcIdx = 88;
	  section.data(33).dtTransOffset = 32;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOFinal
	  section.data(34).logicalSrcIdx = 89;
	  section.data(34).dtTransOffset = 33;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILInitialize_DOInitial
	  section.data(35).logicalSrcIdx = 90;
	  section.data(35).dtTransOffset = 34;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILReadEncoderTimebase_Active
	  section.data(36).logicalSrcIdx = 91;
	  section.data(36).dtTransOffset = 35;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILWriteAnalog_Active
	  section.data(37).logicalSrcIdx = 92;
	  section.data(37).dtTransOffset = 36;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.HILReadAnalog_Active
	  section.data(38).logicalSrcIdx = 93;
	  section.data(38).dtTransOffset = 37;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_P.HILReadEncoderTimebase_Overflow
	  section.data(1).logicalSrcIdx = 94;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_P.ManualSwitch1_CurrentSetting
	  section.data(2).logicalSrcIdx = 95;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 1;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (q_qube2_oboe_lqr2_rpc_B)
    ;%
      section.nData     = 26;
      section.data(26)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_B.HILReadEncoderTimebase
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Delay
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.DiscreteFilter
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.SineWave2
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Countstorad
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.TransferFcn
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.DiscreteStateSpace1
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.MultiportSwitch
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 9;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Add3
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 11;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Add5
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 12;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Gain1
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 13;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Add4
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 14;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Gain2
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 15;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.ingresso
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 16;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.ManualSwitch1
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 17;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.ingressodopocompensazione
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 18;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Saturation1
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 19;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Step1
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 20;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Subtract1
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 21;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.u0VLimit
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 22;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.errore
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 23;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.TmpSignalConversionAtToWorkspac
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 24;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Delay2
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 34;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.Sum2
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 35;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.TmpSignalConversionAtDiscreteSt
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 36;
	
	  ;% q_qube2_oboe_lqr2_rpc_B.HILReadAnalog
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 38;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 6;
    sectIdxOffset = 1;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (q_qube2_oboe_lqr2_rpc_DW)
    ;%
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_DW.Delay_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.DiscreteFilter_states
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 298;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.DiscreteStateSpace1_DSTATE
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 301;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Delay2_DSTATE
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 304;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILInitialize_FilterFrequency
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 306;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.DiscreteFilter_tmp
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 308;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILReadAnalog_Buffer
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 309;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILInitialize_Card
	  section.data(1).logicalSrcIdx = 7;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILReadEncoderTimebase_Task
	  section.data(1).logicalSrcIdx = 8;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 10;
      section.data(10)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILWriteAnalog_PWORK
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Scope_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 1;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Scope1_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 11;
	  section.data(3).dtTransOffset = 2;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Scope2_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 12;
	  section.data(4).dtTransOffset = 3;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Scope3_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 13;
	  section.data(5).dtTransOffset = 4;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Scope4_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 14;
	  section.data(6).dtTransOffset = 5;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Scope5_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 15;
	  section.data(7).dtTransOffset = 6;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.ToWorkspace_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 16;
	  section.data(8).dtTransOffset = 7;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILReadAnalog_PWORK
	  section.data(9).logicalSrcIdx = 17;
	  section.data(9).dtTransOffset = 8;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.Motorcurrent_PWORK.LoggedData
	  section.data(10).logicalSrcIdx = 18;
	  section.data(10).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILInitialize_ClockModes
	  section.data(1).logicalSrcIdx = 19;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILInitialize_DOStates
	  section.data(2).logicalSrcIdx = 20;
	  section.data(2).dtTransOffset = 1;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILInitialize_QuadratureModes
	  section.data(3).logicalSrcIdx = 21;
	  section.data(3).dtTransOffset = 2;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILInitialize_InitialEICounts
	  section.data(4).logicalSrcIdx = 22;
	  section.data(4).dtTransOffset = 4;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.HILReadEncoderTimebase_Buffer
	  section.data(5).logicalSrcIdx = 23;
	  section.data(5).dtTransOffset = 6;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.counter
	  section.data(6).logicalSrcIdx = 24;
	  section.data(6).dtTransOffset = 7;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% q_qube2_oboe_lqr2_rpc_DW.CircBufIdx
	  section.data(1).logicalSrcIdx = 25;
	  section.data(1).dtTransOffset = 0;
	
	  ;% q_qube2_oboe_lqr2_rpc_DW.CircBufIdx_l
	  section.data(2).logicalSrcIdx = 26;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 3593066747;
  targMap.checksum1 = 3259198591;
  targMap.checksum2 = 4078844587;
  targMap.checksum3 = 2792133291;

