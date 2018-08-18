.class Lcom/android/server/wifi/SoftApStateMachine$SoftApState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;
    }
.end annotation


# instance fields
.field private mSoftApManager:Lcom/android/server/wifi/SoftApManager;

.field final synthetic this$0:Lcom/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap0(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/os/Message;

    move-result-object v10

    .line 385
    .local v10, "message":Landroid/os/Message;
    iget v0, v10, Landroid/os/Message;->what:I

    const v1, 0x20015

    if-ne v0, v1, :cond_2

    .line 386
    iget-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 388
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-get10(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->getApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap2(Lcom/android/server/wifi/SoftApStateMachine;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-get4(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/SoftApStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApStateMachine;->-get11(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApStateMachine;->-get7(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 402
    iget-object v5, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApStateMachine;->-get1(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/SoftApStateMachine;->-get3(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiCountryCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiCountryCode;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 403
    iget-object v7, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/SoftApStateMachine;->-get10(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiApConfigStore;->getAllowed2GChannel()Ljava/util/ArrayList;

    move-result-object v7

    .line 404
    new-instance v8, Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;

    invoke-direct {v8, p0, v11}, Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;-><init>(Lcom/android/server/wifi/SoftApStateMachine$SoftApState;Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;)V

    .line 400
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wifi/FrameworkFacade;->makeSoftApManager(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiNative;Landroid/os/INetworkManagementService;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wifi/SoftApManager$Listener;)Lcom/android/server/wifi/SoftApManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    .line 405
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-get8(Lcom/android/server/wifi/SoftApStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get8(Lcom/android/server/wifi/SoftApStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager;->setSapChannel(I)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get6(Lcom/android/server/wifi/SoftApStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApManager;->setSapInterfaceName(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/SoftApManager;->start(Landroid/net/wifi/WifiConfiguration;)V

    .line 383
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-get10(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->setApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 411
    .end local v9    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal transition to SoftApState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    .line 416
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 423
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 437
    const/4 v0, 0x0

    return v0

    .line 428
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->mSoftApManager:Lcom/android/server/wifi/SoftApManager;

    invoke-virtual {v0}, Lcom/android/server/wifi/SoftApManager;->stop()V

    .line 439
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 431
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get5(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap4(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 434
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get5(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap4(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
