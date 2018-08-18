.class public Lcom/android/server/wifi/SoftApStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApStateMachine$InitialState;,
        Lcom/android/server/wifi/SoftApStateMachine$SoftApState;
    }
.end annotation


# static fields
.field static final BASE:I = 0x20000

.field static final CMD_AP_STOPPED:I = 0x20018

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20016

.field static final CMD_STOP_AP:I = 0x20017

.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SoftApStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388


# instance fields
.field private final mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private mCurrentUserId:I

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mSoftApChannel:I

.field private mSoftApState:Lcom/android/internal/util/State;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiLogger:Lcom/android/server/wifi/BaseWifiLogger;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/FrameworkFacade;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/SoftApStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mSoftApChannel:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/SoftApStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApStateMachine;->setupDriverForSoftAp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/SoftApStateMachine;II)V
    .locals 0
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApStateMachine;->setWifiApState(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SoftApStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SoftApStateMachine;->DBG:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/FrameworkFacade;Ljava/lang/String;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiMonitor;Lcom/android/server/wifi/BackupManagerProxy;Landroid/os/INetworkManagementService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/wifi/WifiCountryCode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "intf"    # Ljava/lang/String;
    .param p5, "configManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p6, "wifiMonitor"    # Lcom/android/server/wifi/WifiMonitor;
    .param p7, "backupManagerProxy"    # Lcom/android/server/wifi/BackupManagerProxy;
    .param p8, "NwService"    # Landroid/os/INetworkManagementService;
    .param p9, "BatteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p10, "countryCode"    # Lcom/android/server/wifi/WifiCountryCode;

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string/jumbo v0, "SoftApStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/android/server/wifi/Clock;

    invoke-direct {v0}, Lcom/android/server/wifi/Clock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mClock:Lcom/android/server/wifi/Clock;

    .line 94
    const-string/jumbo v0, "softap0"

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mSoftApChannel:I

    .line 98
    iput v1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mCurrentUserId:I

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 107
    iput v1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mTetherToken:I

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 134
    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 139
    new-instance v0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SoftApStateMachine$InitialState;-><init>(Lcom/android/server/wifi/SoftApStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 141
    new-instance v0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;-><init>(Lcom/android/server/wifi/SoftApStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    .line 157
    iput-object p1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 159
    iput-object p3, p0, Lcom/android/server/wifi/SoftApStateMachine;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 160
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 161
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->initContext(Landroid/content/Context;)V

    .line 162
    iput-object p4, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 163
    iput-object p7, p0, Lcom/android/server/wifi/SoftApStateMachine;->mBackupManagerProxy:Lcom/android/server/wifi/BackupManagerProxy;

    .line 164
    iput-object p8, p0, Lcom/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 165
    iput-object p9, p0, Lcom/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 166
    iput-object p5, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 167
    iput-object p6, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 168
    iput-object p10, p0, Lcom/android/server/wifi/SoftApStateMachine;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mSoftApState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApStateMachine;->start()V

    .line 154
    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 294
    :cond_0
    return-void
.end method

.method private obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 449
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 450
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 451
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 452
    return-object v0
.end method

.method private setWifiApState(II)V
    .locals 6
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    .line 237
    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 240
    .local v2, "previousWifiApState":I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_3

    .line 241
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 252
    sget-boolean v3, Lcom/android/server/wifi/SoftApStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SoftApStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiApState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wifi/SoftApStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const/16 v3, 0xe

    if-ne p1, v3, :cond_2

    .line 260
    const-string/jumbo v3, "wifi_ap_error_code"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 236
    return-void

    .line 242
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 243
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoftApStateMachine"

    const-string/jumbo v4, "Failed to note battery stats in wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupDriverForSoftAp()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 268
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    const-string/jumbo v2, "SoftApStateMachine"

    const-string/jumbo v3, "Failed to load driver for softap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v2, 0x0

    return v2

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    .line 274
    .local v1, "wifiState":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 275
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 276
    :cond_1
    const-string/jumbo v2, "SoftApStateMachine"

    const-string/jumbo v3, "Wifi is in enabled state skip firmware reload"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v5

    .line 282
    .end local v1    # "wifiState":I
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v4, "AP"

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-boolean v2, Lcom/android/server/wifi/SoftApStateMachine;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SoftApStateMachine"

    const-string/jumbo v3, "Firmware reloaded in AP mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v2

    if-nez v2, :cond_4

    .line 288
    const-string/jumbo v2, "SoftApStateMachine"

    const-string/jumbo v3, "Failed to start HAL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_4
    return v5

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SoftApStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to reload AP firmware "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 178
    if-lez p1, :cond_0

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/SoftApStateMachine;->DBG:Z

    .line 177
    :goto_0
    return-void

    .line 181
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/SoftApStateMachine;->DBG:Z

    goto :goto_0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 196
    if-eqz p2, :cond_0

    .line 197
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 195
    :goto_0
    return-void

    .line 199
    :cond_0
    const v0, 0x20017

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setSoftApChannel(I)V
    .locals 0
    .param p1, "channel"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mSoftApChannel:I

    .line 189
    return-void
.end method

.method public setSoftApInterfaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/wifi/SoftApStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 203
    return-void
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    const-string/jumbo v0, "[invalid state]"

    return-object v0

    .line 221
    :pswitch_0
    const-string/jumbo v0, "disabling"

    return-object v0

    .line 223
    :pswitch_1
    const-string/jumbo v0, "disabled"

    return-object v0

    .line 225
    :pswitch_2
    const-string/jumbo v0, "enabling"

    return-object v0

    .line 227
    :pswitch_3
    const-string/jumbo v0, "enabled"

    return-object v0

    .line 229
    :pswitch_4
    const-string/jumbo v0, "failed"

    return-object v0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
