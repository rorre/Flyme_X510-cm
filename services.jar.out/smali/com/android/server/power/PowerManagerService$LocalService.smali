.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 4076
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public getFeature(I)I
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 4191
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-wrap7(I)I

    move-result v0

    return v0
.end method

.method public getLowPowerModeEnabled()Z
    .locals 2

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get11(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 4137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public powerHint(II)V
    .locals 1
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 4181
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap25(Lcom/android/server/power/PowerManagerService;II)V

    .line 4180
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .prologue
    .line 4144
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get11(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4143
    return-void

    .line 4144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .locals 5
    .param p1, "screenBrightness"    # I

    .prologue
    .line 4088
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4092
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap30(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4094
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4087
    return-void

    .line 4093
    :catchall_0
    move-exception v2

    .line 4094
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4093
    throw v2
.end method

.method public setDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 4151
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 4166
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 4165
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .locals 1
    .param p1, "appids"    # [I

    .prologue
    .line 4161
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 4160
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .locals 1
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 4101
    packed-switch p1, :pswitch_data_0

    .line 4110
    const/4 p1, 0x0

    .line 4113
    :pswitch_0
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    .line 4114
    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 4115
    :cond_0
    const/4 p2, -0x1

    .line 4117
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;II)V

    .line 4100
    return-void

    .line 4101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFeature(II)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "data"    # I

    .prologue
    .line 4196
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap24(II)V

    .line 4195
    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 4156
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    .locals 1
    .param p1, "timeMs"    # I

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    .line 4131
    return-void
.end method

.method public setPowerSaveMode(Z)Z
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 4186
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-wrap5(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v0

    return v0
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .locals 1
    .param p1, "screenBrightness"    # I

    .prologue
    .line 4079
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    .line 4080
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 4081
    :cond_0
    const/4 p1, -0x1

    .line 4083
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-wrap34(Lcom/android/server/power/PowerManagerService;I)V

    .line 4078
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 1
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 4127
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap37(Lcom/android/server/power/PowerManagerService;J)V

    .line 4126
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .locals 1

    .prologue
    .line 4122
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap38(Lcom/android/server/power/PowerManagerService;)V

    .line 4121
    return-void
.end method

.method public uidGone(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 4176
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 4175
    return-void
.end method

.method public updateUidProcState(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 4171
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 4170
    return-void
.end method
