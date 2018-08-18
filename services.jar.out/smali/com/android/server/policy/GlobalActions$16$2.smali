.class Lcom/android/server/policy/GlobalActions$16$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$16;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$16;

.field final synthetic val$messenger:Landroid/os/Messenger;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$16;Landroid/os/Messenger;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$16;
    .param p2, "val$messenger"    # Landroid/os/Messenger;
    .param p3, "val$msg"    # Landroid/os/Message;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$16$2;->this$1:Lcom/android/server/policy/GlobalActions$16;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$16$2;->val$messenger:Landroid/os/Messenger;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$16$2;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$16$2;->val$messenger:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$16$2;->val$msg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_0
    return-void

    .line 848
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
