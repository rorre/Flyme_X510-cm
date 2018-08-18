.class Landroid/hardware/camera2/CameraManager$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager;

    .prologue
    .line 98
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 108
    if-eqz p2, :cond_1

    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$1;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->-get0(Landroid/hardware/camera2/CameraManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 100
    :cond_0
    return-void
.end method
