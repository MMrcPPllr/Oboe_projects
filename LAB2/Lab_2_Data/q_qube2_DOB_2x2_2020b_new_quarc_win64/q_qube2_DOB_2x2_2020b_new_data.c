/*
 * q_qube2_DOB_2x2_2020b_new_data.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "q_qube2_DOB_2x2_2020b_new".
 *
 * Model version              : 4.2
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Tue May 16 10:13:20 2023
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "q_qube2_DOB_2x2_2020b_new.h"
#include "q_qube2_DOB_2x2_2020b_new_private.h"

/* Block parameters (default storage) */
P_q_qube2_DOB_2x2_2020b_new_T q_qube2_DOB_2x2_2020b_new_P = {
  /* Variable: Festar
   * Referenced by: '<Root>/Discrete State-Space1'
   */
  { 0.02008405284619208, -116.33181549534926, 0.0019798480351382835,
    0.97991594715380792 },

  /* Variable: Gestar
   * Referenced by: '<Root>/Discrete State-Space1'
   */
  { 0.00047528219013481457, 0.47368049165547388, 0.97991594715380792,
    116.33181549534926 },

  /* Variable: KK
   * Referenced by: '<Root>/Gain'
   */
  { 9.4199452707268545, 0.24242263492136137 },

  /* Mask Parameter: HILWriteAnalog_channels
   * Referenced by: '<Root>/HIL Write Analog'
   */
  0U,

  /* Mask Parameter: HILReadAnalog_channels
   * Referenced by: '<Root>/HIL Read Analog'
   */
  0U,

  /* Expression: set_other_outputs_at_terminate
   * Referenced by: '<Root>/HIL Initialize'
   */
  1.0,

  /* Expression: set_other_outputs_at_switch_out
   * Referenced by: '<Root>/HIL Initialize'
   */
  0.0,

  /* Expression: set_other_outputs_at_start
   * Referenced by: '<Root>/HIL Initialize'
   */
  1.0,

  /* Expression: set_other_outputs_at_switch_in
   * Referenced by: '<Root>/HIL Initialize'
   */
  0.0,

  /* Expression: final_analog_outputs
   * Referenced by: '<Root>/HIL Initialize'
   */
  0.0,

  /* Expression: final_other_outputs
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 1.0, 0.0, 0.0 },

  /* Expression: analog_input_maximums
   * Referenced by: '<Root>/HIL Initialize'
   */
  3.0,

  /* Expression: analog_input_minimums
   * Referenced by: '<Root>/HIL Initialize'
   */
  -3.0,

  /* Expression: analog_output_maximums
   * Referenced by: '<Root>/HIL Initialize'
   */
  15.0,

  /* Expression: analog_output_minimums
   * Referenced by: '<Root>/HIL Initialize'
   */
  -15.0,

  /* Expression: initial_analog_outputs
   * Referenced by: '<Root>/HIL Initialize'
   */
  0.0,

  /* Expression: watchdog_analog_outputs
   * Referenced by: '<Root>/HIL Initialize'
   */
  0.0,

  /* Expression: initial_other_outputs
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0.0, 1.0, 0.0 },

  /* Expression: watchdog_other_outputs
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0.0, 0.0, 1.0 },

  /* Expression: 1
   * Referenced by: '<Root>/Step2'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Step2'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<Root>/Step2'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Constant1'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<Root>/1- pseudo misura 2- stima'
   */
  2.0,

  /* Expression: pi/1024
   * Referenced by: '<Root>/Gain1'
   */
  0.0030679615757712823,

  /* Computed Parameter: TransferFcn_A
   * Referenced by: '<Root>/Transfer Fcn'
   */
  -300.0,

  /* Computed Parameter: TransferFcn_C
   * Referenced by: '<Root>/Transfer Fcn'
   */
  -90000.0,

  /* Computed Parameter: TransferFcn_D
   * Referenced by: '<Root>/Transfer Fcn'
   */
  300.0,

  /* Expression: eye(2)
   * Referenced by: '<Root>/Discrete State-Space1'
   */
  { 1.0, 0.0, 0.0, 1.0 },

  /* Expression: [0 0; 0 0]
   * Referenced by: '<Root>/Discrete State-Space1'
   */
  { 0.0, 0.0, 0.0, 0.0 },

  /* Expression: [0 0]'
   * Referenced by: '<Root>/Discrete State-Space1'
   */
  { 0.0, 0.0 },

  /* Expression: 6
   * Referenced by: '<Root>/Saturation1'
   */
  6.0,

  /* Expression: -6
   * Referenced by: '<Root>/Saturation1'
   */
  -6.0,

  /* Expression: 3
   * Referenced by: '<Root>/Step1'
   */
  3.0,

  /* Expression: 0
   * Referenced by: '<Root>/Step1'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<Root>/Step1'
   */
  1.0,

  /* Expression: [0;0]
   * Referenced by: '<Root>/Constant'
   */
  { 0.0, 0.0 },

  /* Expression: 0
   * Referenced by: '<Root>/Constant2'
   */
  0.0,

  /* Computed Parameter: HILInitialize_CKChannels
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_DOWatchdog
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_EIInitial
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILReadEncoderTimebase_Clock
   * Referenced by: '<Root>/HIL Read Encoder Timebase'
   */
  0,

  /* Computed Parameter: HILInitialize_AIChannels
   * Referenced by: '<Root>/HIL Initialize'
   */
  0U,

  /* Computed Parameter: HILInitialize_AOChannels
   * Referenced by: '<Root>/HIL Initialize'
   */
  0U,

  /* Computed Parameter: HILInitialize_DOChannels
   * Referenced by: '<Root>/HIL Initialize'
   */
  0U,

  /* Computed Parameter: HILInitialize_EIChannels
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 0U, 1U },

  /* Computed Parameter: HILInitialize_EIQuadrature
   * Referenced by: '<Root>/HIL Initialize'
   */
  4U,

  /* Computed Parameter: HILInitialize_OOChannels
   * Referenced by: '<Root>/HIL Initialize'
   */
  { 11000U, 11001U, 11002U },

  /* Computed Parameter: HILReadEncoderTimebase_Channels
   * Referenced by: '<Root>/HIL Read Encoder Timebase'
   */
  0U,

  /* Computed Parameter: HILReadEncoderTimebase_SamplesI
   * Referenced by: '<Root>/HIL Read Encoder Timebase'
   */
  500U,

  /* Computed Parameter: HILInitialize_Active
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_AOTerminate
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_AOExit
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_DOTerminate
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_DOExit
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POTerminate
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POExit
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_CKPStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_CKPEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_CKStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_CKEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_AIPStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_AIPEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_AOPStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_AOPEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_AOStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_AOEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_AOReset
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_DOPStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_DOPEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_DOStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_DOEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_DOReset
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_EIPStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_EIPEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_EIStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_EIEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POPStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POPEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POStart
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POEnter
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POReset
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_OOReset
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILInitialize_DOFinal
   * Referenced by: '<Root>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_DOInitial
   * Referenced by: '<Root>/HIL Initialize'
   */
  1,

  /* Computed Parameter: HILReadEncoderTimebase_Active
   * Referenced by: '<Root>/HIL Read Encoder Timebase'
   */
  1,

  /* Computed Parameter: HILWriteAnalog_Active
   * Referenced by: '<Root>/HIL Write Analog'
   */
  0,

  /* Computed Parameter: HILReadAnalog_Active
   * Referenced by: '<Root>/HIL Read Analog'
   */
  1,

  /* Computed Parameter: HILReadEncoderTimebase_Overflow
   * Referenced by: '<Root>/HIL Read Encoder Timebase'
   */
  1U
};
