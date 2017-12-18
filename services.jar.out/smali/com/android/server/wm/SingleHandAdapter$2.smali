.class Lcom/android/server/wm/SingleHandAdapter$2;
.super Ljava/lang/Object;
.source "SingleHandAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SingleHandAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SingleHandAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SingleHandAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-get2(Lcom/android/server/wm/SingleHandAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "single_hand_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/android/server/wm/SingleHandAdapter$2$1;

    iget-object v3, p0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v3}, Lcom/android/server/wm/SingleHandAdapter;->-get4(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/SingleHandAdapter$2$1;-><init>(Lcom/android/server/wm/SingleHandAdapter$2;Landroid/os/Handler;)V

    .line 108
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-get2(Lcom/android/server/wm/SingleHandAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "single_hand_screen_zoom"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/android/server/wm/SingleHandAdapter$2$2;

    iget-object v3, p0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v3}, Lcom/android/server/wm/SingleHandAdapter;->-get4(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/SingleHandAdapter$2$2;-><init>(Lcom/android/server/wm/SingleHandAdapter$2;Landroid/os/Handler;)V

    .line 118
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    return-void
.end method
