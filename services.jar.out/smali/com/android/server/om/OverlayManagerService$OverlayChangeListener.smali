.class final Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerSettings$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayChangeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private scheduleBroadcast(Ljava/lang/String;Landroid/content/om/OverlayInfo;ZZ)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "oi"    # Landroid/content/om/OverlayInfo;
    .param p3, "doUpdate"    # Z
    .param p4, "shouldWait"    # Z

    .prologue
    .line 642
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener$BroadcastRunnable;-><init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;Landroid/content/om/OverlayInfo;ZZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    return-void
.end method


# virtual methods
.method public onOverlayAdded(Landroid/content/om/OverlayInfo;Z)V
    .locals 2
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "shouldWait"    # Z

    .prologue
    .line 620
    const-string/jumbo v0, "android.intent.action.OVERLAY_ADDED"

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->scheduleBroadcast(Ljava/lang/String;Landroid/content/om/OverlayInfo;ZZ)V

    .line 619
    return-void
.end method

.method public onOverlayChanged(Landroid/content/om/OverlayInfo;Landroid/content/om/OverlayInfo;Z)V
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "oldOi"    # Landroid/content/om/OverlayInfo;
    .param p3, "shouldWait"    # Z

    .prologue
    .line 631
    const-string/jumbo v1, "android.intent.action.OVERLAY_CHANGED"

    .line 632
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 631
    :goto_0
    invoke-direct {p0, v1, p1, v0, p3}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->scheduleBroadcast(Ljava/lang/String;Landroid/content/om/OverlayInfo;ZZ)V

    .line 630
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOverlayPriorityChanged(Landroid/content/om/OverlayInfo;)V
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .prologue
    .line 637
    const-string/jumbo v0, "android.intent.action.OVERLAY_PRIORITY_CHANGED"

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->scheduleBroadcast(Ljava/lang/String;Landroid/content/om/OverlayInfo;ZZ)V

    .line 636
    return-void
.end method

.method public onOverlayRemoved(Landroid/content/om/OverlayInfo;Z)V
    .locals 2
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "shouldWait"    # Z

    .prologue
    .line 625
    const-string/jumbo v0, "android.intent.action.OVERLAY_REMOVED"

    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->scheduleBroadcast(Ljava/lang/String;Landroid/content/om/OverlayInfo;ZZ)V

    .line 624
    return-void
.end method

.method public onSettingsChanged()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-wrap1(Lcom/android/server/om/OverlayManagerService;)V

    .line 614
    return-void
.end method
