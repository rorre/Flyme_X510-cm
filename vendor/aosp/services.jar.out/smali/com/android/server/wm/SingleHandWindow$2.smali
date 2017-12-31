.class Lcom/android/server/wm/SingleHandWindow$2;
.super Ljava/lang/Object;
.source "SingleHandWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SingleHandWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SingleHandWindow;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SingleHandWindow;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 287
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandWindow;->-get1(Lcom/android/server/wm/SingleHandWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandWindow;->-wrap0(Lcom/android/server/wm/SingleHandWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandWindow;->-get3(Lcom/android/server/wm/SingleHandWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/SingleHandWindow;->relayout()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/SingleHandWindow;->dismiss()V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandWindow;->-get1(Lcom/android/server/wm/SingleHandWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$2;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/SingleHandWindow;->dismiss()V

    .line 303
    :cond_0
    return-void
.end method
