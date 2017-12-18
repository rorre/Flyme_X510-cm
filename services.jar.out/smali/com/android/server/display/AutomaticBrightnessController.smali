.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$1;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_FAST_THRESHOLD:F = 1000.0f

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true


# instance fields
.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mBrighteningLightDebounceConfig:J

.field private final mBrighteningLightFastDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mCurrentLightSensorRate:I

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private final mInitialLightSensorRate:I

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLuxLevels:Lcom/android/server/display/LuxLevels;

.field private final mNormalLightSensorRate:I

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private mScreenAutoBrightnessAdjustmentMaxGamma:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mUseActiveDozeLightSensorConfig:Z

.field private final mUseNewSensorSamplesForDoze:Z

.field private final mWeightingIntercept:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIIJJJZIFZZLcom/android/server/display/LuxLevels;)V
    .locals 7
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "initialLightSensorRate"    # I
    .param p11, "brighteningLightDebounceConfig"    # J
    .param p13, "brighteningLightFastDebounceConfig"    # J
    .param p15, "darkeningLightDebounceConfig"    # J
    .param p17, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p18, "ambientLightHorizon"    # I
    .param p19, "autoBrightnessAdjustmentMaxGamma"    # F
    .param p20, "activeDozeLightSensor"    # Z
    .param p21, "useNewSensorSamplesForDoze"    # Z
    .param p22, "luxLevels"    # Lcom/android/server/display/LuxLevels;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 172
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 179
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 659
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 209
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 210
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 211
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 212
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 213
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 214
    iput p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 215
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 216
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 217
    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 218
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 219
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 220
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    .line 221
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 222
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 223
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 224
    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 225
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    .line 226
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseNewSensorSamplesForDoze:Z

    .line 227
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseActiveDozeLightSensorConfig:Z

    .line 228
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxLevels:Lcom/android/server/display/LuxLevels;

    .line 230
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v2, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 232
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v4, v3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v2, v4, v5, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 231
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 234
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v4, v3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v2, v4, v5, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 233
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 237
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 208
    return-void
.end method

.method private adjustLightSensorRate(I)V
    .locals 5
    .param p1, "lightSensorRate"    # I

    .prologue
    .line 379
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_0

    .line 384
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 385
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 387
    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 386
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 377
    :cond_0
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 363
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 366
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 370
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 373
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 374
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 362
    return-void
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 406
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 407
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 408
    const-string/jumbo v10, "AutomaticBrightnessController"

    const-string/jumbo v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/high16 v10, -0x40800000    # -1.0f

    return v10

    .line 411
    :cond_0
    const/4 v5, 0x0

    .line 412
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 413
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 414
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 415
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 416
    .local v6, "startTime":J
    invoke-direct {p0, v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 417
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 423
    .local v4, "lux":F
    add-float/2addr v8, v9

    .line 424
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 425
    move-wide v2, v6

    .line 414
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 431
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    div-float v10, v5, v8

    return v10
.end method

.method private calculateWeight(JJ)F
    .locals 3
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .prologue
    .line 435
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 610
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 607
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 589
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 588
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 616
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 617
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_0

    .line 627
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 628
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    .line 629
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 630
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 631
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 632
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 633
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 634
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 635
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 627
    const v1, 0x88b8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 614
    :cond_0
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    .line 350
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 352
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseActiveDozeLightSensorConfig:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_1

    .line 357
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 358
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 342
    :cond_1
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(JF)J
    .locals 9
    .param p1, "time"    # J
    .param p3, "ambientLux"    # F

    .prologue
    .line 445
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 446
    .local v0, "N":I
    move-wide v4, p1

    .line 447
    .local v4, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 448
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 454
    :cond_0
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    sub-float/2addr v6, p3

    const/high16 v7, 0x447a0000    # 1000.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 455
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    .line 456
    .local v2, "debounceDelay":J
    :goto_1
    add-long v6, v4, v2

    return-wide v6

    .line 451
    .end local v2    # "debounceDelay":J
    :cond_1
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    .line 447
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 455
    :cond_2
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    goto :goto_1
.end method

.method private nextAmbientLightDarkeningTransition(JF)J
    .locals 7
    .param p1, "time"    # J
    .param p3, "ambientLux"    # F

    .prologue
    .line 460
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 461
    .local v0, "N":I
    move-wide v2, p1

    .line 462
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 463
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 468
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 466
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 462
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 593
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_1

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 595
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    .line 596
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 597
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 598
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    .line 603
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 604
    const-wide/16 v2, 0x2710

    .line 603
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 592
    return-void

    .line 596
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1
.end method

.method private setAmbientLux(F)V
    .locals 1
    .param p1, "lux"    # F

    .prologue
    .line 400
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 401
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxLevels:Lcom/android/server/display/LuxLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LuxLevels;->getBrighteningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 402
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxLevels:Lcom/android/server/display/LuxLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LuxLevels;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 399
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 312
    if-eqz p1, :cond_1

    .line 313
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_2

    .line 317
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 318
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 319
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 320
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 322
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 323
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 324
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v4, v4, 0x3e8

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 323
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 325
    return v1

    :cond_0
    move v0, v1

    .line 320
    goto :goto_0

    .line 328
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 332
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 333
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 334
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 335
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 336
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 339
    :cond_2
    return v0
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .prologue
    .line 392
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 393
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 394
    const/4 v0, 0x1

    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 473
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v4, v3

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 474
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 471
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 19
    .param p1, "time"    # J

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v5, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v14, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 483
    .local v12, "timeWhenSensorWarmedUp":J
    cmp-long v5, p1, v12

    if-gez v5, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 494
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 500
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 503
    .end local v12    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v4

    .line 504
    .local v4, "ambientLux":F
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(JF)J

    move-result-wide v6

    .line 505
    .local v6, "nextBrightenTransition":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v8

    .line 507
    .local v8, "nextDarkenTransition":J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    cmp-long v5, v6, p1

    if-gtz v5, :cond_3

    .line 516
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 517
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 518
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(JF)J

    move-result-wide v6

    .line 519
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v8

    .line 521
    :cond_2
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 529
    .local v10, "nextTransitionTime":J
    cmp-long v5, v10, p1

    if-lez v5, :cond_4

    .line 534
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v14, 0x1

    invoke-virtual {v5, v14, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 477
    return-void

    .line 508
    .end local v10    # "nextTransitionTime":J
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_2

    cmp-long v5, v8, p1

    if-gtz v5, :cond_2

    goto :goto_0

    .line 529
    .restart local v10    # "nextTransitionTime":J
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v14, v5

    add-long v10, p1, v14

    goto :goto_1
.end method

.method private updateAutoBrightness(Z)V
    .locals 9
    .param p1, "sendUpdate"    # Z

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 538
    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v5, :cond_0

    .line 539
    return-void

    .line 542
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    .line 543
    .local v4, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 546
    .local v1, "gamma":F
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 547
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    .line 548
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v6, v6

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 547
    invoke-static {v5, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 549
    .local v0, "adjGamma":F
    mul-float v1, v8, v0

    .line 555
    .end local v0    # "adjGamma":F
    :cond_1
    cmpl-float v5, v1, v8

    if-eqz v5, :cond_2

    .line 556
    move v2, v4

    .line 557
    .local v2, "in":F
    invoke-static {v4, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 565
    .end local v2    # "in":F
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseActiveDozeLightSensorConfig:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v5, :cond_4

    .line 566
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxLevels:Lcom/android/server/display/LuxLevels;

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Lcom/android/server/display/LuxLevels;->getDozeBrightness(F)I

    move-result v3

    .line 572
    .local v3, "newScreenAutoBrightness":I
    :goto_0
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v5, v3, :cond_3

    .line 579
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 580
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 581
    if-eqz p1, :cond_3

    .line 582
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v5}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 537
    :cond_3
    return-void

    .line 569
    .end local v3    # "newScreenAutoBrightness":I
    :cond_4
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v3

    .restart local v3    # "newScreenAutoBrightness":I
    goto :goto_0
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 441
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZFZZ)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 255
    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseActiveDozeLightSensorConfig:Z

    .line 256
    .local v1, "enableSensor":Z
    :goto_0
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v3, :cond_5

    .line 266
    :cond_0
    :goto_1
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    .line 267
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 268
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v3

    or-int/2addr v0, v3

    .line 269
    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 272
    :cond_1
    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 249
    :cond_2
    return-void

    .line 255
    .end local v0    # "changed":Z
    .end local v1    # "enableSensor":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 256
    .restart local v1    # "enableSensor":Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v3, :cond_0

    .line 257
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseNewSensorSamplesForDoze:Z

    .line 256
    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 259
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 263
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 264
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 279
    const-string/jumbo v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLightFastDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 290
    const-string/jumbo v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInitialHorizonAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustmentMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLuxLevels:Lcom/android/server/display/LuxLevels;

    invoke-virtual {v0}, Lcom/android/server/display/LuxLevels;->hasDynamicDozeBrightness()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0

    .line 243
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
