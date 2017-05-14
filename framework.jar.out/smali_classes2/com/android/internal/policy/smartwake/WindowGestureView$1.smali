.class Lcom/android/internal/policy/smartwake/WindowGestureView$1;
.super Landroid/os/Handler;
.source "WindowGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/smartwake/WindowGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/smartwake/WindowGestureView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/smartwake/WindowGestureView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 39
    :goto_0
    :pswitch_0
    return-void

    .line 46
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-static {v1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->-get3(Lcom/android/internal/policy/smartwake/WindowGestureView;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-static {v2}, Lcom/android/internal/policy/smartwake/WindowGestureView;->-get1(Lcom/android/internal/policy/smartwake/WindowGestureView;)Lcom/android/internal/policy/smartwake/DrawGestureView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GESTURE_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-static {v1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->-get0(Lcom/android/internal/policy/smartwake/WindowGestureView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    iget-object v1, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/policy/smartwake/WindowGestureView;->-set0(Lcom/android/internal/policy/smartwake/WindowGestureView;Z)Z

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
