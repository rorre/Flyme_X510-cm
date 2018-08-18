.class Lcom/android/server/policy/GlobalActions$16;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->takeScreenshot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$partial:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "val$partial"    # Z

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions$16;->val$partial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 818
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, v5, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 819
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, v6, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v6, p0, :cond_0

    monitor-exit v5

    .line 820
    return-void

    .line 822
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 823
    .local v1, "messenger":Landroid/os/Messenger;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 824
    .local v2, "msg":Landroid/os/Message;
    iget-boolean v6, p0, Lcom/android/server/policy/GlobalActions$16;->val$partial:Z

    if-eqz v6, :cond_1

    const/4 v4, 0x2

    :cond_1
    iput v4, v2, Landroid/os/Message;->what:I

    .line 826
    move-object v3, p0

    .line 827
    .local v3, "myConn":Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/server/policy/GlobalActions$16$1;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$16;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, p0}, Lcom/android/server/policy/GlobalActions$16$1;-><init>(Lcom/android/server/policy/GlobalActions$16;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 839
    .local v0, "h":Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 840
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 843
    new-instance v4, Lcom/android/server/policy/GlobalActions$16$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$16$2;-><init>(Lcom/android/server/policy/GlobalActions$16;Landroid/os/Messenger;Landroid/os/Message;)V

    .line 852
    const-wide/16 v6, 0x3e8

    .line 843
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 817
    return-void

    .line 818
    .end local v0    # "h":Landroid/os/Handler;
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 856
    return-void
.end method
