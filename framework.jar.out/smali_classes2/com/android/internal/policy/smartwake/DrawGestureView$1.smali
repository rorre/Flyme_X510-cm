.class Lcom/android/internal/policy/smartwake/DrawGestureView$1;
.super Landroid/os/Handler;
.source "DrawGestureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/smartwake/DrawGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/smartwake/DrawGestureView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/smartwake/DrawGestureView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    invoke-static {v0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->-get0(Lcom/android/internal/policy/smartwake/DrawGestureView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/policy/smartwake/DrawGestureView;->-set0(Lcom/android/internal/policy/smartwake/DrawGestureView;I)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    invoke-static {v0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->-get0(Lcom/android/internal/policy/smartwake/DrawGestureView;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->invalidate()V

    .line 151
    const-wide/16 v0, 0x32

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->invalidate()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->removeMessages(I)V

    .line 155
    const-wide/16 v0, 0x64

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    iget-object v0, v0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mListener:Lcom/android/internal/policy/smartwake/DrawGestureView$OnGestureDrawDoneListener;

    invoke-interface {v0}, Lcom/android/internal/policy/smartwake/DrawGestureView$OnGestureDrawDoneListener;->OnGestureDrawDone()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/policy/smartwake/DrawGestureView;->-set0(Lcom/android/internal/policy/smartwake/DrawGestureView;I)I

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    invoke-static {v0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->-wrap0(Lcom/android/internal/policy/smartwake/DrawGestureView;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;->this$0:Lcom/android/internal/policy/smartwake/DrawGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->invalidate()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
