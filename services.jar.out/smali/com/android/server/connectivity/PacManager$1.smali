.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-get4(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v2

    .line 112
    .local v2, "pacUrl":Landroid/net/Uri;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/android/server/connectivity/PacManager;->-wrap1(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    if-eqz v0, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-get5(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 121
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-get0(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3, v0}, Lcom/android/server/connectivity/PacManager;->-wrap0(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 125
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/connectivity/PacManager;->-set0(Lcom/android/server/connectivity/PacManager;Z)Z

    .line 126
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    .line 127
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap2(Lcom/android/server/connectivity/PacManager;)V

    .line 109
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 117
    .local v0, "file":Ljava/lang/String;
    const-string/jumbo v3, "PacManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load PAC file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->-wrap3(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_1
.end method
