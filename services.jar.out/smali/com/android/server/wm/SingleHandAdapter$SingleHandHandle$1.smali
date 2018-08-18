.class Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;
.super Ljava/lang/Object;
.source "SingleHandAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 197
    new-instance v0, Lcom/android/server/wm/SingleHandWindow;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    iget-object v1, v1, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v1}, Lcom/android/server/wm/SingleHandAdapter;->-get2(Lcom/android/server/wm/SingleHandAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-static {v2}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->-get0(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;)Z

    move-result v2

    .line 198
    const-string/jumbo v3, "virtual"

    iget-object v4, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    iget-object v4, v4, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v4}, Lcom/android/server/wm/SingleHandAdapter;->-get3(Lcom/android/server/wm/SingleHandAdapter;)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    iget-object v5, v5, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v5}, Lcom/android/server/wm/SingleHandAdapter;->-get3(Lcom/android/server/wm/SingleHandAdapter;)Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    iget-object v6, v6, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v6}, Lcom/android/server/wm/SingleHandAdapter;->-get5(Lcom/android/server/wm/SingleHandAdapter;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v6

    .line 197
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/SingleHandWindow;-><init>(Landroid/content/Context;ZLjava/lang/String;IILcom/android/server/wm/WindowManagerService;)V

    .line 199
    .local v0, "window":Lcom/android/server/wm/SingleHandWindow;
    invoke-virtual {v0}, Lcom/android/server/wm/SingleHandWindow;->show()V

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-static {v1, v0}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->-set0(Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;Lcom/android/server/wm/SingleHandWindow;)Lcom/android/server/wm/SingleHandWindow;

    .line 196
    return-void
.end method
