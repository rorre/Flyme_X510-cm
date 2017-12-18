.class Lcom/android/server/wifi/WifiController$ApEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApEnabledState"
.end annotation


# instance fields
.field private mPendingState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    .line 784
    return-void
.end method

.method private getNextWifiState()Lcom/android/internal/util/State;
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->getWifiSavedState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v0

    return-object v0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get18(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v0

    return-object v0

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 813
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 879
    :pswitch_0
    return v1

    .line 815
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 821
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    .line 881
    :cond_0
    :goto_1
    return v5

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 825
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 827
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 828
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApEnabledState CMD_WIFI_TOGGLED transition To ApStaEnabledState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 833
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 834
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto :goto_1

    .line 839
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 841
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_1

    .line 843
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 844
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto :goto_1

    .line 849
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-nez v0, :cond_5

    .line 854
    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get7(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 857
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;)V

    goto/16 :goto_1

    .line 861
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 866
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 868
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 872
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get8(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto/16 :goto_1

    .line 870
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_2

    .line 876
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiController$ApEnabledState;->getNextWifiState()Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x26001
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
