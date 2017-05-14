.class public Lcom/mediatek/internal/telephony/NetworkManager;
.super Landroid/os/Handler;
.source "NetworkManager.java"


# static fields
.field protected static final EVENT_GET_AVAILABLE_NW:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static sNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mPhoneCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Initialize NetworkManager under airplane mode phoneCount= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/NetworkManager;->log(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NetworkManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/mediatek/internal/telephony/NetworkManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 39
    iput p2, p0, Lcom/mediatek/internal/telephony/NetworkManager;->mPhoneCount:I

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/NetworkManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/mediatek/internal/telephony/NetworkManager;->sNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/NetworkManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneCount"    # I
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 21
    const-class v1, Lcom/mediatek/internal/telephony/NetworkManager;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/NetworkManager;->sNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/mediatek/internal/telephony/NetworkManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/NetworkManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/internal/telephony/NetworkManager;->sNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/NetworkManager;->sNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[NetworkManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public getAvailableNetworks(JLandroid/os/Message;)V
    .locals 0
    .param p1, "subId"    # J
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 78
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/NetworkManager;->log(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 85
    :pswitch_0
    monitor-enter p0

    monitor-exit p0

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
