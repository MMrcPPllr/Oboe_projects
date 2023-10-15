/*
 * q_qube2_oboe_sin2.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "q_qube2_oboe_sin2".
 *
 * Model version              : 4.6
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Fri Jun  9 15:24:42 2023
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "q_qube2_oboe_sin2.h"
#include "q_qube2_oboe_sin2_private.h"
#include "q_qube2_oboe_sin2_dt.h"

/* Block signals (default storage) */
B_q_qube2_oboe_sin2_T q_qube2_oboe_sin2_B;

/* Continuous states */
X_q_qube2_oboe_sin2_T q_qube2_oboe_sin2_X;

/* Block states (default storage) */
DW_q_qube2_oboe_sin2_T q_qube2_oboe_sin2_DW;

/* Real-time model */
static RT_MODEL_q_qube2_oboe_sin2_T q_qube2_oboe_sin2_M_;
RT_MODEL_q_qube2_oboe_sin2_T *const q_qube2_oboe_sin2_M = &q_qube2_oboe_sin2_M_;

/*
 * This function updates continuous states using the ODE1 fixed-step
 * solver algorithm
 */
static void rt_ertODEUpdateContinuousStates(RTWSolverInfo *si )
{
  time_T tnew = rtsiGetSolverStopTime(si);
  time_T h = rtsiGetStepSize(si);
  real_T *x = rtsiGetContStates(si);
  ODE1_IntgData *id = (ODE1_IntgData *)rtsiGetSolverData(si);
  real_T *f0 = id->f[0];
  int_T i;
  int_T nXc = 1;
  rtsiSetSimTimeStep(si,MINOR_TIME_STEP);
  rtsiSetdX(si, f0);
  q_qube2_oboe_sin2_derivatives();
  rtsiSetT(si, tnew);
  for (i = 0; i < nXc; ++i) {
    x[i] += h * f0[i];
  }

  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

/* Model output function */
void q_qube2_oboe_sin2_output(void)
{
  real_T u0;
  real_T u1;
  real_T u2;
  int_T iy;
  if (rtmIsMajorTimeStep(q_qube2_oboe_sin2_M)) {
    /* set solver stop time */
    if (!(q_qube2_oboe_sin2_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(&q_qube2_oboe_sin2_M->solverInfo,
                            ((q_qube2_oboe_sin2_M->Timing.clockTickH0 + 1) *
        q_qube2_oboe_sin2_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(&q_qube2_oboe_sin2_M->solverInfo,
                            ((q_qube2_oboe_sin2_M->Timing.clockTick0 + 1) *
        q_qube2_oboe_sin2_M->Timing.stepSize0 +
        q_qube2_oboe_sin2_M->Timing.clockTickH0 *
        q_qube2_oboe_sin2_M->Timing.stepSize0 * 4294967296.0));
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(q_qube2_oboe_sin2_M)) {
    q_qube2_oboe_sin2_M->Timing.t[0] = rtsiGetT(&q_qube2_oboe_sin2_M->solverInfo);
  }

  if (rtmIsMajorTimeStep(q_qube2_oboe_sin2_M)) {
    /* S-Function (hil_read_encoder_timebase_block): '<Root>/HIL Read Encoder Timebase' */

    /* S-Function Block: q_qube2_oboe_sin2/HIL Read Encoder Timebase (hil_read_encoder_timebase_block) */
    {
      t_error result;
      result = hil_task_read_encoder
        (q_qube2_oboe_sin2_DW.HILReadEncoderTimebase_Task, 1,
         &q_qube2_oboe_sin2_DW.HILReadEncoderTimebase_Buffer);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
      } else {
        q_qube2_oboe_sin2_B.HILReadEncoderTimebase =
          q_qube2_oboe_sin2_DW.HILReadEncoderTimebase_Buffer;
      }
    }

    /* Sin: '<Root>/Sine Wave' */
    q_qube2_oboe_sin2_B.riferimento_theta = sin(((real_T)
      q_qube2_oboe_sin2_DW.counter + q_qube2_oboe_sin2_P.SineWave_Offset) * 2.0 *
      3.1415926535897931 / q_qube2_oboe_sin2_P.SineWave_NumSamp) *
      q_qube2_oboe_sin2_P.SineWave_Amp + q_qube2_oboe_sin2_P.SineWave_Bias;

    /* Sin: '<Root>/Sine Wave1' */
    q_qube2_oboe_sin2_B.riferimento_theta_dot = sin(((real_T)
      q_qube2_oboe_sin2_DW.counter_g + q_qube2_oboe_sin2_P.SineWave1_Offset) *
      2.0 * 3.1415926535897931 / q_qube2_oboe_sin2_P.SineWave1_NumSamp) *
      q_qube2_oboe_sin2_P.SineWave1_Amp + q_qube2_oboe_sin2_P.SineWave1_Bias;

    /* Gain: '<Root>/Counts to rad' */
    q_qube2_oboe_sin2_B.uscita = q_qube2_oboe_sin2_P.Countstorad_Gain *
      q_qube2_oboe_sin2_B.HILReadEncoderTimebase;

    /* DiscreteStateSpace: '<Root>/Discrete State-Space1' */
    for (iy = 0; iy < 3; iy++) {
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[iy] = 0.0;
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[iy] +=
        q_qube2_oboe_sin2_P.DiscreteStateSpace1_C[iy] *
        q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[0];
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[iy] +=
        q_qube2_oboe_sin2_P.DiscreteStateSpace1_C[iy + 3] *
        q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[1];
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[iy] +=
        q_qube2_oboe_sin2_P.DiscreteStateSpace1_C[iy + 6] *
        q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[2];
    }

    /* End of DiscreteStateSpace: '<Root>/Discrete State-Space1' */
  }

  /* TransferFcn: '<Root>/Transfer Fcn' */
  q_qube2_oboe_sin2_B.TransferFcn = 0.0;
  q_qube2_oboe_sin2_B.TransferFcn += q_qube2_oboe_sin2_P.TransferFcn_C *
    q_qube2_oboe_sin2_X.TransferFcn_CSTATE;
  q_qube2_oboe_sin2_B.TransferFcn += q_qube2_oboe_sin2_P.TransferFcn_D *
    q_qube2_oboe_sin2_B.uscita;

  /* MultiPortSwitch: '<Root>/Multiport Switch' incorporates:
   *  Constant: '<Root>/1- stato vero 2- pseudo misura 3- stima'
   */
  if ((int32_T)q_qube2_oboe_sin2_P.ustatovero2pseudomisura3stima_V == 1) {
    /* MultiPortSwitch: '<Root>/Multiport Switch' */
    q_qube2_oboe_sin2_B.MultiportSwitch[0] = q_qube2_oboe_sin2_B.uscita;
    q_qube2_oboe_sin2_B.MultiportSwitch[1] = q_qube2_oboe_sin2_B.TransferFcn;
  } else {
    /* MultiPortSwitch: '<Root>/Multiport Switch' */
    q_qube2_oboe_sin2_B.MultiportSwitch[0] =
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[0];
    q_qube2_oboe_sin2_B.MultiportSwitch[1] =
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[1];
  }

  /* End of MultiPortSwitch: '<Root>/Multiport Switch' */

  /* Sum: '<Root>/Subtract' */
  q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[0] =
    q_qube2_oboe_sin2_B.riferimento_theta - q_qube2_oboe_sin2_B.MultiportSwitch
    [0];
  q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[1] =
    q_qube2_oboe_sin2_B.riferimento_theta_dot -
    q_qube2_oboe_sin2_B.MultiportSwitch[1];

  /* Gain: '<Root>/Gain' */
  u0 = q_qube2_oboe_sin2_P.KK[0] *
    q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[0];
  u0 += q_qube2_oboe_sin2_P.KK[1] *
    q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[1];

  /* Gain: '<Root>/Gain' */
  q_qube2_oboe_sin2_B.comando_u_primadicompensazione = u0;
  if (rtmIsMajorTimeStep(q_qube2_oboe_sin2_M)) {
    /* ManualSwitch: '<Root>/Manual Switch1' */
    if (q_qube2_oboe_sin2_P.ManualSwitch1_CurrentSetting == 1) {
      /* ManualSwitch: '<Root>/Manual Switch1' */
      q_qube2_oboe_sin2_B.valore_x3_stima_per_conferma =
        q_qube2_oboe_sin2_B.stato_stimato_con_x3[2];
    } else {
      /* ManualSwitch: '<Root>/Manual Switch1' incorporates:
       *  Constant: '<Root>/Constant2'
       */
      q_qube2_oboe_sin2_B.valore_x3_stima_per_conferma =
        q_qube2_oboe_sin2_P.Constant2_Value;
    }

    /* End of ManualSwitch: '<Root>/Manual Switch1' */
  }

  /* Sum: '<Root>/Subtract2' */
  q_qube2_oboe_sin2_B.comado_u_dopocompensazione =
    q_qube2_oboe_sin2_B.comando_u_primadicompensazione +
    q_qube2_oboe_sin2_B.valore_x3_stima_per_conferma;

  /* Saturate: '<Root>/Saturation1' */
  u0 = q_qube2_oboe_sin2_B.comado_u_dopocompensazione;
  u1 = q_qube2_oboe_sin2_P.Saturation1_LowerSat;
  u2 = q_qube2_oboe_sin2_P.Saturation1_UpperSat;
  if (u0 > u2) {
    /* Saturate: '<Root>/Saturation1' */
    q_qube2_oboe_sin2_B.Saturation1 = u2;
  } else if (u0 < u1) {
    /* Saturate: '<Root>/Saturation1' */
    q_qube2_oboe_sin2_B.Saturation1 = u1;
  } else {
    /* Saturate: '<Root>/Saturation1' */
    q_qube2_oboe_sin2_B.Saturation1 = u0;
  }

  /* End of Saturate: '<Root>/Saturation1' */

  /* Step: '<Root>/Step1' */
  u0 = q_qube2_oboe_sin2_M->Timing.t[0];
  if (u0 < q_qube2_oboe_sin2_P.Step1_Time) {
    /* Step: '<Root>/Step1' */
    q_qube2_oboe_sin2_B.Step1 = q_qube2_oboe_sin2_P.Step1_Y0;
  } else {
    /* Step: '<Root>/Step1' */
    q_qube2_oboe_sin2_B.Step1 = q_qube2_oboe_sin2_P.Step1_YFinal;
  }

  /* End of Step: '<Root>/Step1' */

  /* Sum: '<Root>/Subtract1' */
  q_qube2_oboe_sin2_B.Subtract1 = q_qube2_oboe_sin2_B.Saturation1 -
    q_qube2_oboe_sin2_B.Step1;

  /* Saturate: '<Root>/+//- 10V Limit' */
  u0 = q_qube2_oboe_sin2_B.Subtract1;
  u1 = q_qube2_oboe_sin2_P.u0VLimit_LowerSat;
  u2 = q_qube2_oboe_sin2_P.u0VLimit_UpperSat;
  if (u0 > u2) {
    /* Saturate: '<Root>/+//- 10V Limit' */
    q_qube2_oboe_sin2_B.u0VLimit = u2;
  } else if (u0 < u1) {
    /* Saturate: '<Root>/+//- 10V Limit' */
    q_qube2_oboe_sin2_B.u0VLimit = u1;
  } else {
    /* Saturate: '<Root>/+//- 10V Limit' */
    q_qube2_oboe_sin2_B.u0VLimit = u0;
  }

  /* End of Saturate: '<Root>/+//- 10V Limit' */
  if (rtmIsMajorTimeStep(q_qube2_oboe_sin2_M)) {
    /* S-Function (hil_write_analog_block): '<Root>/HIL Write Analog' */

    /* S-Function Block: q_qube2_oboe_sin2/HIL Write Analog (hil_write_analog_block) */
    {
      t_error result;
      result = hil_write_analog(q_qube2_oboe_sin2_DW.HILInitialize_Card,
        &q_qube2_oboe_sin2_P.HILWriteAnalog_channels, 1,
        &q_qube2_oboe_sin2_B.u0VLimit);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
      }
    }

    /* Sum: '<Root>/Subtract3' */
    q_qube2_oboe_sin2_B.errore_rif_encoder =
      q_qube2_oboe_sin2_B.riferimento_theta - q_qube2_oboe_sin2_B.uscita;

    /* SignalConversion generated from: '<Root>/To Workspace' */
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[0] =
      q_qube2_oboe_sin2_B.uscita;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[1] =
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[0];
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[2] =
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[1];
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[3] =
      q_qube2_oboe_sin2_B.stato_stimato_con_x3[2];
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[4] =
      q_qube2_oboe_sin2_B.uscita;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[5] =
      q_qube2_oboe_sin2_B.TransferFcn;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[6] =
      q_qube2_oboe_sin2_B.riferimento_theta;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[7] =
      q_qube2_oboe_sin2_B.riferimento_theta_dot;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[8] =
      q_qube2_oboe_sin2_B.comando_u_primadicompensazione;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[9] =
      q_qube2_oboe_sin2_B.comado_u_dopocompensazione;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[10] =
      q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[0];
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[11] =
      q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[1];
    q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[12] =
      q_qube2_oboe_sin2_B.errore_rif_encoder;

    /* SignalConversion generated from: '<Root>/Discrete State-Space1' */
    q_qube2_oboe_sin2_B.TmpSignalConversionAtDiscreteSt[0] =
      q_qube2_oboe_sin2_B.Saturation1;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtDiscreteSt[1] =
      q_qube2_oboe_sin2_B.uscita;

    /* S-Function (hil_read_analog_block): '<Root>/HIL Read Analog' */

    /* S-Function Block: q_qube2_oboe_sin2/HIL Read Analog (hil_read_analog_block) */
    {
      t_error result = hil_read_analog(q_qube2_oboe_sin2_DW.HILInitialize_Card,
        &q_qube2_oboe_sin2_P.HILReadAnalog_channels, 1,
        &q_qube2_oboe_sin2_DW.HILReadAnalog_Buffer);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
      }

      q_qube2_oboe_sin2_B.HILReadAnalog =
        q_qube2_oboe_sin2_DW.HILReadAnalog_Buffer;
    }
  }
}

/* Model update function */
void q_qube2_oboe_sin2_update(void)
{
  real_T xnew[3];
  real_T xnew_0;
  int_T i;
  if (rtmIsMajorTimeStep(q_qube2_oboe_sin2_M)) {
    /* Update for Sin: '<Root>/Sine Wave' */
    q_qube2_oboe_sin2_DW.counter++;
    if (q_qube2_oboe_sin2_DW.counter == q_qube2_oboe_sin2_P.SineWave_NumSamp) {
      q_qube2_oboe_sin2_DW.counter = 0;
    }

    /* End of Update for Sin: '<Root>/Sine Wave' */

    /* Update for Sin: '<Root>/Sine Wave1' */
    q_qube2_oboe_sin2_DW.counter_g++;
    if (q_qube2_oboe_sin2_DW.counter_g == q_qube2_oboe_sin2_P.SineWave1_NumSamp)
    {
      q_qube2_oboe_sin2_DW.counter_g = 0;
    }

    /* End of Update for Sin: '<Root>/Sine Wave1' */

    /* Update for DiscreteStateSpace: '<Root>/Discrete State-Space1' */
    for (i = 0; i < 3; i++) {
      xnew_0 = q_qube2_oboe_sin2_P.Festar1[i] *
        q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[0];
      xnew_0 += q_qube2_oboe_sin2_P.Festar1[i + 3] *
        q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[1];
      xnew_0 += q_qube2_oboe_sin2_P.Festar1[i + 6] *
        q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[2];
      xnew_0 += q_qube2_oboe_sin2_P.Gestar1[i] *
        q_qube2_oboe_sin2_B.TmpSignalConversionAtDiscreteSt[0];
      xnew_0 += q_qube2_oboe_sin2_P.Gestar1[i + 3] *
        q_qube2_oboe_sin2_B.TmpSignalConversionAtDiscreteSt[1];
      xnew[i] = xnew_0;
    }

    q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[0] = xnew[0];
    q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[1] = xnew[1];
    q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[2] = xnew[2];

    /* End of Update for DiscreteStateSpace: '<Root>/Discrete State-Space1' */
  }

  if (rtmIsMajorTimeStep(q_qube2_oboe_sin2_M)) {
    rt_ertODEUpdateContinuousStates(&q_qube2_oboe_sin2_M->solverInfo);
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++q_qube2_oboe_sin2_M->Timing.clockTick0)) {
    ++q_qube2_oboe_sin2_M->Timing.clockTickH0;
  }

  q_qube2_oboe_sin2_M->Timing.t[0] = rtsiGetSolverStopTime
    (&q_qube2_oboe_sin2_M->solverInfo);

  {
    /* Update absolute timer for sample time: [0.002s, 0.0s] */
    /* The "clockTick1" counts the number of times the code of this task has
     * been executed. The absolute time is the multiplication of "clockTick1"
     * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
     * overflow during the application lifespan selected.
     * Timer of this task consists of two 32 bit unsigned integers.
     * The two integers represent the low bits Timing.clockTick1 and the high bits
     * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
     */
    if (!(++q_qube2_oboe_sin2_M->Timing.clockTick1)) {
      ++q_qube2_oboe_sin2_M->Timing.clockTickH1;
    }

    q_qube2_oboe_sin2_M->Timing.t[1] = q_qube2_oboe_sin2_M->Timing.clockTick1 *
      q_qube2_oboe_sin2_M->Timing.stepSize1 +
      q_qube2_oboe_sin2_M->Timing.clockTickH1 *
      q_qube2_oboe_sin2_M->Timing.stepSize1 * 4294967296.0;
  }
}

/* Derivatives for root system: '<Root>' */
void q_qube2_oboe_sin2_derivatives(void)
{
  XDot_q_qube2_oboe_sin2_T *_rtXdot;
  _rtXdot = ((XDot_q_qube2_oboe_sin2_T *) q_qube2_oboe_sin2_M->derivs);

  /* Derivatives for TransferFcn: '<Root>/Transfer Fcn' */
  _rtXdot->TransferFcn_CSTATE = 0.0;
  _rtXdot->TransferFcn_CSTATE += q_qube2_oboe_sin2_P.TransferFcn_A *
    q_qube2_oboe_sin2_X.TransferFcn_CSTATE;
  _rtXdot->TransferFcn_CSTATE += q_qube2_oboe_sin2_B.uscita;
}

/* Model initialize function */
void q_qube2_oboe_sin2_initialize(void)
{
  /* Start for S-Function (hil_initialize_block): '<Root>/HIL Initialize' */

  /* S-Function Block: q_qube2_oboe_sin2/HIL Initialize (hil_initialize_block) */
  {
    t_int result;
    t_boolean is_switching;
    result = hil_open("qube_servo2_usb", "0",
                      &q_qube2_oboe_sin2_DW.HILInitialize_Card);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
      return;
    }

    is_switching = false;
    result = hil_watchdog_clear(q_qube2_oboe_sin2_DW.HILInitialize_Card);
    if (result < 0 && result != -QERR_HIL_WATCHDOG_CLEAR) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
      return;
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_AIPStart && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_AIPEnter && is_switching)) {
      result = hil_set_analog_input_ranges
        (q_qube2_oboe_sin2_DW.HILInitialize_Card,
         &q_qube2_oboe_sin2_P.HILInitialize_AIChannels, 1U,
         &q_qube2_oboe_sin2_P.HILInitialize_AILow,
         &q_qube2_oboe_sin2_P.HILInitialize_AIHigh);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_AOPStart && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_AOPEnter && is_switching)) {
      result = hil_set_analog_output_ranges
        (q_qube2_oboe_sin2_DW.HILInitialize_Card,
         &q_qube2_oboe_sin2_P.HILInitialize_AOChannels, 1U,
         &q_qube2_oboe_sin2_P.HILInitialize_AOLow,
         &q_qube2_oboe_sin2_P.HILInitialize_AOHigh);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_AOStart && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_AOEnter && is_switching)) {
      result = hil_write_analog(q_qube2_oboe_sin2_DW.HILInitialize_Card,
        &q_qube2_oboe_sin2_P.HILInitialize_AOChannels, 1U,
        &q_qube2_oboe_sin2_P.HILInitialize_AOInitial);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if (q_qube2_oboe_sin2_P.HILInitialize_AOReset) {
      result = hil_watchdog_set_analog_expiration_state
        (q_qube2_oboe_sin2_DW.HILInitialize_Card,
         &q_qube2_oboe_sin2_P.HILInitialize_AOChannels, 1U,
         &q_qube2_oboe_sin2_P.HILInitialize_AOWatchdog);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    result = hil_set_digital_directions(q_qube2_oboe_sin2_DW.HILInitialize_Card,
      NULL, 0U, &q_qube2_oboe_sin2_P.HILInitialize_DOChannels, 1U);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
      return;
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_DOStart && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_DOEnter && is_switching)) {
      result = hil_write_digital(q_qube2_oboe_sin2_DW.HILInitialize_Card,
        &q_qube2_oboe_sin2_P.HILInitialize_DOChannels, 1U, (t_boolean *)
        &q_qube2_oboe_sin2_P.HILInitialize_DOInitial);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if (q_qube2_oboe_sin2_P.HILInitialize_DOReset) {
      result = hil_watchdog_set_digital_expiration_state
        (q_qube2_oboe_sin2_DW.HILInitialize_Card,
         &q_qube2_oboe_sin2_P.HILInitialize_DOChannels, 1U, (const
          t_digital_state *) &q_qube2_oboe_sin2_P.HILInitialize_DOWatchdog);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_EIPStart && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_EIPEnter && is_switching)) {
      q_qube2_oboe_sin2_DW.HILInitialize_QuadratureModes[0] =
        q_qube2_oboe_sin2_P.HILInitialize_EIQuadrature;
      q_qube2_oboe_sin2_DW.HILInitialize_QuadratureModes[1] =
        q_qube2_oboe_sin2_P.HILInitialize_EIQuadrature;
      result = hil_set_encoder_quadrature_mode
        (q_qube2_oboe_sin2_DW.HILInitialize_Card,
         q_qube2_oboe_sin2_P.HILInitialize_EIChannels, 2U,
         (t_encoder_quadrature_mode *)
         &q_qube2_oboe_sin2_DW.HILInitialize_QuadratureModes[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_EIStart && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_EIEnter && is_switching)) {
      q_qube2_oboe_sin2_DW.HILInitialize_InitialEICounts[0] =
        q_qube2_oboe_sin2_P.HILInitialize_EIInitial;
      q_qube2_oboe_sin2_DW.HILInitialize_InitialEICounts[1] =
        q_qube2_oboe_sin2_P.HILInitialize_EIInitial;
      result = hil_set_encoder_counts(q_qube2_oboe_sin2_DW.HILInitialize_Card,
        q_qube2_oboe_sin2_P.HILInitialize_EIChannels, 2U,
        &q_qube2_oboe_sin2_DW.HILInitialize_InitialEICounts[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_OOStart && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_OOEnter && is_switching)) {
      result = hil_write_other(q_qube2_oboe_sin2_DW.HILInitialize_Card,
        q_qube2_oboe_sin2_P.HILInitialize_OOChannels, 3U,
        q_qube2_oboe_sin2_P.HILInitialize_OOInitial);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }

    if (q_qube2_oboe_sin2_P.HILInitialize_OOReset) {
      result = hil_watchdog_set_other_expiration_state
        (q_qube2_oboe_sin2_DW.HILInitialize_Card,
         q_qube2_oboe_sin2_P.HILInitialize_OOChannels, 3U,
         q_qube2_oboe_sin2_P.HILInitialize_OOWatchdog);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        return;
      }
    }
  }

  /* Start for S-Function (hil_read_encoder_timebase_block): '<Root>/HIL Read Encoder Timebase' */

  /* S-Function Block: q_qube2_oboe_sin2/HIL Read Encoder Timebase (hil_read_encoder_timebase_block) */
  {
    t_error result;
    result = hil_task_create_encoder_reader
      (q_qube2_oboe_sin2_DW.HILInitialize_Card,
       q_qube2_oboe_sin2_P.HILReadEncoderTimebase_SamplesI,
       &q_qube2_oboe_sin2_P.HILReadEncoderTimebase_Channels, 1,
       &q_qube2_oboe_sin2_DW.HILReadEncoderTimebase_Task);
    if (result >= 0) {
      result = hil_task_set_buffer_overflow_mode
        (q_qube2_oboe_sin2_DW.HILReadEncoderTimebase_Task,
         (t_buffer_overflow_mode)
         (q_qube2_oboe_sin2_P.HILReadEncoderTimebase_Overflow - 1));
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
    }
  }

  /* InitializeConditions for Sin: '<Root>/Sine Wave' */
  q_qube2_oboe_sin2_DW.counter = 0;

  /* InitializeConditions for Sin: '<Root>/Sine Wave1' */
  q_qube2_oboe_sin2_DW.counter_g = 0;

  /* InitializeConditions for TransferFcn: '<Root>/Transfer Fcn' */
  q_qube2_oboe_sin2_X.TransferFcn_CSTATE = 0.0;

  /* InitializeConditions for DiscreteStateSpace: '<Root>/Discrete State-Space1' */
  q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[0] =
    q_qube2_oboe_sin2_P.DiscreteStateSpace1_InitialCond[0];
  q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[1] =
    q_qube2_oboe_sin2_P.DiscreteStateSpace1_InitialCond[1];
  q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[2] =
    q_qube2_oboe_sin2_P.DiscreteStateSpace1_InitialCond[2];
}

/* Model terminate function */
void q_qube2_oboe_sin2_terminate(void)
{
  /* Terminate for S-Function (hil_initialize_block): '<Root>/HIL Initialize' */

  /* S-Function Block: q_qube2_oboe_sin2/HIL Initialize (hil_initialize_block) */
  {
    t_boolean is_switching;
    t_int result;
    t_uint32 num_final_analog_outputs = 0;
    t_uint32 num_final_digital_outputs = 0;
    t_uint32 num_final_other_outputs = 0;
    hil_task_stop_all(q_qube2_oboe_sin2_DW.HILInitialize_Card);
    hil_monitor_stop_all(q_qube2_oboe_sin2_DW.HILInitialize_Card);
    is_switching = false;
    if ((q_qube2_oboe_sin2_P.HILInitialize_AOTerminate && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_AOExit && is_switching)) {
      num_final_analog_outputs = 1U;
    } else {
      num_final_analog_outputs = 0;
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_DOTerminate && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_DOExit && is_switching)) {
      num_final_digital_outputs = 1U;
    } else {
      num_final_digital_outputs = 0;
    }

    if ((q_qube2_oboe_sin2_P.HILInitialize_OOTerminate && !is_switching) ||
        (q_qube2_oboe_sin2_P.HILInitialize_OOExit && is_switching)) {
      num_final_other_outputs = 3U;
    } else {
      num_final_other_outputs = 0;
    }

    if (0
        || num_final_analog_outputs > 0
        || num_final_digital_outputs > 0
        || num_final_other_outputs > 0
        ) {
      /* Attempt to write the final outputs atomically (due to firmware issue in old Q2-USB). Otherwise write channels individually */
      result = hil_write(q_qube2_oboe_sin2_DW.HILInitialize_Card
                         , &q_qube2_oboe_sin2_P.HILInitialize_AOChannels,
                         num_final_analog_outputs
                         , NULL, 0
                         , &q_qube2_oboe_sin2_P.HILInitialize_DOChannels,
                         num_final_digital_outputs
                         , q_qube2_oboe_sin2_P.HILInitialize_OOChannels,
                         num_final_other_outputs
                         , &q_qube2_oboe_sin2_P.HILInitialize_AOFinal
                         , NULL
                         , (t_boolean *)
                         &q_qube2_oboe_sin2_P.HILInitialize_DOFinal
                         , q_qube2_oboe_sin2_P.HILInitialize_OOFinal
                         );
      if (result == -QERR_HIL_WRITE_NOT_SUPPORTED) {
        t_error local_result;
        result = 0;

        /* The hil_write operation is not supported by this card. Write final outputs for each channel type */
        if (num_final_analog_outputs > 0) {
          local_result = hil_write_analog
            (q_qube2_oboe_sin2_DW.HILInitialize_Card,
             &q_qube2_oboe_sin2_P.HILInitialize_AOChannels,
             num_final_analog_outputs,
             &q_qube2_oboe_sin2_P.HILInitialize_AOFinal);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (num_final_digital_outputs > 0) {
          local_result = hil_write_digital
            (q_qube2_oboe_sin2_DW.HILInitialize_Card,
             &q_qube2_oboe_sin2_P.HILInitialize_DOChannels,
             num_final_digital_outputs, (t_boolean *)
             &q_qube2_oboe_sin2_P.HILInitialize_DOFinal);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (num_final_other_outputs > 0) {
          local_result = hil_write_other(q_qube2_oboe_sin2_DW.HILInitialize_Card,
            q_qube2_oboe_sin2_P.HILInitialize_OOChannels,
            num_final_other_outputs, q_qube2_oboe_sin2_P.HILInitialize_OOFinal);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(q_qube2_oboe_sin2_M, _rt_error_message);
        }
      }
    }

    hil_task_delete_all(q_qube2_oboe_sin2_DW.HILInitialize_Card);
    hil_monitor_delete_all(q_qube2_oboe_sin2_DW.HILInitialize_Card);
    hil_close(q_qube2_oboe_sin2_DW.HILInitialize_Card);
    q_qube2_oboe_sin2_DW.HILInitialize_Card = NULL;
  }
}

/*========================================================================*
 * Start of Classic call interface                                        *
 *========================================================================*/

/* Solver interface called by GRT_Main */
#ifndef USE_GENERATED_SOLVER

void rt_ODECreateIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEDestroyIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEUpdateContinuousStates(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

#endif

void MdlOutputs(int_T tid)
{
  q_qube2_oboe_sin2_output();
  UNUSED_PARAMETER(tid);
}

void MdlUpdate(int_T tid)
{
  q_qube2_oboe_sin2_update();
  UNUSED_PARAMETER(tid);
}

void MdlInitializeSizes(void)
{
}

void MdlInitializeSampleTimes(void)
{
}

void MdlInitialize(void)
{
}

void MdlStart(void)
{
  q_qube2_oboe_sin2_initialize();
}

void MdlTerminate(void)
{
  q_qube2_oboe_sin2_terminate();
}

/* Registration function */
RT_MODEL_q_qube2_oboe_sin2_T *q_qube2_oboe_sin2(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)q_qube2_oboe_sin2_M, 0,
                sizeof(RT_MODEL_q_qube2_oboe_sin2_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&q_qube2_oboe_sin2_M->solverInfo,
                          &q_qube2_oboe_sin2_M->Timing.simTimeStep);
    rtsiSetTPtr(&q_qube2_oboe_sin2_M->solverInfo, &rtmGetTPtr
                (q_qube2_oboe_sin2_M));
    rtsiSetStepSizePtr(&q_qube2_oboe_sin2_M->solverInfo,
                       &q_qube2_oboe_sin2_M->Timing.stepSize0);
    rtsiSetdXPtr(&q_qube2_oboe_sin2_M->solverInfo, &q_qube2_oboe_sin2_M->derivs);
    rtsiSetContStatesPtr(&q_qube2_oboe_sin2_M->solverInfo, (real_T **)
                         &q_qube2_oboe_sin2_M->contStates);
    rtsiSetNumContStatesPtr(&q_qube2_oboe_sin2_M->solverInfo,
      &q_qube2_oboe_sin2_M->Sizes.numContStates);
    rtsiSetNumPeriodicContStatesPtr(&q_qube2_oboe_sin2_M->solverInfo,
      &q_qube2_oboe_sin2_M->Sizes.numPeriodicContStates);
    rtsiSetPeriodicContStateIndicesPtr(&q_qube2_oboe_sin2_M->solverInfo,
      &q_qube2_oboe_sin2_M->periodicContStateIndices);
    rtsiSetPeriodicContStateRangesPtr(&q_qube2_oboe_sin2_M->solverInfo,
      &q_qube2_oboe_sin2_M->periodicContStateRanges);
    rtsiSetErrorStatusPtr(&q_qube2_oboe_sin2_M->solverInfo, (&rtmGetErrorStatus
      (q_qube2_oboe_sin2_M)));
    rtsiSetRTModelPtr(&q_qube2_oboe_sin2_M->solverInfo, q_qube2_oboe_sin2_M);
  }

  rtsiSetSimTimeStep(&q_qube2_oboe_sin2_M->solverInfo, MAJOR_TIME_STEP);
  q_qube2_oboe_sin2_M->intgData.f[0] = q_qube2_oboe_sin2_M->odeF[0];
  q_qube2_oboe_sin2_M->contStates = ((real_T *) &q_qube2_oboe_sin2_X);
  rtsiSetSolverData(&q_qube2_oboe_sin2_M->solverInfo, (void *)
                    &q_qube2_oboe_sin2_M->intgData);
  rtsiSetSolverName(&q_qube2_oboe_sin2_M->solverInfo,"ode1");

  /* Initialize timing info */
  {
    int_T *mdlTsMap = q_qube2_oboe_sin2_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    mdlTsMap[1] = 1;
    q_qube2_oboe_sin2_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    q_qube2_oboe_sin2_M->Timing.sampleTimes =
      (&q_qube2_oboe_sin2_M->Timing.sampleTimesArray[0]);
    q_qube2_oboe_sin2_M->Timing.offsetTimes =
      (&q_qube2_oboe_sin2_M->Timing.offsetTimesArray[0]);

    /* task periods */
    q_qube2_oboe_sin2_M->Timing.sampleTimes[0] = (0.0);
    q_qube2_oboe_sin2_M->Timing.sampleTimes[1] = (0.002);

    /* task offsets */
    q_qube2_oboe_sin2_M->Timing.offsetTimes[0] = (0.0);
    q_qube2_oboe_sin2_M->Timing.offsetTimes[1] = (0.0);
  }

  rtmSetTPtr(q_qube2_oboe_sin2_M, &q_qube2_oboe_sin2_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = q_qube2_oboe_sin2_M->Timing.sampleHitArray;
    mdlSampleHits[0] = 1;
    mdlSampleHits[1] = 1;
    q_qube2_oboe_sin2_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(q_qube2_oboe_sin2_M, 10.0);
  q_qube2_oboe_sin2_M->Timing.stepSize0 = 0.002;
  q_qube2_oboe_sin2_M->Timing.stepSize1 = 0.002;

  /* External mode info */
  q_qube2_oboe_sin2_M->Sizes.checksums[0] = (1170352384U);
  q_qube2_oboe_sin2_M->Sizes.checksums[1] = (3127305450U);
  q_qube2_oboe_sin2_M->Sizes.checksums[2] = (390268145U);
  q_qube2_oboe_sin2_M->Sizes.checksums[3] = (2301272996U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[2];
    q_qube2_oboe_sin2_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(q_qube2_oboe_sin2_M->extModeInfo,
      &q_qube2_oboe_sin2_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(q_qube2_oboe_sin2_M->extModeInfo,
                        q_qube2_oboe_sin2_M->Sizes.checksums);
    rteiSetTPtr(q_qube2_oboe_sin2_M->extModeInfo, rtmGetTPtr(q_qube2_oboe_sin2_M));
  }

  q_qube2_oboe_sin2_M->solverInfoPtr = (&q_qube2_oboe_sin2_M->solverInfo);
  q_qube2_oboe_sin2_M->Timing.stepSize = (0.002);
  rtsiSetFixedStepSize(&q_qube2_oboe_sin2_M->solverInfo, 0.002);
  rtsiSetSolverMode(&q_qube2_oboe_sin2_M->solverInfo, SOLVER_MODE_SINGLETASKING);

  /* block I/O */
  q_qube2_oboe_sin2_M->blockIO = ((void *) &q_qube2_oboe_sin2_B);

  {
    int32_T i;
    for (i = 0; i < 13; i++) {
      q_qube2_oboe_sin2_B.TmpSignalConversionAtToWorkspac[i] = 0.0;
    }

    q_qube2_oboe_sin2_B.HILReadEncoderTimebase = 0.0;
    q_qube2_oboe_sin2_B.riferimento_theta = 0.0;
    q_qube2_oboe_sin2_B.riferimento_theta_dot = 0.0;
    q_qube2_oboe_sin2_B.uscita = 0.0;
    q_qube2_oboe_sin2_B.TransferFcn = 0.0;
    q_qube2_oboe_sin2_B.stato_stimato_con_x3[0] = 0.0;
    q_qube2_oboe_sin2_B.stato_stimato_con_x3[1] = 0.0;
    q_qube2_oboe_sin2_B.stato_stimato_con_x3[2] = 0.0;
    q_qube2_oboe_sin2_B.MultiportSwitch[0] = 0.0;
    q_qube2_oboe_sin2_B.MultiportSwitch[1] = 0.0;
    q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[0] = 0.0;
    q_qube2_oboe_sin2_B.errore_inseguimento_rif_stima[1] = 0.0;
    q_qube2_oboe_sin2_B.comando_u_primadicompensazione = 0.0;
    q_qube2_oboe_sin2_B.valore_x3_stima_per_conferma = 0.0;
    q_qube2_oboe_sin2_B.comado_u_dopocompensazione = 0.0;
    q_qube2_oboe_sin2_B.Saturation1 = 0.0;
    q_qube2_oboe_sin2_B.Step1 = 0.0;
    q_qube2_oboe_sin2_B.Subtract1 = 0.0;
    q_qube2_oboe_sin2_B.u0VLimit = 0.0;
    q_qube2_oboe_sin2_B.errore_rif_encoder = 0.0;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtDiscreteSt[0] = 0.0;
    q_qube2_oboe_sin2_B.TmpSignalConversionAtDiscreteSt[1] = 0.0;
    q_qube2_oboe_sin2_B.HILReadAnalog = 0.0;
  }

  /* parameters */
  q_qube2_oboe_sin2_M->defaultParam = ((real_T *)&q_qube2_oboe_sin2_P);

  /* states (continuous) */
  {
    real_T *x = (real_T *) &q_qube2_oboe_sin2_X;
    q_qube2_oboe_sin2_M->contStates = (x);
    (void) memset((void *)&q_qube2_oboe_sin2_X, 0,
                  sizeof(X_q_qube2_oboe_sin2_T));
  }

  /* states (dwork) */
  q_qube2_oboe_sin2_M->dwork = ((void *) &q_qube2_oboe_sin2_DW);
  (void) memset((void *)&q_qube2_oboe_sin2_DW, 0,
                sizeof(DW_q_qube2_oboe_sin2_T));
  q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[0] = 0.0;
  q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[1] = 0.0;
  q_qube2_oboe_sin2_DW.DiscreteStateSpace1_DSTATE[2] = 0.0;
  q_qube2_oboe_sin2_DW.HILInitialize_FilterFrequency[0] = 0.0;
  q_qube2_oboe_sin2_DW.HILInitialize_FilterFrequency[1] = 0.0;
  q_qube2_oboe_sin2_DW.HILReadAnalog_Buffer = 0.0;

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    q_qube2_oboe_sin2_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 16;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.BTransTable = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.PTransTable = &rtPTransTable;
  }

  /* Initialize Sizes */
  q_qube2_oboe_sin2_M->Sizes.numContStates = (1);/* Number of continuous states */
  q_qube2_oboe_sin2_M->Sizes.numPeriodicContStates = (0);
                                      /* Number of periodic continuous states */
  q_qube2_oboe_sin2_M->Sizes.numY = (0);/* Number of model outputs */
  q_qube2_oboe_sin2_M->Sizes.numU = (0);/* Number of model inputs */
  q_qube2_oboe_sin2_M->Sizes.sysDirFeedThru = (0);/* The model is not direct feedthrough */
  q_qube2_oboe_sin2_M->Sizes.numSampTimes = (2);/* Number of sample times */
  q_qube2_oboe_sin2_M->Sizes.numBlocks = (32);/* Number of blocks */
  q_qube2_oboe_sin2_M->Sizes.numBlockIO = (19);/* Number of block outputs */
  q_qube2_oboe_sin2_M->Sizes.numBlockPrms = (133);/* Sum of parameter "widths" */
  return q_qube2_oboe_sin2_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
