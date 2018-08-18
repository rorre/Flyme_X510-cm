.class Lcom/android/server/wifi/SoftApStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SoftApStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SoftApStateMachine;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "skipUnload":Z
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApStateMachine;->-get12(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApStateMachine;->-get12(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    .line 327
    .local v1, "wifiState":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 328
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 329
    :cond_0
    const-string/jumbo v2, "SoftApStateMachine"

    const-string/jumbo v3, "Avoid unload driver, WIFI_STATE is enabled/enabling"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x1

    .line 333
    .end local v1    # "wifiState":I
    :cond_1
    if-nez v0, :cond_2

    .line 334
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApStateMachine;->-get11(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->stopHal()V

    .line 335
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApStateMachine;->-get11(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->unloadDriver()Z

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/SoftApStateMachine;->-get10(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v2

    if-nez v2, :cond_3

    .line 338
    iget-object v2, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    .line 339
    iget-object v3, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/SoftApStateMachine;->-get4(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/FrameworkFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/SoftApStateMachine;->-get2(Lcom/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/SoftApStateMachine;->-get0(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/server/wifi/BackupManagerProxy;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->makeApConfigStore(Landroid/content/Context;Lcom/android/server/wifi/BackupManagerProxy;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v3

    .line 338
    invoke-static {v2, v3}, Lcom/android/server/wifi/SoftApStateMachine;->-set0(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;

    .line 323
    :cond_3
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 359
    return v2

    .line 346
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap1(Lcom/android/server/wifi/SoftApStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get9(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap4(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    .line 361
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    const/16 v1, 0xe

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap3(Lcom/android/server/wifi/SoftApStateMachine;II)V

    .line 355
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/SoftApStateMachine$InitialState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/SoftApStateMachine;->-get5(Lcom/android/server/wifi/SoftApStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap4(Lcom/android/server/wifi/SoftApStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x20015
        :pswitch_0
    .end packed-switch
.end method
