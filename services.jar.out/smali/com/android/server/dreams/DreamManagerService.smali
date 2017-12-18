.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;,
        Lcom/android/server/dreams/DreamManagerService$1;,
        Lcom/android/server/dreams/DreamManagerService$2;,
        Lcom/android/server/dreams/DreamManagerService$3;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;,
        Lcom/android/server/dreams/DreamManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/dreams/DreamController;

.field private final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field private mCurrentDreamCanDoze:Z

.field private mCurrentDreamDozeScreenBrightness:I

.field private mCurrentDreamDozeScreenState:I

.field private mCurrentDreamIsDozing:Z

.field private mCurrentDreamIsTest:Z

.field private mCurrentDreamIsWaking:Z

.field private mCurrentDreamName:Landroid/content/ComponentName;

.field private mCurrentDreamToken:Landroid/os/Binder;

.field private mCurrentDreamUserId:I

.field private mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mDozeEnabledObserver:Landroid/database/ContentObserver;

.field private final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/dreams/DreamManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0
    .param p1, "doze"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0
    .param p1, "immediate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0
    .param p1, "immediate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "dream"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/dreams/DreamManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDozingInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/dreams/DreamManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 457
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    .line 468
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    .line 683
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    .line 96
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    .line 98
    new-instance v0, Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 100
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 101
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 102
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DreamManagerService"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 94
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 422
    const-string/jumbo v2, ", must have permission "

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    return-void
.end method

.method private chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .locals 5
    .param p1, "doze"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 269
    if-eqz p1, :cond_1

    .line 270
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 271
    .local v0, "dozeComponent":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    .restart local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_0
    move-object v0, v2

    goto :goto_0

    .line 273
    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    .line 274
    .local v1, "dreams":[Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-eqz v3, :cond_2

    aget-object v2, v1, v4

    :cond_2
    return-object v2
.end method

.method private cleanupDreamLocked()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 404
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 405
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 406
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 407
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 408
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 409
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    .line 410
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v0, :cond_0

    .line 411
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 412
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 414
    :cond_0
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 403
    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .locals 4
    .param p0, "names"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 446
    if-nez p0, :cond_0

    .line 447
    return-object v3

    .line 449
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "namesArray":[Ljava/lang/String;
    array-length v3, v2

    new-array v0, v3, [Landroid/content/ComponentName;

    .line 451
    .local v0, "componentNames":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 452
    aget-object v3, v2, v1

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v0, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_1
    return-object v0
.end method

.method private static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p0, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v1, "names":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 435
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 436
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 437
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 135
    const-string/jumbo v0, "DREAM MANAGER (dumpsys dreams)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsWaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDozeComponent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 150
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 155
    const-string/jumbo v3, ""

    const-wide/16 v4, 0xc8

    move-object v2, p1

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 134
    return-void
.end method

.method private finishSelfInternal(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_0

    .line 204
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 190
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 329
    const-string/jumbo v3, "screensaver_default_component"

    .line 328
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method private getDozeComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getDozeComponent(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->enabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 294
    iget-object v5, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 295
    const-string/jumbo v6, "screensaver_components"

    .line 294
    invoke-static {v5, v6, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "names":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v1

    .line 300
    .local v1, "components":[Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v4, "validComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_1

    .line 302
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 303
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 312
    .local v2, "defaultDream":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 313
    const-string/jumbo v5, "DreamManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Falling back to default dream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v2    # "defaultDream":Landroid/content/ComponentName;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/ComponentName;

    return-object v5
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 349
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 350
    const/high16 v3, 0x10000000

    .line 349
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private isDozingInternal()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isDreamingInternal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 161
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestAwakenInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 186
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 187
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    .line 181
    return-void
.end method

.method private requestDreamInternal()V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 177
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 178
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    .line 171
    return-void
.end method

.method private setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "screensaver_components"

    .line 323
    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 320
    return-void
.end method

.method private startDozingInternal(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-eqz v0, :cond_0

    .line 241
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    .line 242
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    .line 243
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    .line 245
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 247
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 232
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startDreamInternal(Z)V
    .locals 4
    .param p1, "doze"    # Z

    .prologue
    .line 216
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 217
    .local v1, "userId":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object v0

    .line 218
    .local v0, "dream":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 215
    :cond_0
    return-void

    .line 219
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isTest"    # Z
    .param p3, "canDoze"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 358
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-ne v0, p2, :cond_0

    .line 360
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-ne v0, p3, :cond_0

    .line 361
    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    if-ne v0, p4, :cond_0

    .line 362
    return-void

    .line 365
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    .line 367
    const-string/jumbo v0, "DreamManagerService"

    const-string/jumbo v1, "Entering dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 370
    .local v2, "newToken":Landroid/os/Binder;
    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    .line 371
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    .line 372
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    .line 373
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    .line 374
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    .line 376
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 377
    const-string/jumbo v1, "startDream"

    .line 376
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 378
    .local v7, "wakeLock":Landroid/os/PowerManager$WakeLock;
    iget-object v8, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    .line 379
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    .line 378
    invoke-virtual {v7, v0}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method private stopDozingInternal(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    .line 261
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 262
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 263
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 262
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 253
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stopDreamInternal(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 225
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private stopDreamLocked(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 384
    if-eqz p1, :cond_1

    .line 385
    const-string/jumbo v0, "DreamManagerService"

    const-string/jumbo v1, "Leaving dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    .line 382
    :cond_0
    return-void

    .line 387
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-eqz v0, :cond_2

    .line 388
    return-void

    .line 390
    :cond_2
    const-string/jumbo v0, "DreamManagerService"

    const-string/jumbo v1, "Gently waking up from dream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    goto :goto_0
.end method

.method private testDreamInternal(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "dream"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 209
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private validateDream(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 278
    if-nez p1, :cond_0

    return v4

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 280
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_1

    .line 281
    const-string/jumbo v1, "DreamManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v4

    .line 283
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 284
    const-string/jumbo v1, "android.permission.BIND_DREAM_SERVICE"

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 285
    :cond_3
    const-string/jumbo v1, "DreamManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    const-string/jumbo v3, " is not available because its manifest is missing the "

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    const-string/jumbo v3, "android.permission.BIND_DREAM_SERVICE"

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 287
    const-string/jumbo v3, " permission on the dream service declaration."

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v4
.end method

.method private writePulseGestureEnabled()V
    .locals 3

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 428
    .local v1, "name":Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v0

    .line 429
    .local v0, "dozeEnabled":Z
    const-class v2, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManagerInternal;->setPulseGestureEnabled(Z)V

    .line 426
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_dreams_DreamManagerService_lambda$1(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 7
    .param p1, "newToken"    # Landroid/os/Binder;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "isTest"    # Z
    .param p4, "canDoze"    # Z
    .param p5, "userId"    # I
    .param p6, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    .line 0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 114
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    .line 115
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    .line 126
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    const/4 v4, 0x0

    .line 118
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "doze_pulse_on_double_tap"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    .line 128
    const/4 v3, 0x0

    .line 129
    const/4 v4, -0x1

    .line 127
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 130
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    .line 113
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string/jumbo v0, "dreams"

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 109
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 107
    return-void
.end method
