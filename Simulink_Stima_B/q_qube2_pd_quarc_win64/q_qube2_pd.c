/*
 * q_qube2_pd.c
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "q_qube2_pd".
 *
 * Model version              : 4.1
 * Simulink Coder version : 9.4 (R2020b) 29-Jul-2020
 * C source code generated on : Fri May 12 17:15:13 2023
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "q_qube2_pd.h"
#include "q_qube2_pd_private.h"
#include "q_qube2_pd_dt.h"

/* Block signals (default storage) */
B_q_qube2_pd_T q_qube2_pd_B;

/* Continuous states */
X_q_qube2_pd_T q_qube2_pd_X;

/* Block states (default storage) */
DW_q_qube2_pd_T q_qube2_pd_DW;

/* Real-time model */
static RT_MODEL_q_qube2_pd_T q_qube2_pd_M_;
RT_MODEL_q_qube2_pd_T *const q_qube2_pd_M = &q_qube2_pd_M_;
static void rate_monotonic_scheduler(void);
time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
{
  rtmSampleHitPtr[1] = rtmStepTask(q_qube2_pd_M, 1);
  rtmSampleHitPtr[2] = rtmStepTask(q_qube2_pd_M, 2);
  UNUSED_PARAMETER(rtmNumSampTimes);
  UNUSED_PARAMETER(rtmTimingData);
  UNUSED_PARAMETER(rtmPerTaskSampleHits);
  return(-1);
}

/*
 *   This function updates active task flag for each subrate
 * and rate transition flags for tasks that exchange data.
 * The function assumes rate-monotonic multitasking scheduler.
 * The function must be called at model base rate so that
 * the generated code self-manages all its subrates and rate
 * transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* To ensure a deterministic data transfer between two rates,
   * data is transferred at the priority of a fast task and the frequency
   * of the slow task.  The following flags indicate when the data transfer
   * happens.  That is, a rate interaction flag is set true when both rates
   * will run, and false otherwise.
   */

  /* tid 1 shares data with slower tid rate: 2 */
  if (q_qube2_pd_M->Timing.TaskCounters.TID[1] == 0) {
    q_qube2_pd_M->Timing.RateInteraction.TID1_2 =
      (q_qube2_pd_M->Timing.TaskCounters.TID[2] == 0);

    /* update PerTaskSampleHits matrix for non-inline sfcn */
    q_qube2_pd_M->Timing.perTaskSampleHits[5] =
      q_qube2_pd_M->Timing.RateInteraction.TID1_2;
  }

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (q_qube2_pd_M->Timing.TaskCounters.TID[2])++;
  if ((q_qube2_pd_M->Timing.TaskCounters.TID[2]) > 4999) {/* Sample time: [10.0s, 0.0s] */
    q_qube2_pd_M->Timing.TaskCounters.TID[2] = 0;
  }
}

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
  q_qube2_pd_derivatives();
  rtsiSetT(si, tnew);
  for (i = 0; i < nXc; ++i) {
    x[i] += h * f0[i];
  }

  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

/* Model output function for TID0 */
void q_qube2_pd_output0(void)          /* Sample time: [0.0s, 0.0s] */
{
  real_T u0;
  real_T u1;
  real_T u2;
  if (rtmIsMajorTimeStep(q_qube2_pd_M)) {
    /* set solver stop time */
    if (!(q_qube2_pd_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(&q_qube2_pd_M->solverInfo,
                            ((q_qube2_pd_M->Timing.clockTickH0 + 1) *
        q_qube2_pd_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(&q_qube2_pd_M->solverInfo,
                            ((q_qube2_pd_M->Timing.clockTick0 + 1) *
        q_qube2_pd_M->Timing.stepSize0 + q_qube2_pd_M->Timing.clockTickH0 *
        q_qube2_pd_M->Timing.stepSize0 * 4294967296.0));
    }

    {                                  /* Sample time: [0.0s, 0.0s] */
      rate_monotonic_scheduler();
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(q_qube2_pd_M)) {
    q_qube2_pd_M->Timing.t[0] = rtsiGetT(&q_qube2_pd_M->solverInfo);
  }

  if (rtmIsMajorTimeStep(q_qube2_pd_M)) {
    /* S-Function (hil_read_encoder_timebase_block): '<Root>/HIL Read Encoder Timebase' */

    /* S-Function Block: q_qube2_pd/HIL Read Encoder Timebase (hil_read_encoder_timebase_block) */
    {
      t_error result;
      result = hil_task_read_encoder(q_qube2_pd_DW.HILReadEncoderTimebase_Task,
        1, &q_qube2_pd_DW.HILReadEncoderTimebase_Buffer);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
      } else {
        q_qube2_pd_B.HILReadEncoderTimebase =
          q_qube2_pd_DW.HILReadEncoderTimebase_Buffer;
      }
    }

    /* RateTransition: '<Root>/Rate Transition' */
    if (q_qube2_pd_M->Timing.RateInteraction.TID1_2) {
      /* RateTransition: '<Root>/Rate Transition' */
      q_qube2_pd_B.RateTransition = q_qube2_pd_DW.RateTransition_Buffer0;
    }

    /* End of RateTransition: '<Root>/Rate Transition' */

    /* Sum: '<Root>/Sum1' */
    q_qube2_pd_B.Sum1 = q_qube2_pd_B.RateTransition;

    /* Saturate: '<Root>/+//- 10V Limit' */
    u0 = q_qube2_pd_B.Sum1;
    u1 = q_qube2_pd_P.u0VLimit_LowerSat;
    u2 = q_qube2_pd_P.u0VLimit_UpperSat;
    if (u0 > u2) {
      /* Saturate: '<Root>/+//- 10V Limit' */
      q_qube2_pd_B.u0VLimit = u2;
    } else if (u0 < u1) {
      /* Saturate: '<Root>/+//- 10V Limit' */
      q_qube2_pd_B.u0VLimit = u1;
    } else {
      /* Saturate: '<Root>/+//- 10V Limit' */
      q_qube2_pd_B.u0VLimit = u0;
    }

    /* End of Saturate: '<Root>/+//- 10V Limit' */

    /* S-Function (hil_write_analog_block): '<Root>/HIL Write Analog' */

    /* S-Function Block: q_qube2_pd/HIL Write Analog (hil_write_analog_block) */
    {
      t_error result;
      result = hil_write_analog(q_qube2_pd_DW.HILInitialize_Card,
        &q_qube2_pd_P.HILWriteAnalog_channels, 1, &q_qube2_pd_B.u0VLimit);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
      }
    }

    /* Gain: '<Root>/Counts to rad' */
    q_qube2_pd_B.Countstorad = q_qube2_pd_P.Countstorad_Gain *
      q_qube2_pd_B.HILReadEncoderTimebase;
  }

  /* TransferFcn: '<Root>/Derivative Filter' */
  q_qube2_pd_B.DerivativeFilter = 0.0;
  q_qube2_pd_B.DerivativeFilter += q_qube2_pd_P.DerivativeFilter_C *
    q_qube2_pd_X.DerivativeFilter_CSTATE;
  q_qube2_pd_B.DerivativeFilter += q_qube2_pd_P.DerivativeFilter_D *
    q_qube2_pd_B.Countstorad;

  /* MATLAB Function: '<Root>/MATLAB Function1' */
  /* MATLAB Function 'MATLAB Function1': '<S2>:1' */
  /* '<S2>:1:3' */
  /* '<S2>:1:6' */
  q_qube2_pd_B.y = (q_qube2_pd_B.u0VLimit / q_qube2_pd_B.DerivativeFilter -
                    0.042) * 0.005;
  if (rtmIsMajorTimeStep(q_qube2_pd_M)) {
  }
}

/* Model update function for TID0 */
void q_qube2_pd_update0(void)          /* Sample time: [0.0s, 0.0s] */
{
  if (rtmIsMajorTimeStep(q_qube2_pd_M)) {
    rt_ertODEUpdateContinuousStates(&q_qube2_pd_M->solverInfo);
  }

  /* Update absolute time */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++q_qube2_pd_M->Timing.clockTick0)) {
    ++q_qube2_pd_M->Timing.clockTickH0;
  }

  q_qube2_pd_M->Timing.t[0] = rtsiGetSolverStopTime(&q_qube2_pd_M->solverInfo);

  /* Update absolute time */
  /* The "clockTick1" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick1"
   * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick1 and the high bits
   * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++q_qube2_pd_M->Timing.clockTick1)) {
    ++q_qube2_pd_M->Timing.clockTickH1;
  }

  q_qube2_pd_M->Timing.t[1] = q_qube2_pd_M->Timing.clockTick1 *
    q_qube2_pd_M->Timing.stepSize1 + q_qube2_pd_M->Timing.clockTickH1 *
    q_qube2_pd_M->Timing.stepSize1 * 4294967296.0;
}

/* Derivatives for root system: '<Root>' */
void q_qube2_pd_derivatives(void)
{
  XDot_q_qube2_pd_T *_rtXdot;
  _rtXdot = ((XDot_q_qube2_pd_T *) q_qube2_pd_M->derivs);

  /* Derivatives for TransferFcn: '<Root>/Derivative Filter' */
  _rtXdot->DerivativeFilter_CSTATE = 0.0;
  _rtXdot->DerivativeFilter_CSTATE += q_qube2_pd_P.DerivativeFilter_A *
    q_qube2_pd_X.DerivativeFilter_CSTATE;
  _rtXdot->DerivativeFilter_CSTATE += q_qube2_pd_B.Countstorad;
}

/* Model output function for TID2 */
void q_qube2_pd_output2(void)          /* Sample time: [10.0s, 0.0s] */
{
  /* MATLAB Function: '<Root>/MATLAB Function' */
  /* MATLAB Function 'MATLAB Function': '<S1>:1' */
  /* '<S1>:1:8' */
  q_qube2_pd_DW.u += 2.0;

  /* '<S1>:1:10' */
  q_qube2_pd_B.y_b = q_qube2_pd_DW.u;

  /* RateTransition: '<Root>/Rate Transition' */
  q_qube2_pd_DW.RateTransition_Buffer0 = q_qube2_pd_B.y_b;
}

/* Model update function for TID2 */
void q_qube2_pd_update2(void)          /* Sample time: [10.0s, 0.0s] */
{
  /* Update absolute time */
  /* The "clockTick2" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick2"
   * and "Timing.stepSize2". Size of "clockTick2" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick2 and the high bits
   * Timing.clockTickH2. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++q_qube2_pd_M->Timing.clockTick2)) {
    ++q_qube2_pd_M->Timing.clockTickH2;
  }

  q_qube2_pd_M->Timing.t[2] = q_qube2_pd_M->Timing.clockTick2 *
    q_qube2_pd_M->Timing.stepSize2 + q_qube2_pd_M->Timing.clockTickH2 *
    q_qube2_pd_M->Timing.stepSize2 * 4294967296.0;
}

/* Model output wrapper function for compatibility with a static main program */
void q_qube2_pd_output(int_T tid)
{
  switch (tid) {
   case 0 :
    q_qube2_pd_output0();
    break;

   case 2 :
    q_qube2_pd_output2();
    break;

   default :
    break;
  }
}

/* Model update wrapper function for compatibility with a static main program */
void q_qube2_pd_update(int_T tid)
{
  switch (tid) {
   case 0 :
    q_qube2_pd_update0();
    break;

   case 2 :
    q_qube2_pd_update2();
    break;

   default :
    break;
  }
}

/* Model initialize function */
void q_qube2_pd_initialize(void)
{
  /* Start for S-Function (hil_initialize_block): '<Root>/HIL Initialize' */

  /* S-Function Block: q_qube2_pd/HIL Initialize (hil_initialize_block) */
  {
    t_int result;
    t_boolean is_switching;
    result = hil_open("qube_servo2_usb", "0", &q_qube2_pd_DW.HILInitialize_Card);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
      return;
    }

    is_switching = false;
    result = hil_set_card_specific_options(q_qube2_pd_DW.HILInitialize_Card, " ",
      2);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
      return;
    }

    result = hil_watchdog_clear(q_qube2_pd_DW.HILInitialize_Card);
    if (result < 0 && result != -QERR_HIL_WATCHDOG_CLEAR) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
      return;
    }

    if ((q_qube2_pd_P.HILInitialize_AIPStart && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_AIPEnter && is_switching)) {
      result = hil_set_analog_input_ranges(q_qube2_pd_DW.HILInitialize_Card,
        &q_qube2_pd_P.HILInitialize_AIChannels, 1U,
        &q_qube2_pd_P.HILInitialize_AILow, &q_qube2_pd_P.HILInitialize_AIHigh);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_pd_P.HILInitialize_AOPStart && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_AOPEnter && is_switching)) {
      result = hil_set_analog_output_ranges(q_qube2_pd_DW.HILInitialize_Card,
        &q_qube2_pd_P.HILInitialize_AOChannels, 1U,
        &q_qube2_pd_P.HILInitialize_AOLow, &q_qube2_pd_P.HILInitialize_AOHigh);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_pd_P.HILInitialize_AOStart && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_AOEnter && is_switching)) {
      result = hil_write_analog(q_qube2_pd_DW.HILInitialize_Card,
        &q_qube2_pd_P.HILInitialize_AOChannels, 1U,
        &q_qube2_pd_P.HILInitialize_AOInitial);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if (q_qube2_pd_P.HILInitialize_AOReset) {
      result = hil_watchdog_set_analog_expiration_state
        (q_qube2_pd_DW.HILInitialize_Card,
         &q_qube2_pd_P.HILInitialize_AOChannels, 1U,
         &q_qube2_pd_P.HILInitialize_AOWatchdog);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    result = hil_set_digital_directions(q_qube2_pd_DW.HILInitialize_Card, NULL,
      0U, &q_qube2_pd_P.HILInitialize_DOChannels, 1U);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
      return;
    }

    if ((q_qube2_pd_P.HILInitialize_DOStart && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_DOEnter && is_switching)) {
      result = hil_write_digital(q_qube2_pd_DW.HILInitialize_Card,
        &q_qube2_pd_P.HILInitialize_DOChannels, 1U, (t_boolean *)
        &q_qube2_pd_P.HILInitialize_DOInitial);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if (q_qube2_pd_P.HILInitialize_DOReset) {
      result = hil_watchdog_set_digital_expiration_state
        (q_qube2_pd_DW.HILInitialize_Card,
         &q_qube2_pd_P.HILInitialize_DOChannels, 1U, (const t_digital_state *)
         &q_qube2_pd_P.HILInitialize_DOWatchdog);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_pd_P.HILInitialize_EIPStart && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_EIPEnter && is_switching)) {
      q_qube2_pd_DW.HILInitialize_QuadratureModes[0] =
        q_qube2_pd_P.HILInitialize_EIQuadrature;
      q_qube2_pd_DW.HILInitialize_QuadratureModes[1] =
        q_qube2_pd_P.HILInitialize_EIQuadrature;
      result = hil_set_encoder_quadrature_mode(q_qube2_pd_DW.HILInitialize_Card,
        q_qube2_pd_P.HILInitialize_EIChannels, 2U, (t_encoder_quadrature_mode *)
        &q_qube2_pd_DW.HILInitialize_QuadratureModes[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_pd_P.HILInitialize_EIStart && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_EIEnter && is_switching)) {
      q_qube2_pd_DW.HILInitialize_InitialEICounts[0] =
        q_qube2_pd_P.HILInitialize_EIInitial;
      q_qube2_pd_DW.HILInitialize_InitialEICounts[1] =
        q_qube2_pd_P.HILInitialize_EIInitial;
      result = hil_set_encoder_counts(q_qube2_pd_DW.HILInitialize_Card,
        q_qube2_pd_P.HILInitialize_EIChannels, 2U,
        &q_qube2_pd_DW.HILInitialize_InitialEICounts[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if ((q_qube2_pd_P.HILInitialize_OOStart && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_OOEnter && is_switching)) {
      result = hil_write_other(q_qube2_pd_DW.HILInitialize_Card,
        q_qube2_pd_P.HILInitialize_OOChannels, 3U,
        q_qube2_pd_P.HILInitialize_OOInitial);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }

    if (q_qube2_pd_P.HILInitialize_OOReset) {
      result = hil_watchdog_set_other_expiration_state
        (q_qube2_pd_DW.HILInitialize_Card, q_qube2_pd_P.HILInitialize_OOChannels,
         3U, q_qube2_pd_P.HILInitialize_OOWatchdog);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        return;
      }
    }
  }

  /* Start for S-Function (hil_read_encoder_timebase_block): '<Root>/HIL Read Encoder Timebase' */

  /* S-Function Block: q_qube2_pd/HIL Read Encoder Timebase (hil_read_encoder_timebase_block) */
  {
    t_error result;
    result = hil_task_create_encoder_reader(q_qube2_pd_DW.HILInitialize_Card,
      q_qube2_pd_P.HILReadEncoderTimebase_SamplesI,
      &q_qube2_pd_P.HILReadEncoderTimebase_Channels, 1,
      &q_qube2_pd_DW.HILReadEncoderTimebase_Task);
    if (result >= 0) {
      result = hil_task_set_buffer_overflow_mode
        (q_qube2_pd_DW.HILReadEncoderTimebase_Task, (t_buffer_overflow_mode)
         (q_qube2_pd_P.HILReadEncoderTimebase_Overflow - 1));
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
    }
  }

  /* Start for RateTransition: '<Root>/Rate Transition' */
  q_qube2_pd_B.RateTransition = q_qube2_pd_P.RateTransition_InitialCondition;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition' */
  q_qube2_pd_DW.RateTransition_Buffer0 =
    q_qube2_pd_P.RateTransition_InitialCondition;

  /* InitializeConditions for TransferFcn: '<Root>/Derivative Filter' */
  q_qube2_pd_X.DerivativeFilter_CSTATE = 0.0;

  /* SystemInitialize for MATLAB Function: '<Root>/MATLAB Function' */
  q_qube2_pd_DW.u = 0.0;
}

/* Model terminate function */
void q_qube2_pd_terminate(void)
{
  /* Terminate for S-Function (hil_initialize_block): '<Root>/HIL Initialize' */

  /* S-Function Block: q_qube2_pd/HIL Initialize (hil_initialize_block) */
  {
    t_boolean is_switching;
    t_int result;
    t_uint32 num_final_analog_outputs = 0;
    t_uint32 num_final_digital_outputs = 0;
    t_uint32 num_final_other_outputs = 0;
    hil_task_stop_all(q_qube2_pd_DW.HILInitialize_Card);
    hil_monitor_stop_all(q_qube2_pd_DW.HILInitialize_Card);
    is_switching = false;
    if ((q_qube2_pd_P.HILInitialize_AOTerminate && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_AOExit && is_switching)) {
      num_final_analog_outputs = 1U;
    } else {
      num_final_analog_outputs = 0;
    }

    if ((q_qube2_pd_P.HILInitialize_DOTerminate && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_DOExit && is_switching)) {
      num_final_digital_outputs = 1U;
    } else {
      num_final_digital_outputs = 0;
    }

    if ((q_qube2_pd_P.HILInitialize_OOTerminate && !is_switching) ||
        (q_qube2_pd_P.HILInitialize_OOExit && is_switching)) {
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
      result = hil_write(q_qube2_pd_DW.HILInitialize_Card
                         , &q_qube2_pd_P.HILInitialize_AOChannels,
                         num_final_analog_outputs
                         , NULL, 0
                         , &q_qube2_pd_P.HILInitialize_DOChannels,
                         num_final_digital_outputs
                         , q_qube2_pd_P.HILInitialize_OOChannels,
                         num_final_other_outputs
                         , &q_qube2_pd_P.HILInitialize_AOFinal
                         , NULL
                         , (t_boolean *) &q_qube2_pd_P.HILInitialize_DOFinal
                         , q_qube2_pd_P.HILInitialize_OOFinal
                         );
      if (result == -QERR_HIL_WRITE_NOT_SUPPORTED) {
        t_error local_result;
        result = 0;

        /* The hil_write operation is not supported by this card. Write final outputs for each channel type */
        if (num_final_analog_outputs > 0) {
          local_result = hil_write_analog(q_qube2_pd_DW.HILInitialize_Card,
            &q_qube2_pd_P.HILInitialize_AOChannels, num_final_analog_outputs,
            &q_qube2_pd_P.HILInitialize_AOFinal);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (num_final_digital_outputs > 0) {
          local_result = hil_write_digital(q_qube2_pd_DW.HILInitialize_Card,
            &q_qube2_pd_P.HILInitialize_DOChannels, num_final_digital_outputs,
            (t_boolean *) &q_qube2_pd_P.HILInitialize_DOFinal);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (num_final_other_outputs > 0) {
          local_result = hil_write_other(q_qube2_pd_DW.HILInitialize_Card,
            q_qube2_pd_P.HILInitialize_OOChannels, num_final_other_outputs,
            q_qube2_pd_P.HILInitialize_OOFinal);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(q_qube2_pd_M, _rt_error_message);
        }
      }
    }

    hil_task_delete_all(q_qube2_pd_DW.HILInitialize_Card);
    hil_monitor_delete_all(q_qube2_pd_DW.HILInitialize_Card);
    hil_close(q_qube2_pd_DW.HILInitialize_Card);
    q_qube2_pd_DW.HILInitialize_Card = NULL;
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
  if (tid == 1)
    tid = 0;
  q_qube2_pd_output(tid);
}

void MdlUpdate(int_T tid)
{
  if (tid == 1)
    tid = 0;
  q_qube2_pd_update(tid);
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
  q_qube2_pd_initialize();
}

void MdlTerminate(void)
{
  q_qube2_pd_terminate();
}

/* Registration function */
RT_MODEL_q_qube2_pd_T *q_qube2_pd(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)q_qube2_pd_M, 0,
                sizeof(RT_MODEL_q_qube2_pd_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&q_qube2_pd_M->solverInfo,
                          &q_qube2_pd_M->Timing.simTimeStep);
    rtsiSetTPtr(&q_qube2_pd_M->solverInfo, &rtmGetTPtr(q_qube2_pd_M));
    rtsiSetStepSizePtr(&q_qube2_pd_M->solverInfo,
                       &q_qube2_pd_M->Timing.stepSize0);
    rtsiSetdXPtr(&q_qube2_pd_M->solverInfo, &q_qube2_pd_M->derivs);
    rtsiSetContStatesPtr(&q_qube2_pd_M->solverInfo, (real_T **)
                         &q_qube2_pd_M->contStates);
    rtsiSetNumContStatesPtr(&q_qube2_pd_M->solverInfo,
      &q_qube2_pd_M->Sizes.numContStates);
    rtsiSetNumPeriodicContStatesPtr(&q_qube2_pd_M->solverInfo,
      &q_qube2_pd_M->Sizes.numPeriodicContStates);
    rtsiSetPeriodicContStateIndicesPtr(&q_qube2_pd_M->solverInfo,
      &q_qube2_pd_M->periodicContStateIndices);
    rtsiSetPeriodicContStateRangesPtr(&q_qube2_pd_M->solverInfo,
      &q_qube2_pd_M->periodicContStateRanges);
    rtsiSetErrorStatusPtr(&q_qube2_pd_M->solverInfo, (&rtmGetErrorStatus
      (q_qube2_pd_M)));
    rtsiSetRTModelPtr(&q_qube2_pd_M->solverInfo, q_qube2_pd_M);
  }

  rtsiSetSimTimeStep(&q_qube2_pd_M->solverInfo, MAJOR_TIME_STEP);
  q_qube2_pd_M->intgData.f[0] = q_qube2_pd_M->odeF[0];
  q_qube2_pd_M->contStates = ((real_T *) &q_qube2_pd_X);
  rtsiSetSolverData(&q_qube2_pd_M->solverInfo, (void *)&q_qube2_pd_M->intgData);
  rtsiSetSolverName(&q_qube2_pd_M->solverInfo,"ode1");

  /* Initialize timing info */
  {
    int_T *mdlTsMap = q_qube2_pd_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    mdlTsMap[1] = 1;
    mdlTsMap[2] = 2;
    q_qube2_pd_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    q_qube2_pd_M->Timing.sampleTimes = (&q_qube2_pd_M->Timing.sampleTimesArray[0]);
    q_qube2_pd_M->Timing.offsetTimes = (&q_qube2_pd_M->Timing.offsetTimesArray[0]);

    /* task periods */
    q_qube2_pd_M->Timing.sampleTimes[0] = (0.0);
    q_qube2_pd_M->Timing.sampleTimes[1] = (0.002);
    q_qube2_pd_M->Timing.sampleTimes[2] = (10.0);

    /* task offsets */
    q_qube2_pd_M->Timing.offsetTimes[0] = (0.0);
    q_qube2_pd_M->Timing.offsetTimes[1] = (0.0);
    q_qube2_pd_M->Timing.offsetTimes[2] = (0.0);
  }

  rtmSetTPtr(q_qube2_pd_M, &q_qube2_pd_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = q_qube2_pd_M->Timing.sampleHitArray;
    int_T *mdlPerTaskSampleHits = q_qube2_pd_M->Timing.perTaskSampleHitsArray;
    q_qube2_pd_M->Timing.perTaskSampleHits = (&mdlPerTaskSampleHits[0]);
    mdlSampleHits[0] = 1;
    q_qube2_pd_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(q_qube2_pd_M, 50.0);
  q_qube2_pd_M->Timing.stepSize0 = 0.002;
  q_qube2_pd_M->Timing.stepSize1 = 0.002;
  q_qube2_pd_M->Timing.stepSize2 = 10.0;

  /* External mode info */
  q_qube2_pd_M->Sizes.checksums[0] = (1009681053U);
  q_qube2_pd_M->Sizes.checksums[1] = (1437484819U);
  q_qube2_pd_M->Sizes.checksums[2] = (2449370253U);
  q_qube2_pd_M->Sizes.checksums[3] = (2370620072U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[3];
    q_qube2_pd_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(q_qube2_pd_M->extModeInfo,
      &q_qube2_pd_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(q_qube2_pd_M->extModeInfo, q_qube2_pd_M->Sizes.checksums);
    rteiSetTPtr(q_qube2_pd_M->extModeInfo, rtmGetTPtr(q_qube2_pd_M));
  }

  q_qube2_pd_M->solverInfoPtr = (&q_qube2_pd_M->solverInfo);
  q_qube2_pd_M->Timing.stepSize = (0.002);
  rtsiSetFixedStepSize(&q_qube2_pd_M->solverInfo, 0.002);
  rtsiSetSolverMode(&q_qube2_pd_M->solverInfo, SOLVER_MODE_MULTITASKING);

  /* block I/O */
  q_qube2_pd_M->blockIO = ((void *) &q_qube2_pd_B);

  {
    q_qube2_pd_B.HILReadEncoderTimebase = 0.0;
    q_qube2_pd_B.RateTransition = 0.0;
    q_qube2_pd_B.Sum1 = 0.0;
    q_qube2_pd_B.u0VLimit = 0.0;
    q_qube2_pd_B.Countstorad = 0.0;
    q_qube2_pd_B.DerivativeFilter = 0.0;
    q_qube2_pd_B.y = 0.0;
    q_qube2_pd_B.y_b = 0.0;
  }

  /* parameters */
  q_qube2_pd_M->defaultParam = ((real_T *)&q_qube2_pd_P);

  /* states (continuous) */
  {
    real_T *x = (real_T *) &q_qube2_pd_X;
    q_qube2_pd_M->contStates = (x);
    (void) memset((void *)&q_qube2_pd_X, 0,
                  sizeof(X_q_qube2_pd_T));
  }

  /* states (dwork) */
  q_qube2_pd_M->dwork = ((void *) &q_qube2_pd_DW);
  (void) memset((void *)&q_qube2_pd_DW, 0,
                sizeof(DW_q_qube2_pd_T));
  q_qube2_pd_DW.HILInitialize_FilterFrequency[0] = 0.0;
  q_qube2_pd_DW.HILInitialize_FilterFrequency[1] = 0.0;
  q_qube2_pd_DW.RateTransition_Buffer0 = 0.0;
  q_qube2_pd_DW.u = 0.0;

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    q_qube2_pd_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 16;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.BTransTable = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.PTransTable = &rtPTransTable;
  }

  /* Initialize Sizes */
  q_qube2_pd_M->Sizes.numContStates = (1);/* Number of continuous states */
  q_qube2_pd_M->Sizes.numPeriodicContStates = (0);
                                      /* Number of periodic continuous states */
  q_qube2_pd_M->Sizes.numY = (0);      /* Number of model outputs */
  q_qube2_pd_M->Sizes.numU = (0);      /* Number of model inputs */
  q_qube2_pd_M->Sizes.sysDirFeedThru = (0);/* The model is not direct feedthrough */
  q_qube2_pd_M->Sizes.numSampTimes = (3);/* Number of sample times */
  q_qube2_pd_M->Sizes.numBlocks = (17);/* Number of blocks */
  q_qube2_pd_M->Sizes.numBlockIO = (8);/* Number of block outputs */
  q_qube2_pd_M->Sizes.numBlockPrms = (81);/* Sum of parameter "widths" */
  return q_qube2_pd_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
