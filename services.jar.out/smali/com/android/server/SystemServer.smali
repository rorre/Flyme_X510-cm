.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final HALL_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hall/state"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 181
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 334
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 335
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10302e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 332
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 177
    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 317
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 316
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 319
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 322
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 323
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 315
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 319
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 325
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 311
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 205
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 217
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 237
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 242
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 243
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 252
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 256
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 260
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 264
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 267
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 271
    const/4 v0, -0x2

    .line 270
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 273
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 276
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 283
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 286
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 287
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 292
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 293
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 307
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :catch_0
    move-exception v6

    .line 295
    .local v6, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 349
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 352
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 353
    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 352
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 354
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 355
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 361
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 365
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 368
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 372
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 375
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 378
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 388
    :cond_0
    :goto_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Package Manager"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 390
    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 389
    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 391
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 392
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 394
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 398
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 401
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 405
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 345
    return-void

    .line 382
    :cond_1
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Device encrypted - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 390
    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 416
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 417
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 418
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 417
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 423
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 411
    return-void
.end method

.method private startOtherServices()V
    .locals 115

    .prologue
    .line 431
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 432
    .local v10, "context":Landroid/content/Context;
    const/16 v30, 0x0

    .line 433
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v48, 0x0

    .line 434
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    const/16 v108, 0x0

    .line 435
    .local v108, "vibrator":Lcom/android/server/VibratorService;
    const/16 v32, 0x0

    .line 436
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const/16 v86, 0x0

    .line 437
    .local v86, "mountService":Landroid/os/storage/IMountService;
    const/16 v87, 0x0

    .line 438
    .local v87, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v91, 0x0

    .line 439
    .local v91, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v88, 0x0

    .line 440
    .local v88, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v43, 0x0

    .line 441
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v89, 0x0

    .line 442
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v99, 0x0

    .line 443
    .local v99, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v114, 0x0

    .line 444
    .local v114, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v107, 0x0

    .line 445
    .local v107, "usb":Lcom/android/server/usb/UsbService;
    const/16 v96, 0x0

    .line 446
    .local v96, "serial":Lcom/android/server/SerialService;
    const/16 v92, 0x0

    .line 447
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v40, 0x0

    .line 448
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v74, 0x0

    .line 449
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v103, 0x0

    .line 450
    .local v103, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v46, 0x0

    .line 451
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v35, 0x0

    .line 452
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v85, 0x0

    .line 453
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v63, 0x0

    .line 454
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v39, 0x0

    .line 456
    .local v39, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v69, 0x0

    .line 458
    .local v69, "hallSwitch":Lcom/android/server/HallSwitchObserver;
    const-string/jumbo v3, "config.disable_storage"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 459
    .local v57, "disableStorage":Z
    const-string/jumbo v3, "config.disable_bluetooth"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 460
    .local v52, "disableBluetooth":Z
    const-string/jumbo v3, "config.disable_location"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 461
    .local v53, "disableLocation":Z
    const-string/jumbo v3, "config.disable_systemui"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 462
    .local v58, "disableSystemUI":Z
    const-string/jumbo v3, "config.disable_noncore"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 463
    .local v56, "disableNonCoreServices":Z
    const-string/jumbo v3, "config.disable_network"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 464
    .local v54, "disableNetwork":Z
    const-string/jumbo v3, "config.disable_networktime"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 465
    .local v55, "disableNetworkTime":Z
    const-string/jumbo v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v76

    .line 466
    .local v76, "isEmulator":Z
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 467
    const v4, 0x3f080005

    .line 466
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 468
    .local v65, "externalServer":Ljava/lang/String;
    const-string/jumbo v3, "config.disable_atlas"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 471
    .local v51, "disableAtlas":Z
    :try_start_0
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Reading configuration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 474
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Scheduling Policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string/jumbo v3, "scheduling_policy"

    new-instance v4, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v4}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 479
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Telephony Registry"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v104, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v104

    invoke-direct {v0, v10}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_43

    .line 481
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v104, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v3, "telephony.registry"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 483
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Entropy Mixer"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v64, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v64

    invoke-direct {v0, v10}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_44

    .line 486
    .local v64, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 488
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Camera Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/camera/CameraService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 494
    :try_start_3
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Account Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 496
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v3, "account"

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_45

    move-object/from16 v30, v31

    .line 501
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Content Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    const/4 v3, 0x1

    .line 502
    :goto_1
    invoke-static {v10, v3}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v48

    .line 505
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "System Content Providers"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 508
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Vibrator Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v109, Lcom/android/server/VibratorService;

    move-object/from16 v0, v109

    invoke-direct {v0, v10}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 510
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .local v109, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string/jumbo v3, "vibrator"

    move-object/from16 v0, v109

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 512
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Consumer IR Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v47, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v47

    invoke-direct {v0, v10}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_46

    .line 514
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string/jumbo v3, "consumer_ir"

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 518
    const-string/jumbo v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 517
    invoke-static {v3}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v32

    .line 520
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Init Watchdog"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v113

    .line 522
    .local v113, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v113

    invoke-virtual {v0, v10, v3}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 524
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Input Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v75, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v75

    invoke-direct {v0, v10}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_47

    .line 527
    .local v75, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string/jumbo v3, "SystemServer"

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "Window Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    const/4 v3, 0x1

    .line 530
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const/4 v5, 0x1

    .line 528
    move-object/from16 v0, v75

    invoke-static {v10, v0, v3, v5, v4}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v114

    .line 531
    .local v114, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v3, "window"

    move-object/from16 v0, v114

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 532
    const-string/jumbo v3, "input"

    move-object/from16 v0, v75

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v114

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 536
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 537
    invoke-virtual/range {v75 .. v75}, Lcom/android/server/input/InputManagerService;->start()V

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 545
    if-eqz v76, :cond_2b

    .line 546
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "No Bluetooh Service (emulator)"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_3
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v103, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v74, v75

    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v108, v109

    .line 563
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .end local v113    # "watchdog":Lcom/android/server/Watchdog;
    .end local v114    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_4
    const/16 v100, 0x0

    .line 564
    .local v100, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v94, 0x0

    .line 565
    .local v94, "notification":Landroid/app/INotificationManager;
    const/16 v72, 0x0

    .line 566
    .local v72, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v111, 0x0

    .line 567
    .local v111, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v77, 0x0

    .line 568
    .local v77, "location":Lcom/android/server/LocationManagerService;
    const/16 v49, 0x0

    .line 569
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v105, 0x0

    .line 570
    .local v105, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v79, 0x0

    .line 571
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v33, 0x0

    .line 572
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v81, 0x0

    .line 573
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v67, 0x0

    .line 576
    .local v67, "gestureService":Lcom/android/server/gesture/GestureService;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 578
    :try_start_9
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Input Method Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v73, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v73

    move-object/from16 v1, v114

    invoke-direct {v0, v10, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 580
    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v73, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string/jumbo v3, "input_method"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_42

    move-object/from16 v72, v73

    .line 586
    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_b
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Accessibility Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string/jumbo v3, "accessibility"

    .line 588
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v4, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 587
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 595
    :cond_0
    :goto_6
    :try_start_c
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 600
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 601
    if-nez v57, :cond_1

    .line 602
    const-string/jumbo v3, "0"

    const-string/jumbo v4, "system_init.startmountservice"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 619
    .end local v86    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 622
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 628
    :goto_9
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 629
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 628
    invoke-interface/range {v2 .. v7}, Landroid/app/IActivityManager;->updateBootProgress(ILandroid/content/pm/ApplicationInfo;IIZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_41

    .line 633
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_36

    .line 634
    if-nez v56, :cond_3

    .line 636
    :try_start_f
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "LockSettingsService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v80, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v80

    invoke-direct {v0, v10}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 638
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_10
    const-string/jumbo v3, "lock_settings"

    move-object/from16 v0, v80

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_40

    move-object/from16 v79, v80

    .line 643
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_b
    const-string/jumbo v3, "ro.frp.pst"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 647
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 654
    :cond_3
    if-nez v58, :cond_4

    .line 656
    :try_start_11
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Status Bar"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v101, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v101

    move-object/from16 v1, v114

    invoke-direct {v0, v10, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 658
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v101, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_12
    const-string/jumbo v3, "statusbar"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3f

    move-object/from16 v100, v101

    .line 664
    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_c
    if-nez v56, :cond_5

    .line 666
    :try_start_13
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Clipboard Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string/jumbo v3, "clipboard"

    .line 668
    new-instance v4, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v4, v10}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 667
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    .line 674
    :cond_5
    :goto_d
    if-nez v54, :cond_35

    .line 676
    :try_start_14
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "NetworkManagement Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {v10}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b

    move-result-object v7

    .line 678
    .end local v87    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_15
    const-string/jumbo v3, "network_management"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3e

    .line 684
    :goto_e
    if-nez v56, :cond_6

    .line 686
    :try_start_16
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Text Service Manager Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v106, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v106

    invoke-direct {v0, v10}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 688
    .end local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v106, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_17
    const-string/jumbo v3, "textservices"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3d

    move-object/from16 v105, v106

    .line 694
    .end local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_6
    :goto_f
    if-nez v54, :cond_34

    .line 696
    :try_start_18
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Network Score Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v90, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v90

    invoke-direct {v0, v10}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 698
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_19
    const-string/jumbo v3, "network_score"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3c

    move-object/from16 v89, v90

    .line 704
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_10
    :try_start_1a
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "NetworkStats Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v6, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v32

    invoke-direct {v6, v10, v7, v0}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 706
    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1b
    const-string/jumbo v3, "netstats"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3b

    .line 712
    :goto_11
    :try_start_1c
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "NetworkPolicy Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 715
    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    move-object v3, v10

    .line 713
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 717
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1d
    const-string/jumbo v3, "netpolicy"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3a

    .line 722
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wifi.WifiService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 725
    const-string/jumbo v4, "com.android.server.wifi.WifiScanningService"

    .line 724
    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.wifi.RttService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.ethernet"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.usb.host"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 729
    if-eqz v3, :cond_8

    .line 731
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 735
    :cond_8
    :try_start_1e
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Connectivity Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v44, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v44

    invoke-direct {v0, v10, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 738
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1f
    const-string/jumbo v3, "connectivity"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 739
    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 740
    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_39

    move-object/from16 v43, v44

    .line 746
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    :try_start_20
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Network Service Discovery Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {v10}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v99

    .line 749
    .local v99, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v3, "servicediscovery"

    .line 748
    move-object/from16 v0, v99

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 755
    .end local v99    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    if-nez v56, :cond_9

    .line 757
    :try_start_21
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "UpdateLock Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string/jumbo v3, "updatelock"

    .line 759
    new-instance v4, Lcom/android/server/UpdateLockService;

    invoke-direct {v4, v10}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 758
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_12

    .line 770
    :cond_9
    :goto_15
    if-eqz v86, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v3, :cond_30

    .line 778
    :cond_a
    :goto_16
    if-eqz v30, :cond_b

    .line 779
    :try_start_22
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_14

    .line 785
    :cond_b
    :goto_17
    if-eqz v48, :cond_c

    .line 786
    :try_start_23
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_15

    .line 791
    :cond_c
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 793
    const-string/jumbo v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 792
    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v94

    .line 794
    .local v94, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v94

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 798
    if-nez v53, :cond_d

    .line 800
    :try_start_24
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Location Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v78, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v10}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_16

    .line 802
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .local v78, "location":Lcom/android/server/LocationManagerService;
    :try_start_25
    const-string/jumbo v3, "location"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_38

    move-object/from16 v77, v78

    .line 808
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    :goto_19
    :try_start_26
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Country Detector"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v50, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v10}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_17

    .line 810
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_27
    const-string/jumbo v3, "country_detector"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_37

    move-object/from16 v49, v50

    .line 816
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_d
    :goto_1a
    if-nez v56, :cond_e

    .line 818
    :try_start_28
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Search Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string/jumbo v3, "search"

    .line 820
    new-instance v4, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v4, v10}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 819
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_18

    .line 827
    :cond_e
    :goto_1b
    :try_start_29
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "DropBox Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string/jumbo v3, "dropbox"

    .line 829
    new-instance v4, Lcom/android/server/DropBoxManagerService;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v8, "/data/system/dropbox"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v10, v5}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 828
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_19

    .line 834
    :goto_1c
    if-nez v56, :cond_f

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 835
    const v4, 0x1120059

    .line 834
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 837
    :try_start_2a
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Wallpaper Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v112, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v112

    invoke-direct {v0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1a

    .line 839
    .end local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v112, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2b
    const-string/jumbo v3, "wallpaper"

    move-object/from16 v0, v112

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_36

    move-object/from16 v111, v112

    .line 846
    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_f
    :goto_1d
    :try_start_2c
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Audio Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v36, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    invoke-direct {v0, v10}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1b

    .line 848
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2d
    const-string/jumbo v3, "audio"

    move-object/from16 v0, v36

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_35

    move-object/from16 v35, v36

    .line 853
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1e
    if-nez v56, :cond_10

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DockObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 856
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 857
    const-string/jumbo v4, "android.hardware.type.watch"

    .line 856
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ThermalObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 862
    :cond_10
    if-nez v56, :cond_11

    .line 863
    new-instance v66, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/switch/hall/state"

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 864
    .local v66, "file":Ljava/io/File;
    invoke-virtual/range {v66 .. v66}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 866
    :try_start_2e
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "HallSwitch Observer"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v70, Lcom/android/server/HallSwitchObserver;

    move-object/from16 v0, v70

    invoke-direct {v0, v10}, Lcom/android/server/HallSwitchObserver;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1c

    .local v70, "hallSwitch":Lcom/android/server/HallSwitchObserver;
    move-object/from16 v69, v70

    .line 875
    .end local v66    # "file":Ljava/io/File;
    .end local v69    # "hallSwitch":Lcom/android/server/HallSwitchObserver;
    .end local v70    # "hallSwitch":Lcom/android/server/HallSwitchObserver;
    :cond_11
    :goto_1f
    :try_start_2f
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Wired Accessory Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v3, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v74

    invoke-direct {v3, v10, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 877
    move-object/from16 v0, v74

    invoke-virtual {v0, v3}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1d

    .line 883
    :goto_20
    if-nez v56, :cond_15

    .line 884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.midi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 889
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.usb.host"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 891
    const-string/jumbo v4, "android.hardware.usb.accessory"

    .line 890
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 889
    if-eqz v3, :cond_14

    .line 893
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 897
    :cond_14
    :try_start_30
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Serial Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v97, Lcom/android/server/SerialService;

    move-object/from16 v0, v97

    invoke-direct {v0, v10}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    .line 900
    .end local v96    # "serial":Lcom/android/server/SerialService;
    .local v97, "serial":Lcom/android/server/SerialService;
    :try_start_31
    const-string/jumbo v3, "serial"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_34

    move-object/from16 v96, v97

    .line 906
    .end local v97    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 910
    if-nez v56, :cond_19

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.backup"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 915
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.app_widgets"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 919
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.voice_recognizers"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 923
    :cond_18
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 924
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Gesture Launcher Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 930
    :cond_19
    :try_start_32
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "DiskStats Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string/jumbo v3, "diskstats"

    new-instance v4, Lcom/android/server/DiskStatsService;

    invoke-direct {v4, v10}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1f

    .line 941
    :goto_22
    :try_start_33
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "SamplingProfiler Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string/jumbo v3, "samplingprofiler"

    .line 943
    new-instance v4, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v4, v10}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 942
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_20

    .line 948
    :goto_23
    if-nez v54, :cond_1a

    if-eqz v55, :cond_31

    .line 958
    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_24
    :try_start_34
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "CommonTimeManagementService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v41, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v41

    invoke-direct {v0, v10}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_22

    .line 960
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_35
    const-string/jumbo v3, "commontime_management"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_33

    move-object/from16 v40, v41

    .line 965
    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_25
    if-nez v54, :cond_1b

    .line 967
    :try_start_36
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v38, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v38

    invoke-direct {v0, v10}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_23

    .line 974
    :cond_1b
    :goto_26
    if-nez v56, :cond_1c

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 979
    :cond_1c
    if-nez v56, :cond_1d

    if-eqz v51, :cond_32

    .line 989
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_27
    if-nez v56, :cond_1e

    .line 990
    const-string/jumbo v3, "graphicsstats"

    .line 991
    new-instance v4, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v4, v10}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 990
    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 994
    :cond_1e
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 995
    const v4, 0x11200a3

    .line 994
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 997
    :try_start_37
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Gesture Sensor Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v68, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v68

    move-object/from16 v1, v74

    invoke-direct {v0, v10, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_25

    .line 999
    .end local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v68, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_38
    const-string/jumbo v3, "gesture"

    move-object/from16 v0, v68

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_31

    move-object/from16 v67, v68

    .line 1005
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_1f
    :goto_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.print"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.print.PrintManagerService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1009
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.hardware.hdmi.cec"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1017
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.software.live_tv"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1021
    :cond_22
    if-nez v56, :cond_23

    .line 1023
    :try_start_39
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Media Router Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v82, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v82

    invoke-direct {v0, v10}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_26

    .line 1025
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3a
    const-string/jumbo v3, "media_router"

    move-object/from16 v0, v82

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_30

    move-object/from16 v81, v82

    .line 1030
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1035
    :try_start_3b
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "BackgroundDexOptService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-wide/16 v4, 0x0

    invoke-static {v10, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_27

    .line 1043
    :cond_23
    :goto_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1046
    .end local v94    # "notification":Landroid/app/INotificationManager;
    :goto_2b
    if-nez v56, :cond_24

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1051
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "adb_port"

    .line 1052
    const-string/jumbo v5, "service.adb.tcp.port"

    const-string/jumbo v8, "-1"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1051
    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1056
    const-string/jumbo v4, "adb_port"

    invoke-static {v4}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1057
    new-instance v5, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/4 v8, 0x0

    .line 1055
    invoke-virtual {v3, v4, v8, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1061
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v95

    .line 1062
    .local v95, "safeMode":Z
    if-eqz v95, :cond_33

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1065
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1072
    :goto_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v85

    .end local v85    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v85, Lcom/android/server/MmsServiceBroker;

    .line 1076
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_3c
    invoke-static/range {v65 .. v65}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v98

    .line 1077
    .local v98, "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v45

    .line 1078
    .local v45, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1079
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 1080
    .local v37, "baseObject":Ljava/lang/Object;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "run"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v83

    .line 1081
    .local v83, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    move-object/from16 v0, v83

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1082
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v83

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/InstantiationException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_3c} :catch_28

    .line 1095
    .end local v37    # "baseObject":Ljava/lang/Object;
    .end local v45    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v83    # "method":Ljava/lang/reflect/Method;
    .end local v98    # "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2d
    :try_start_3d
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_29

    .line 1100
    :goto_2e
    if-eqz v79, :cond_25

    .line 1102
    :try_start_3e
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2a

    .line 1109
    :cond_25
    :goto_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x1e0

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1114
    :try_start_3f
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2b

    .line 1119
    :goto_30
    if-eqz v95, :cond_26

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1126
    :cond_26
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    .line 1127
    .local v42, "config":Landroid/content/res/Configuration;
    new-instance v84, Landroid/util/DisplayMetrics;

    invoke-direct/range {v84 .. v84}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1128
    .local v84, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {v10, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/view/WindowManager;

    .line 1129
    .local v110, "w":Landroid/view/WindowManager;
    invoke-interface/range {v110 .. v110}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v84

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1130
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v42

    move-object/from16 v1, v84

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1133
    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v102

    .line 1134
    .local v102, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v102 .. v102}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v3

    if-eqz v3, :cond_27

    .line 1135
    invoke-virtual/range {v102 .. v102}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1140
    :cond_27
    :try_start_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_2c

    .line 1146
    :goto_31
    :try_start_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2d

    .line 1153
    :goto_32
    :try_start_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v95

    invoke-virtual {v3, v0, v4}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2e

    .line 1158
    :goto_33
    if-eqz v67, :cond_28

    .line 1160
    :try_start_43
    invoke-virtual/range {v67 .. v67}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2f

    .line 1167
    :cond_28
    :goto_34
    move-object v12, v7

    .line 1168
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1169
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1170
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v43

    .line 1171
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v89

    .line 1172
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v111

    .line 1173
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v72

    .line 1174
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v77

    .line 1175
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v49

    .line 1176
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v92

    .line 1177
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v40

    .line 1178
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v105

    .line 1179
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v100

    .line 1180
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v33

    .line 1181
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v74

    .line 1182
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v103

    .line 1183
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v81

    .line 1184
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v35

    .line 1185
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v85

    .line 1192
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 430
    return-void

    .line 497
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v84    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "safeMode":Z
    .end local v102    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v110    # "w":Landroid/view/WindowManager;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v69    # "hallSwitch":Lcom/android/server/HallSwitchObserver;
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v86    # "mountService":Landroid/os/storage/IMountService;
    .restart local v87    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v96    # "serial":Lcom/android/server/SerialService;
    .local v99, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    .local v114, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v62

    .line 498
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v62, "e":Ljava/lang/Throwable;
    :goto_35
    :try_start_44
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Failure starting Account Manager"

    move-object/from16 v0, v62

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_44} :catch_1

    goto/16 :goto_0

    .line 558
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v61

    .local v61, "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v103, v104

    .line 559
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .end local v114    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_36
    const-string/jumbo v3, "System"

    const-string/jumbo v4, "******************************************"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string/jumbo v3, "System"

    const-string/jumbo v4, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 503
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v114    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 529
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v113    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 547
    .local v114, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2b
    :try_start_45
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 548
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "No Bluetooth Service (factory test)"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 558
    .end local v114    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v74, v75

    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v108, v109

    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .local v108, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_36

    .line 549
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v114    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2c
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 550
    const-string/jumbo v4, "android.hardware.bluetooth"

    .line 549
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 551
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 552
    :cond_2d
    if-eqz v52, :cond_2e

    .line 553
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Bluetooth Service disabled by config"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 555
    :cond_2e
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Bluetooth Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/BluetoothService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_2

    goto/16 :goto_3

    .line 581
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .end local v113    # "watchdog":Lcom/android/server/Watchdog;
    .end local v114    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v94, "notification":Landroid/app/INotificationManager;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v62

    .line 582
    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 589
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v62

    .line 590
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 596
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v62

    .line 597
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 608
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_2f
    :try_start_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v4, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 610
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 609
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_6

    move-result-object v86

    .local v86, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_8

    .line 611
    .local v86, "mountService":Landroid/os/storage/IMountService;
    :catch_6
    move-exception v62

    .line 612
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 623
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v86    # "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v62

    .line 624
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 639
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v62

    .line 640
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 659
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v62

    .line 660
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 669
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v62

    .line 670
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 679
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v7, v87

    .line 680
    .end local v87    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_3a
    const-string/jumbo v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 689
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v62

    .line 690
    .end local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 699
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v62

    .line 700
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v3, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 707
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v91

    .line 708
    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_3d
    const-string/jumbo v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 718
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v88

    .line 719
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_3e
    const-string/jumbo v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 741
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v62

    .line 742
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 750
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v99    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_11
    move-exception v62

    .line 751
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 760
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v62

    .line 761
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 772
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_30
    :try_start_47
    invoke-interface/range {v86 .. v86}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_47} :catch_13

    goto/16 :goto_16

    .line 773
    :catch_13
    move-exception v71

    .local v71, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_16

    .line 780
    .end local v71    # "ignored":Landroid/os/RemoteException;
    :catch_14
    move-exception v62

    .line 781
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 787
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v62

    .line 788
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 803
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v94, "notification":Landroid/app/INotificationManager;
    :catch_16
    move-exception v62

    .line 804
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 811
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v62

    .line 812
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 821
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v62

    .line 822
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 830
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v62

    .line 831
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 840
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v62

    .line 841
    .end local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 849
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v62

    .line 850
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 868
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v66    # "file":Ljava/io/File;
    :catch_1c
    move-exception v62

    .line 869
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Failure starting HallSwitchObserver"

    move-object/from16 v0, v62

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 879
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v66    # "file":Ljava/io/File;
    .end local v69    # "hallSwitch":Lcom/android/server/HallSwitchObserver;
    :catch_1d
    move-exception v62

    .line 880
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 901
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v62

    .line 902
    .end local v96    # "serial":Lcom/android/server/SerialService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Failure starting SerialService"

    move-object/from16 v0, v62

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 932
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v62

    .line 933
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 944
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v62

    .line 945
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 950
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_31
    :try_start_48
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "NetworkTimeUpdateService"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v93, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v93

    invoke-direct {v0, v10}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_21

    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v92, v93

    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_24

    .line 952
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_21
    move-exception v62

    .line 953
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 961
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_22
    move-exception v62

    .line 962
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string/jumbo v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 969
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v62

    .line 970
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 981
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_32
    :try_start_49
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Assets Atlas Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v34, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v34

    invoke-direct {v0, v10}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_24

    .line 983
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_4a
    const-string/jumbo v3, "assetatlas"

    move-object/from16 v0, v34

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_32

    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_27

    .line 984
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_24
    move-exception v62

    .line 985
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string/jumbo v3, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1000
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v62

    .line 1001
    .end local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string/jumbo v3, "SystemServer"

    const-string/jumbo v4, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v62

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1026
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v62

    .line 1027
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string/jumbo v3, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1037
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v62

    .line 1038
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1068
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v95    # "safeMode":Z
    :cond_33
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2c

    .line 1087
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_28
    move-exception v60

    .line 1088
    .local v60, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to start  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string/jumbo v3, "SystemServer"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 1096
    .end local v60    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_29
    move-exception v62

    .line 1097
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1103
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v62

    .line 1104
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1115
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v62

    .line 1116
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1141
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v42    # "config":Landroid/content/res/Configuration;
    .restart local v84    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v102    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v110    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v62

    .line 1142
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1147
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v62

    .line 1148
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1154
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v62

    .line 1155
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1161
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v62

    .line 1162
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1026
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v84    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "safeMode":Z
    .end local v102    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v110    # "w":Landroid/view/WindowManager;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    :catch_30
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v81, v82

    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_48

    .line 1000
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_31
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v67, v68

    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v67, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_47

    .line 984
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v67, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_32
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_46

    .line 961
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_33
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_45

    .line 901
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v97    # "serial":Lcom/android/server/SerialService;
    :catch_34
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v96, v97

    .end local v97    # "serial":Lcom/android/server/SerialService;
    .local v96, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_44

    .line 849
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v69    # "hallSwitch":Lcom/android/server/HallSwitchObserver;
    .local v96, "serial":Lcom/android/server/SerialService;
    :catch_35
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_43

    .line 840
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_36
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v111, v112

    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v111, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_42

    .line 811
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v111, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_37
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v49, v50

    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_41

    .line 803
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    :catch_38
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v77, v78

    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .local v77, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_40

    .line 741
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v77, "location":Lcom/android/server/LocationManagerService;
    .local v94, "notification":Landroid/app/INotificationManager;
    .restart local v99    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_39
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3f

    .line 718
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_3a
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3e

    .line 707
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_3b
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3d

    .line 699
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3c
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v89, v90

    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3c

    .line 689
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3d
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v105, v106

    .end local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v105, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3b

    .line 679
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v105, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3e
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3a

    .line 659
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v87    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3f
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v100, v101

    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v100, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_39

    .line 639
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v100, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_40
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_38

    .line 630
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_41
    move-exception v59

    .local v59, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .line 581
    .end local v59    # "e":Landroid/os/RemoteException;
    .restart local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v86    # "mountService":Landroid/os/storage/IMountService;
    :catch_42
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v72, v73

    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v72, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_37

    .line 558
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v103, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v108, "vibrator":Lcom/android/server/VibratorService;
    .local v114, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_43
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_36

    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_44
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v103, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_36

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v63, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_36

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    :catch_46
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v108, v109

    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .local v108, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    :catch_47
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v63, v64

    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v108, v109

    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .line 497
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v63    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v108, "vibrator":Lcom/android/server/VibratorService;
    :catch_48
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v64    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v86    # "mountService":Landroid/os/storage/IMountService;
    .end local v87    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "vibrator":Lcom/android/server/VibratorService;
    .end local v114    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v111    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_34
    move-object/from16 v2, v88

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v6, v91

    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_14

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v87    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v105    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_35
    move-object/from16 v7, v87

    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto/16 :goto_e

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_36
    move-object/from16 v2, v88

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v6, v91

    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v7, v87

    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto/16 :goto_2b
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1321
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1322
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1321
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1324
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1319
    return-void
.end method
