.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$BaseEventQueue;,
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    }
.end annotation


# static fields
.field private static DEBUG_DYNAMIC_SENSOR:Z = false

.field private static final MAX_LISTENER_COUNT:I = 0x80

.field private static sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNativeClassInited:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicSensorListDirty:Z

.field private mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    return v0
.end method

.method static synthetic -get1(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/SystemSensorManager;)J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic -get4(Landroid/hardware/SystemSensorManager;)I
    .locals 1

    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method static synthetic -set0(Landroid/hardware/SystemSensorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/SystemSensorManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 67
    iput-boolean v3, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    .line 69
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 74
    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 79
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    .line 90
    sget-object v3, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 91
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v2, :cond_0

    .line 92
    const/4 v2, 0x1

    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    .line 93
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 97
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 99
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "index":I
    :goto_0
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 105
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    return-void

    .line 90
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 106
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .locals 7
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 319
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 322
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 323
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/TriggerEventListener;

    .line 324
    .local v1, "l":Landroid/hardware/TriggerEventListener;
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v3, :cond_0

    .line 325
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed trigger listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/TriggerEventListener;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 326
    const-string/jumbo v6, " due to sensor disconnection"

    .line 325
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v1, p1, v3}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    .end local v1    # "l":Landroid/hardware/TriggerEventListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 318
    return-void

    .line 332
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 333
    :try_start_1
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 334
    .local v0, "l":Landroid/hardware/SensorEventListener;
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v3, :cond_3

    .line 335
    const-string/jumbo v3, "SensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removed event listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 336
    const-string/jumbo v6, " due to sensor disconnection"

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 332
    .end local v0    # "l":Landroid/hardware/SensorEventListener;
    .end local v2    # "l$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "oldList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p2, "updated":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p3, "added":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local p4, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .line 466
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .line 468
    .local v2, "j":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 469
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-le v4, v3, :cond_2

    .line 470
    :cond_0
    const/4 v0, 0x1

    .line 471
    if-eqz p4, :cond_1

    .line 472
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 469
    goto :goto_0

    .line 475
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 476
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-ge v4, v3, :cond_6

    .line 477
    :cond_3
    const/4 v0, 0x1

    .line 478
    if-eqz p3, :cond_4

    .line 479
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_4
    if-eqz p2, :cond_5

    .line 482
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 476
    goto :goto_0

    .line 485
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 486
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-ne v4, v3, :cond_8

    .line 487
    if-eqz p2, :cond_7

    .line 488
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 491
    add-int/lit8 v2, v2, 0x1

    .line 486
    goto/16 :goto_0

    .line 496
    :cond_8
    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method private setupDynamicSensorBroadcastReceiver()V
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 400
    new-instance v1, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v1, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private teardownDynamicSensorBroadcastReceiver()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 422
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 420
    return-void
.end method

.method private updateDynamicSensorList()V
    .locals 18

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v15

    .line 346
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v14, :cond_5

    .line 347
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    .line 350
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v13, "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v2, "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v10, "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 354
    invoke-static {v14, v8, v13, v2, v10}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 357
    .local v4, "changed":Z
    if-eqz v4, :cond_4

    .line 358
    sget-boolean v14, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v14, :cond_0

    .line 359
    const-string/jumbo v14, "SensorManager"

    const-string/jumbo v16, "DYNS dynamic sensor list cached should be updated"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    .line 363
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    .line 364
    .local v11, "s":Landroid/hardware/Sensor;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getHandle()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 345
    .end local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "changed":Z
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v11    # "s":Landroid/hardware/Sensor;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    .end local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 367
    .restart local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v4    # "changed":Z
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v12    # "s$iterator":Ljava/util/Iterator;
    .restart local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_1
    :try_start_1
    new-instance v9, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 370
    .local v9, "mainHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 369
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 371
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 373
    .local v3, "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    move-object v7, v9

    .line 375
    .local v7, "handler":Landroid/os/Handler;
    :goto_2
    new-instance v14, Landroid/hardware/SystemSensorManager$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v3, v10}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v7, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 373
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    .restart local v7    # "handler":Landroid/os/Handler;
    goto :goto_2

    .line 388
    .end local v3    # "callback":Landroid/hardware/SensorManager$DynamicSensorCallback;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;>;"
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_3
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    .line 389
    .restart local v11    # "s":Landroid/hardware/Sensor;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    goto :goto_3

    .line 393
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v9    # "mainHandler":Landroid/os/Handler;
    .end local v11    # "s":Landroid/hardware/Sensor;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "addedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "changed":Z
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v10    # "removedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v13    # "updatedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_5
    monitor-exit v15

    .line 344
    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 5
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 240
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 241
    return v4

    .line 243
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 244
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 245
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_4

    .line 247
    if-nez p2, :cond_2

    .line 248
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    .line 252
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_1
    monitor-exit v3

    .line 256
    return v1

    .line 250
    .end local v1    # "result":Z
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 253
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 243
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_4
    monitor-exit v3

    .line 258
    return v4
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    monitor-exit v2

    .line 268
    return v1

    .line 270
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    return v1

    .line 265
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 124
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    .line 125
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 276
    sget-object v2, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 277
    if-eqz p1, :cond_2

    .line 278
    :try_start_0
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v0

    .line 280
    .local v0, "isDataInjectionModeEnabled":Z
    if-nez v0, :cond_0

    .line 281
    const-string/jumbo v1, "SensorManager"

    const-string/jumbo v3, "Data Injection mode not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 285
    :cond_0
    :try_start_1
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v1, :cond_1

    .line 286
    new-instance v1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 287
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 286
    invoke-direct {v1, p0, v3, p0, v4}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v0    # "isDataInjectionModeEnabled":Z
    :cond_1
    :goto_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 291
    :cond_2
    :try_start_2
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v1, :cond_1

    .line 292
    sget-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 293
    const/4 v1, 0x0

    sput-object v1, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v7, 0x0

    .line 302
    sget-object v8, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 303
    :try_start_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v0, :cond_0

    .line 304
    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 305
    return v7

    .line 307
    :cond_0
    :try_start_1
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v6

    .line 310
    .local v6, "ret":I
    if-eqz v6, :cond_1

    .line 311
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 312
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :cond_1
    if-nez v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    monitor-exit v8

    return v0

    :cond_2
    move v0, v7

    goto :goto_0

    .line 302
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 429
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v0, :cond_0

    .line 430
    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    if-nez p1, :cond_1

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    return-void

    .line 441
    :cond_2
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    .line 442
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .prologue
    const/4 v5, 0x0

    .line 132
    const/16 v3, 0x17d

    invoke-static {v3, p2, p3}, Landroid/util/SeempLog;->record_sensor_rate(ILandroid/hardware/Sensor;I)I

    .line 133
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 134
    :cond_0
    const-string/jumbo v3, "SensorManager"

    const-string/jumbo v4, "sensor or listener is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v5

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 139
    const-string/jumbo v3, "SensorManager"

    const-string/jumbo v4, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v5

    .line 142
    :cond_2
    if-ltz p5, :cond_3

    if-gez p3, :cond_4

    .line 143
    :cond_3
    const-string/jumbo v3, "SensorManager"

    const-string/jumbo v4, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v5

    .line 146
    :cond_4
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_5

    .line 147
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "register failed, the sensor listeners size has exceeded the maximum limit 128"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_5
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 157
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 158
    .local v2, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v2, :cond_9

    .line 159
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 160
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v2, p1, v1, p0, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 164
    .restart local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v3

    if-nez v3, :cond_8

    .line 165
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 166
    return v5

    .line 159
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_6
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .restart local v1    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 162
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fullClassName":Ljava/lang/String;
    goto :goto_1

    .line 168
    :cond_8
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 171
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_9
    :try_start_2
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 156
    .end local v2    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    const/4 v5, 0x0

    .line 205
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sensor cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    return v5

    .line 211
    :cond_2
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_3

    .line 212
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_3
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 218
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 219
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_6

    .line 220
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 221
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v2, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 224
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 225
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 226
    return v5

    .line 222
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fullClassName":Ljava/lang/String;
    goto :goto_0

    .line 228
    :cond_5
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 231
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 217
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .prologue
    .line 448
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->DEBUG_DYNAMIC_SENSOR:Z

    if-eqz v0, :cond_0

    .line 449
    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "Removing dynamic sensor listerner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 179
    const/16 v2, 0x17e

    invoke-static {v2, p2}, Landroid/util/SeempLog;->record_sensor(ILandroid/hardware/Sensor;)I

    .line 181
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 182
    return-void

    .line 185
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 186
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 187
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    .line 189
    if-nez p2, :cond_2

    .line 190
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    .line 194
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .end local v1    # "result":Z
    :cond_1
    :goto_1
    monitor-exit v3

    .line 178
    return-void

    .line 192
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 185
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
