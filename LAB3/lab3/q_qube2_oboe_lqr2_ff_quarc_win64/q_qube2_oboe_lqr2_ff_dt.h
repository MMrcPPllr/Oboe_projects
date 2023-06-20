/*
 * q_qube2_oboe_lqr2_ff_dt.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "q_qube2_oboe_lqr2_ff".
 *
 * Model version              : 4.13
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Sat Jun 10 22:55:16 2023
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ext_types.h"

/* data type size table */
static uint_T rtDataTypeSizes[] = {
  sizeof(real_T),
  sizeof(real32_T),
  sizeof(int8_T),
  sizeof(uint8_T),
  sizeof(int16_T),
  sizeof(uint16_T),
  sizeof(int32_T),
  sizeof(uint32_T),
  sizeof(boolean_T),
  sizeof(fcn_call_T),
  sizeof(int_T),
  sizeof(pointer_T),
  sizeof(action_T),
  2*sizeof(uint32_T),
  sizeof(t_card),
  sizeof(t_task)
};

/* data type name table */
static const char_T * rtDataTypeNames[] = {
  "real_T",
  "real32_T",
  "int8_T",
  "uint8_T",
  "int16_T",
  "uint16_T",
  "int32_T",
  "uint32_T",
  "boolean_T",
  "fcn_call_T",
  "int_T",
  "pointer_T",
  "action_T",
  "timer_uint32_pair_T",
  "t_card",
  "t_task"
};

/* data type transitions for block I/O structure */
static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&q_qube2_oboe_lqr2_ff_B.HILReadEncoderTimebase), 0, 0, 44 }
  ,

  { (char_T *)(&q_qube2_oboe_lqr2_ff_DW.DiscreteStateSpace1_DSTATE[0]), 0, 0, 6
  },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_DW.HILInitialize_Card), 14, 0, 1 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_DW.HILReadEncoderTimebase_Task), 15, 0, 1 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_DW.FromWorkspace2_PWORK.TimePtr), 11, 0, 13
  },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_DW.HILInitialize_ClockModes), 6, 0, 7 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_DW.FromWorkspace2_IWORK.PrevIndex), 10, 0,
    3 }
};

/* data type transition table for block I/O structure */
static DataTypeTransitionTable rtBTransTable = {
  7U,
  rtBTransitions
};

/* data type transitions for Parameters structure */
static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&q_qube2_oboe_lqr2_ff_P.Festar1[0]), 0, 0, 21 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_P.HILWriteAnalog_channels), 7, 0, 2 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_P.Constant2_Value), 0, 0, 51 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_P.HILInitialize_CKChannels), 6, 0, 4 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_P.HILInitialize_AIChannels), 7, 0, 11 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_P.HILInitialize_Active), 8, 0, 38 },

  { (char_T *)(&q_qube2_oboe_lqr2_ff_P.HILReadEncoderTimebase_Overflow), 3, 0, 2
  }
};

/* data type transition table for Parameters structure */
static DataTypeTransitionTable rtPTransTable = {
  7U,
  rtPTransitions
};

/* [EOF] q_qube2_oboe_lqr2_ff_dt.h */
