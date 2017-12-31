.class Lcom/android/server/wm/SingleHandAdapter$1;
.super Landroid/os/Handler;
.source "SingleHandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SingleHandAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SingleHandAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SingleHandAdapter;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$1;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 91
    :pswitch_0
    const-string/jumbo v0, "SingleHandAdapter"

    const-string/jumbo v1, "for BlurWallpaper :Wallpaper changed."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$1;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-wrap1(Lcom/android/server/wm/SingleHandAdapter;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
