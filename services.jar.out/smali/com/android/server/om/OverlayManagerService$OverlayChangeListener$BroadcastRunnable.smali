.class final Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;
.super Ljava/lang/Thread;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastRunnable"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mDoUpdate:Z

.field private final mOverlayInfo:Landroid/content/om/OverlayInfo;

.field private final shouldWait:Z

.field final synthetic this$1:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;Landroid/content/om/OverlayInfo;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "oi"    # Landroid/content/om/OverlayInfo;
    .param p4, "doUpdate"    # Z
    .param p5, "shouldWait"    # Z

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->this$1:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mAction:Ljava/lang/String;

    .line 654
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mOverlayInfo:Landroid/content/om/OverlayInfo;

    .line 655
    iput-boolean p4, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mDoUpdate:Z

    .line 656
    iput-boolean p5, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->shouldWait:Z

    .line 652
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 670
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "package"

    .line 671
    const-string/jumbo v2, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 670
    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 672
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 677
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 678
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v14, p4

    .line 677
    invoke-interface/range {v1 .. v14}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mDoUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->shouldWait:Z

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mOverlayInfo:Landroid/content/om/OverlayInfo;

    iget-object v1, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mOverlayInfo:Landroid/content/om/OverlayInfo;

    iget-object v2, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 664
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mOverlayInfo:Landroid/content/om/OverlayInfo;

    iget v3, v3, Landroid/content/om/OverlayInfo;->userId:I

    .line 663
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 659
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->this$1:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mOverlayInfo:Landroid/content/om/OverlayInfo;

    iget v1, v1, Landroid/content/om/OverlayInfo;->userId:I

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;->mOverlayInfo:Landroid/content/om/OverlayInfo;

    iget-object v2, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/om/OverlayManagerService;->-wrap2(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V

    goto :goto_0
.end method
