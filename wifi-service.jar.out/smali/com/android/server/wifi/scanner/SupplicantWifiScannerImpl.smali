.class public Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.super Lcom/android/server/wifi/scanner/WifiScannerImpl;
.source "SupplicantWifiScannerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$2;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;,
        Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;
    }
.end annotation


# static fields
.field private static final ACTION_SCAN_PERIOD:Ljava/lang/String; = "com.android.server.util.SupplicantWifiScannerImpl.action.SCAN_PERIOD"

.field public static final BACKGROUND_PERIOD_ALARM_TAG:Ljava/lang/String; = "SupplicantWifiScannerImpl Background Scan Period"

.field private static final DBG:Z = false

.field private static final MAX_APS_PER_SCAN:I = 0x20

.field public static final MAX_HIDDEN_NETWORK_IDS_PER_SCAN:I = 0x10

.field private static final MAX_SCAN_BUCKETS:I = 0x10

.field private static final SCAN_BUFFER_CAPACITY:I = 0xa

.field private static final SCAN_TIMEOUT_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "SupplicantWifiScannerImpl"

.field public static final TIMEOUT_ALARM_TAG:Ljava/lang/String; = "SupplicantWifiScannerImpl Scan Timeout"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

.field private mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mBackgroundScanPaused:Z

.field private mBackgroundScanPeriodPending:Z

.field private mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private final mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

.field private mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

.field private final mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

.field private final mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

.field private final mHwPnoScanSupported:Z

.field private mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

.field private mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

.field private mNextBackgroundScanId:I

.field private mNextBackgroundScanPeriod:I

.field private mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field private mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

.field mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

.field mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSettingsLock:Ljava/lang/Object;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanPeriod()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->reportPnoScanFailure()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    .line 158
    new-instance v3, Lcom/android/server/wifi/scanner/NoBandChannelHelper;

    invoke-direct {v3}, Lcom/android/server/wifi/scanner/NoBandChannelHelper;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/scanner/ChannelHelper;Landroid/os/Looper;Lcom/android/server/wifi/Clock;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "channelHelper"    # Lcom/android/server/wifi/scanner/ChannelHelper;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "clock"    # Lcom/android/server/wifi/Clock;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    .line 75
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 76
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 77
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 78
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 81
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 82
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 83
    iput v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    .line 84
    iput v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanId:I

    .line 85
    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    .line 87
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    .line 90
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData;

    new-array v1, v3, [Landroid/net/wifi/ScanResult;

    invoke-direct {v0, v3, v3, v1}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    .line 89
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    .line 93
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    .line 96
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 97
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    invoke-direct {v0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    .line 100
    iput-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 104
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$1;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    .line 119
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$2;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 127
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$3;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 137
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 139
    iput-object p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    .line 140
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    .line 142
    iput-object p5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    .line 143
    new-instance v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/app/AlarmManager;Landroid/os/Handler;Lcom/android/server/wifi/Clock;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    .line 146
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    const v1, 0x112001b

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoScanSupported:Z

    .line 149
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->getInstance()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v3, 0x24011

    .line 149
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 151
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor;->getInstance()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    const v3, 0x24005

    .line 151
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/WifiMonitor;->registerHandler(Ljava/lang/String;ILandroid/os/Handler;)V

    .line 136
    return-void
.end method

.method private handleScanPeriod()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    .line 323
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 320
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleScanTimeout()V
    .locals 2

    .prologue
    .line 328
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    const-string/jumbo v1, "Timed out waiting for scan result from supplicant"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->reportScanFailure()V

    .line 330
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    .line 327
    return-void
.end method

.method private isDifferentPnoScanSettings(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)Z
    .locals 3
    .param p1, "newScanSettings"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    .prologue
    const/4 v0, 0x1

    .line 334
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p1, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 334
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isHwPnoScanRequired()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiNative$PnoSettings;->isConnected:Z

    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v0

    return v0
.end method

.method private isHwPnoScanRequired(Z)Z
    .locals 2
    .param p1, "isConnectedPno"    # Z

    .prologue
    .line 723
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoScanSupported:Z

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pauseHwPnoScan()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->forceStopPnoScan()V

    .line 708
    return-void
.end method

.method private pollLatestScanData()V
    .locals 22

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 546
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v19

    .line 548
    return-void

    .line 552
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->getScanResults()Ljava/util/ArrayList;

    move-result-object v12

    .line 553
    .local v12, "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v18, "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v8, "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v10, "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 557
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v14

    .line 558
    .local v14, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v14, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long v20, v2, v4

    .line 559
    .local v20, "timestamp_ms":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-wide v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->startTime:J

    cmp-long v2, v20, v2

    if-lez v2, :cond_3

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    if-eqz v2, :cond_1

    .line 561
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v2, :cond_2

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 565
    iget v3, v14, Landroid/net/wifi/ScanResult;->frequency:I

    .line 564
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    move-result v2

    .line 563
    if-eqz v2, :cond_2

    .line 566
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    if-eqz v2, :cond_3

    .line 569
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 576
    .end local v14    # "result":Landroid/net/wifi/ScanResult;
    .end local v20    # "timestamp_ms":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    if-eqz v2, :cond_b

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_5

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    .line 580
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "scanResult$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 582
    .local v15, "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v15, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 545
    .end local v8    # "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v10    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v11    # "i":I
    .end local v12    # "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v15    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v16    # "scanResult$iterator":Ljava/util/Iterator;
    .end local v18    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2

    .line 587
    .restart local v8    # "backgroundScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v10    # "hwPnoScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v11    # "i":I
    .restart local v12    # "nativeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .restart local v18    # "singleScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    :try_start_2
    sget-object v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->maxAps:I

    .line 589
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 588
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v0, v2, [Landroid/net/wifi/ScanResult;

    move-object/from16 v17, v0

    .line 590
    .local v17, "scanResultsArray":[Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v11, v2, :cond_6

    .line 591
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    aput-object v2, v17, v11

    .line 590
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 594
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_7

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    new-instance v3, Landroid/net/wifi/WifiScanner$ScanData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v4, v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v5, v0}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(II[Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->add(Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 600
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_9

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    .line 613
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 614
    const/4 v3, 0x0

    .line 613
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 618
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    if-eqz v2, :cond_b

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    invoke-virtual {v2, v8}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->processScan(Ljava/util/List;)I

    move-result v9

    .line 620
    .local v9, "event":I
    sget v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_a

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    sget v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_FOUND:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->getLastResults(I)[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 621
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V

    .line 624
    :cond_a
    sget v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_b

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    sget v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->EVENT_LOST:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->getLastResults(I)[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 625
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApLost([Landroid/net/wifi/ScanResult;)V

    .line 631
    .end local v9    # "event":I
    .end local v17    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v2, :cond_e

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_e

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    if-eqz v2, :cond_d

    .line 634
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "scanResult$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 636
    .restart local v15    # "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 637
    const/4 v3, 0x0

    .line 636
    invoke-interface {v2, v15, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;I)V

    goto :goto_4

    .line 605
    .end local v15    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v16    # "scanResult$iterator":Ljava/util/Iterator;
    .restart local v17    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    if-nez v2, :cond_9

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    move-result v2

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->capacity()I

    move-result v3

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v4, v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportPercentThreshold:I

    .line 608
    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    .line 607
    if-ge v2, v3, :cond_8

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    move-result v2

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v3, v3, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    .line 611
    if-lt v2, v3, :cond_9

    goto/16 :goto_3

    .line 640
    .end local v17    # "scanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_d
    sget-object v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->SCAN_RESULT_SORT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 641
    new-instance v2, Landroid/net/wifi/WifiScanner$ScanData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget v3, v3, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v4, v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    invoke-virtual {v4}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isAllChannels()Z

    move-result v6

    .line 643
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/wifi/ScanResult;

    .line 641
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 645
    const/4 v3, 0x0

    .line 644
    invoke-interface {v2, v3}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 648
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    if-eqz v2, :cond_10

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v2, :cond_10

    .line 650
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v13, v2, [Landroid/net/wifi/ScanResult;

    .line 651
    .local v13, "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    :goto_5
    array-length v2, v13

    if-ge v11, v2, :cond_f

    .line 652
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    aput-object v2, v13, v11

    .line 651
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 654
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v2, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v2, v13}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 657
    .end local v13    # "pnoScanResultsArray":[Landroid/net/wifi/ScanResult;
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v19

    .line 544
    return-void
.end method

.method private processPendingScans()V
    .locals 27

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 343
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v3, v3, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    if-eqz v3, :cond_6

    .line 347
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v13

    .line 348
    .local v13, "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 350
    .local v18, "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;-><init>(J)V

    .line 353
    .local v2, "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    if-nez v3, :cond_a

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v3, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 357
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    .line 358
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 359
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 360
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v3, :cond_a

    .line 363
    const/4 v5, 0x4

    .line 364
    .local v5, "reportEvents":I
    const/16 v16, 0x0

    .local v16, "bucket_id":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 366
    aget-object v14, v3, v16

    .line 368
    .local v14, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    iget v4, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    .line 369
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 368
    div-int/2addr v4, v6

    rem-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 370
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 372
    or-int/lit8 v5, v5, 0x1

    .line 374
    :cond_2
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 376
    or-int/lit8 v5, v5, 0x2

    .line 379
    :cond_3
    iget v3, v14, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_4

    .line 381
    and-int/lit8 v5, v5, -0x5

    .line 384
    :cond_4
    invoke-virtual {v13, v14}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .end local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .end local v5    # "reportEvents":I
    .end local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v14    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    .end local v16    # "bucket_id":I
    .end local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6
    monitor-exit v26

    .line 344
    return-void

    .line 387
    .restart local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .restart local v5    # "reportEvents":I
    .restart local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .restart local v16    # "bucket_id":I
    .restart local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 388
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanId:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanId:I

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v4, v4, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    .line 390
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v6, v6, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    .line 391
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v7, v7, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    .line 388
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setBackgroundScan(IIIII)V

    .line 394
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v0, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    move-object/from16 v19, v0

    .line 395
    .local v19, "hiddenNetworkIds":[I
    if-eqz v19, :cond_9

    .line 396
    move-object/from16 v0, v19

    array-length v3, v0

    .line 397
    const/16 v4, 0x10

    .line 396
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 398
    .local v21, "numHiddenNetworkIds":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 399
    aget v3, v19, v20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 403
    .end local v20    # "i":I
    .end local v21    # "numHiddenNetworkIds":I
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mNextBackgroundScanPeriod:I

    .line 404
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    .line 405
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 407
    const-string/jumbo v10, "SupplicantWifiScannerImpl Background Scan Period"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    .line 405
    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 411
    .end local v5    # "reportEvents":I
    .end local v16    # "bucket_id":I
    .end local v19    # "hiddenNetworkIds":[I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v3, :cond_e

    .line 412
    const/16 v22, 0x0

    .line 413
    .local v22, "reportFullResults":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    invoke-virtual {v3}, Lcom/android/server/wifi/scanner/ChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    move-result-object v23

    .line 414
    .local v23, "singleScanFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_c

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    .line 415
    aget-object v15, v3, v20

    .line 417
    .local v15, "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v3, v15, Lcom/android/server/wifi/WifiNative$BucketSettings;->report_events:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b

    .line 419
    const/16 v22, 0x1

    .line 421
    :cond_b
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    .line 422
    invoke-virtual {v13, v15}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V

    .line 414
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 425
    .end local v15    # "bucketSettings":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 424
    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iget-object v0, v3, Lcom/android/server/wifi/WifiNative$ScanSettings;->hiddenNetworkIds:[I

    move-object/from16 v19, v0

    .line 427
    .restart local v19    # "hiddenNetworkIds":[I
    if-eqz v19, :cond_d

    .line 428
    move-object/from16 v0, v19

    array-length v3, v0

    .line 429
    const/16 v4, 0x10

    .line 428
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 430
    .restart local v21    # "numHiddenNetworkIds":I
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 431
    aget v3, v19, v20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 434
    .end local v21    # "numHiddenNetworkIds":I
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 435
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 438
    .end local v19    # "hiddenNetworkIds":[I
    .end local v20    # "i":I
    .end local v22    # "reportFullResults":Z
    .end local v23    # "singleScanFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    :cond_e
    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    if-nez v3, :cond_f

    iget-boolean v3, v2, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    if-eqz v3, :cond_10

    .line 439
    :cond_f
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 467
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoScanRequired()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->setHwPnoScan([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V

    .line 472
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isDifferentPnoScanSettings(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->restartHwPnoScan()Z

    move-result v24

    .line 477
    .local v24, "status":Z
    :goto_4
    if-eqz v24, :cond_15

    .line 478
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v24    # "status":Z
    :cond_11
    :goto_5
    monitor-exit v26

    .line 338
    return-void

    .line 440
    :cond_12
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->pauseHwPnoScan()V

    .line 441
    invoke-virtual {v13}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getSupplicantScanFreqs()Ljava/util/Set;

    move-result-object v17

    .line 442
    .local v17, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wifi/WifiNative;->scan(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v25

    .line 443
    .local v25, "success":Z
    if-eqz v25, :cond_13

    .line 450
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    .line 451
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3a98

    add-long/2addr v8, v10

    .line 453
    const-string/jumbo v10, "SupplicantWifiScannerImpl Scan Timeout"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    .line 451
    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 339
    .end local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .end local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .end local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v25    # "success":Z
    :catchall_0
    move-exception v3

    monitor-exit v26

    throw v3

    .line 455
    .restart local v2    # "newScanSettings":Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    .restart local v13    # "allFreqs":Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .restart local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v18    # "hiddenNetworkIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v25    # "success":Z
    :cond_13
    :try_start_3
    const-string/jumbo v3, "SupplicantWifiScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to start scan, freqs="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$4;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 475
    .end local v17    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v25    # "success":Z
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->startHwPnoScan()Z

    move-result v24

    .restart local v24    # "status":Z
    goto :goto_4

    .line 480
    :cond_15
    const-string/jumbo v3, "SupplicantWifiScannerImpl"

    const-string/jumbo v4, "Failed to start PNO scan"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mEventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;-><init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5
.end method

.method private reportPnoScanFailure()V
    .locals 2

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    .line 537
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 530
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reportScanFailure()V
    .locals 3

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-object v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 522
    const/4 v2, 0x3

    .line 521
    invoke-interface {v0, v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus(I)V

    .line 525
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 517
    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private restartHwPnoScan()Z
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->forceStopPnoScan()V

    .line 714
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->startPnoScan(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;)Z

    move-result v0

    return v0
.end method

.method private setNetworkPriorities([Lcom/android/server/wifi/WifiNative$PnoNetwork;)Z
    .locals 10
    .param p1, "networkList"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 674
    if-eqz p1, :cond_3

    .line 676
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, p1, v2

    .line 677
    .local v1, "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v6, v1, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    .line 678
    const-string/jumbo v7, "priority"

    .line 679
    iget v8, v1, Lcom/android/server/wifi/WifiNative$PnoNetwork;->priority:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 677
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 680
    const-string/jumbo v2, "SupplicantWifiScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Set priority failed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return v3

    .line 684
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 685
    const-string/jumbo v6, "wifi_auto_connect_type"

    .line 683
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 686
    .local v0, "autoConnectPolicy":I
    if-ne v0, v9, :cond_1

    .line 687
    const-string/jumbo v2, "SupplicantWifiScannerImpl"

    const-string/jumbo v3, "Do not enable network,since auto connect disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return v9

    .line 691
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v6, v1, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiNative;->enableNetworkWithoutConnect(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 692
    const-string/jumbo v2, "SupplicantWifiScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Enable network failed for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/wifi/WifiNative$PnoNetwork;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return v3

    .line 676
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "autoConnectPolicy":I
    .end local v1    # "network":Lcom/android/server/wifi/WifiNative$PnoNetwork;
    :cond_3
    return v9
.end method

.method private startHwPnoScan()Z
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncerListener:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->startPnoScan(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer$Listener;)Z

    move-result v0

    return v0
.end method

.method private stopHwPnoScan()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHwPnoDebouncer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$HwPnoDebouncer;->stopPnoScan()V

    .line 704
    return-void
.end method

.method private unscheduleScansLocked()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanPeriodListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    .line 313
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 166
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopHwPnoScan()V

    .line 167
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopBatchedScan()V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->resetHotlist()V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->untrackSignificantWifiChange()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 162
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getChannelHelper()Lcom/android/server/wifi/scanner/ChannelHelper;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mChannelHelper:Lcom/android/server/wifi/scanner/ChannelHelper;

    return-object v0
.end method

.method public getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3
    .param p1, "flush"    # Z

    .prologue
    .line 664
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->get()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    .line 666
    .local v0, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    if-eqz p1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;

    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 669
    return-object v0

    .line 664
    .end local v0    # "results":[Landroid/net/wifi/WifiScanner$ScanData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLatestSingleScanResult:Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method public getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 2
    .param p1, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .prologue
    const/4 v1, 0x0

    .line 176
    const v0, 0x7fffffff

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_cache_size:I

    .line 177
    const/16 v0, 0x10

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_buckets:I

    .line 178
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_ap_cache_per_scan:I

    .line 179
    const/16 v0, 0x8

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_rssi_sample_size:I

    .line 180
    const/16 v0, 0xa

    iput v0, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_scan_reporting_threshold:I

    .line 181
    iput v1, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_hotlist_bssids:I

    .line 182
    iput v1, p1, Lcom/android/server/wifi/WifiNative$ScanCapabilities;->max_significant_wifi_change_aps:I

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 514
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 501
    :sswitch_0
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    const-string/jumbo v1, "Scan failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 503
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->reportScanFailure()V

    .line 504
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    goto :goto_0

    .line 507
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mScanTimeoutListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 508
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->pollLatestScanData()V

    .line 509
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    goto :goto_0

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x24005 -> :sswitch_1
        0x24011 -> :sswitch_0
    .end sparse-switch
.end method

.method public isHwPnoSupported(Z)Z
    .locals 1
    .param p1, "isConnectedPno"    # Z

    .prologue
    .line 766
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->isHwPnoScanRequired(Z)Z

    move-result v0

    return v0
.end method

.method public pauseBatchedScan()V
    .locals 3

    .prologue
    .line 279
    iget-object v2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 284
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 286
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    .line 291
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->unscheduleScansLocked()V

    .line 293
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->getLatestBatchedScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    .line 294
    .local v0, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 298
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    .line 278
    return-void

    .line 279
    .end local v0    # "results":[Landroid/net/wifi/WifiScanner$ScanData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public resetHotlist()V
    .locals 2

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->clearSettings()V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 788
    return-void

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resetHwPnoList()Z
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    if-nez v0, :cond_0

    .line 752
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    const-string/jumbo v2, "No PNO scan running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 755
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 758
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopHwPnoScan()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public restartBatchedScan()V
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V

    .line 308
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    .line 309
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanPeriod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 302
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 6
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .prologue
    const/4 v5, 0x1

    .line 777
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 778
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    :try_start_0
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 782
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mHotlistChangeBuffer:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;

    iget-object v2, p1, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    iget v3, p1, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ChangeBuffer;->setSettings([Landroid/net/wifi/WifiScanner$BssidInfo;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 783
    return v5

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setHwPnoList(Lcom/android/server/wifi/WifiNative$PnoSettings;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$PnoSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .prologue
    const/4 v3, 0x0

    .line 734
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    if-eqz v0, :cond_0

    .line 736
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    const-string/jumbo v2, "Already running a PNO scan"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 737
    return v3

    .line 739
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 740
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPnoSettings:Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 741
    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$PnoSettings;->networkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->setNetworkPriorities([Lcom/android/server/wifi/WifiNative$PnoNetwork;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    return v3

    .line 743
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 744
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shouldScheduleBackgroundScanForHwPno()Z
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public startBatchedScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 6
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    const/4 v5, 0x0

    .line 220
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 221
    :cond_0
    const-string/jumbo v2, "SupplicantWifiScannerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid arguments for startBatched: settings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    const-string/jumbo v4, ",eventHandler="

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v5

    .line 226
    :cond_1
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    if-ltz v2, :cond_2

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->max_ap_per_scan:I

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    .line 227
    :cond_2
    return v5

    .line 229
    :cond_3
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ltz v2, :cond_4

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_5

    .line 230
    :cond_4
    return v5

    .line 232
    :cond_5
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    if-ltz v2, :cond_6

    .line 233
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_num_scans:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_7

    .line 234
    :cond_6
    return v5

    .line 236
    :cond_7
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    if-ltz v2, :cond_8

    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->report_threshold_percent:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_9

    .line 237
    :cond_8
    return v5

    .line 239
    :cond_9
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    if-gtz v2, :cond_a

    .line 240
    return v5

    .line 242
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-ge v1, v2, :cond_c

    .line 243
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->buckets:[Lcom/android/server/wifi/WifiNative$BucketSettings;

    aget-object v0, v2, v1

    .line 244
    .local v0, "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    iget v2, v0, Lcom/android/server/wifi/WifiNative$BucketSettings;->period_ms:I

    iget v3, p1, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 245
    return v5

    .line 242
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "bucket":Lcom/android/server/wifi/WifiNative$BucketSettings;
    :cond_c
    iget-object v3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->stopBatchedScan()V

    .line 255
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 256
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 257
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->handleScanPeriod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 249
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public startSingleScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 4
    .param p1, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p2, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    const/4 v3, 0x0

    .line 194
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 195
    :cond_0
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid arguments for startSingleScan: settings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string/jumbo v2, ",eventHandler="

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v3

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mLastScanSettings:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;

    iget-boolean v0, v0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    .line 199
    if-eqz v0, :cond_3

    .line 201
    :cond_2
    const-string/jumbo v0, "SupplicantWifiScannerImpl"

    const-string/jumbo v1, "A single scan is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v3

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 206
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingSingleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 207
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopBatchedScan()V
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mPendingBackgroundScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPaused:Z

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->mBackgroundScanPeriodPending:Z

    .line 272
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->unscheduleScansLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 274
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V

    .line 263
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p2, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .prologue
    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public untrackSignificantWifiChange()V
    .locals 0

    .prologue
    .line 804
    return-void
.end method
