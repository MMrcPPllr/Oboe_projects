/*
 * q_qube2_oboe_lqr1_ptc_data.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "q_qube2_oboe_lqr1_ptc".
 *
 * Model version              : 4.12
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Fri Jun  9 16:55:06 2023
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "q_qube2_oboe_lqr1_ptc.h"
#include "q_qube2_oboe_lqr1_ptc_private.h"

/* Block parameters (default storage) */
P_q_qube2_oboe_lqr1_ptc_T q_qube2_oboe_lqr1_ptc_P = {
  /* Variable: Festar
   * Referenced by: '<Root>/Discrete State-Space1'
   */
  { 0.020037162563220079, -116.35177469379623, 0.001979895243769304,
    0.97996283743677992 },

  /* Variable: Gestar
   * Referenced by: '<Root>/Discrete State-Space1'
   */
  { 0.00047528974540651754, 0.47369178636454007, 0.97996283743677992,
    116.35177469379623 },

  /* Variable: KK
   * Referenced by: '<Root>/Gain'
   */
  { 28.237449972220674, 0.447372514694139 },

  /* Variable: d
   * Referenced by: '<Root>/Discrete Filter'
   */
  { 1.0, -1.7546251878005421, 0.78137686218196634 },

  /* Variable: n
   * Referenced by: '<Root>/Discrete Filter'
   */
  { 0.013420970408226049, 0.013330725831214895 },

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
   * Referenced by: '<Root>/Sine Wave1'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Sine Wave1'
   */
  0.0,

  /* Expression: 100
   * Referenced by: '<Root>/Sine Wave1'
   */
  100.0,

  /* Expression: 0
   * Referenced by: '<Root>/Sine Wave1'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Discrete Filter'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Constant1'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<Root>/1- stato vero 2- pseudo misura 3- stima'
   */
  2.0,

  /* Expression: 2*pi/512/4
   * Referenced by: '<Root>/Counts to rad'
   */
  0.0030679615757712823,

  /* Computed Parameter: TransferFcn_A
   * Referenced by: '<Root>/Transfer Fcn'
   */
  -500.0,

  /* Computed Parameter: TransferFcn_C
   * Referenced by: '<Root>/Transfer Fcn'
   */
  -250000.0,

  /* Computed Parameter: TransferFcn_D
   * Referenced by: '<Root>/Transfer Fcn'
   */
  500.0,

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

  /* Expression: 20
   * Referenced by: '<Root>/Saturation1'
   */
  20.0,

  /* Expression: -20
   * Referenced by: '<Root>/Saturation1'
   */
  -20.0,

  /* Expression: 3
   * Referenced by: '<Root>/Step1'
   */
  3.0,

  /* Expression: 0
   * Referenced by: '<Root>/Step1'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Step1'
   */
  0.0,

  /* Expression: 15
   * Referenced by: '<Root>/+//- 10V Limit'
   */
  15.0,

  /* Expression: -15
   * Referenced by: '<Root>/+//- 10V Limit'
   */
  -15.0,

  /* Expression: 0.0
   * Referenced by: '<Root>/Delay1'
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
