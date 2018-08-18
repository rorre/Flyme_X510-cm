.class public Lcom/android/server/wifi/SoftApManager;
.super Ljava/lang/Object;
.source "SoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApManager$Listener;,
        Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftApManager"


# instance fields
.field private final mAllowed2GChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCountryCode:Ljava/lang/String;

.field private mCreateNewInterface:Z

.field private mInterfaceName:Ljava/lang/String;

.field private final mListener:Lcom/android/server/wifi/SoftApManager$Listener;

.field private final mNmService:Landroid/os/INetworkManagementService;

.field private mSoftApChannel:I

.field private final mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/SoftApManager;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/SoftApManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/SoftApManager;->stopSoftAp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SoftApManager;II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SoftApManager;->updateApState(II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "nmService"    # Landroid/os/INetworkManagementService;
    .param p4, "countryCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/android/server/wifi/SoftApManager$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/android/server/wifi/WifiNative;",
            "Landroid/os/INetworkManagementService;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/SoftApManager$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mCreateNewInterface:Z

    .line 55
    iput v0, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApChannel:I

    .line 80
    new-instance v0, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;-><init>(Lcom/android/server/wifi/SoftApManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    .line 82
    iput-object p3, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    .line 83
    iput-object p2, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 84
    iput-object p4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/android/server/wifi/SoftApManager;->mAllowed2GChannels:Ljava/util/ArrayList;

    .line 86
    iput-object p6, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    .line 88
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private startSoftAp(Landroid/net/wifi/WifiConfiguration;)I
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Unable to start soft AP without configuration"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v7

    .line 146
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 149
    .local v1, "localConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wifi/SoftApManager;->mAllowed2GChannels:Ljava/util/ArrayList;

    .line 148
    invoke-static {v3, v4, v5, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 150
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 151
    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Failed to update AP band and channel"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v2

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mCountryCode:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHal(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-ne v3, v8, :cond_2

    .line 163
    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Failed to set country code, required for setting up soft ap in 5GHz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v7

    .line 170
    :cond_2
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wifi/SoftApManager;->mCreateNewInterface:Z

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->createSoftApInterface(Ljava/lang/String;)V

    .line 172
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-eq v3, v8, :cond_3

    .line 173
    iget v3, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApChannel:I

    if-eqz v3, :cond_3

    .line 174
    const/4 v3, 0x0

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 175
    iget v3, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApChannel:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 178
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v3, v1, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    const-string/jumbo v3, "SoftApManager"

    const-string/jumbo v4, "Soft AP is started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v6

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SoftApManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in starting soft AP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return v7
.end method

.method private stopSoftAp()V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 195
    iget-boolean v1, p0, Lcom/android/server/wifi/SoftApManager;->mCreateNewInterface:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/server/wifi/SoftApManager;->mNmService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->deleteSoftApInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    const-string/jumbo v1, "SoftApManager"

    const-string/jumbo v2, "Soft AP is stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SoftApManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in stopping soft AP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private updateApState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mListener:Lcom/android/server/wifi/SoftApManager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wifi/SoftApManager$Listener;->onStateChanged(II)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public setSapChannel(I)V
    .locals 0
    .param p1, "channel"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/server/wifi/SoftApManager;->mSoftApChannel:I

    .line 121
    return-void
.end method

.method public setSapInterfaceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/wifi/SoftApManager;->mInterfaceName:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/SoftApManager;->mCreateNewInterface:Z

    .line 129
    return-void
.end method

.method public start(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/SoftApManager;->mStateMachine:Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager$SoftApStateMachine;->sendMessage(I)V

    .line 102
    return-void
.end method
