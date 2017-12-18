.class Lcom/android/server/om/OverlayManagerService$2;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerService;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 735
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get3(Lcom/android/server/om/OverlayManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 736
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get1(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 737
    const/4 v1, 0x0

    .line 739
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get5(Lcom/android/server/om/OverlayManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 740
    .local v1, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get4(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 741
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get5(Lcom/android/server/om/OverlayManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v3

    .line 734
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->-get5(Lcom/android/server/om/OverlayManagerService;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 744
    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v4, "failed to persist overlay state"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 736
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
