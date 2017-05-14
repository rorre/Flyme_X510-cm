.class Lcom/android/internal/policy/smartwake/WindowGestureView$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GESTURE_O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->showView(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GESTURE_W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->showView(I)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GESTURE_C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->showView(I)V

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GESTURE_E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->showView(I)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GESTURE_M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureView$2;->this$0:Lcom/android/internal/policy/smartwake/WindowGestureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->showView(I)V

    goto :goto_0
.end method
