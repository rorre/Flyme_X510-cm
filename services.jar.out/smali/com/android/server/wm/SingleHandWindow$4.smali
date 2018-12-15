.class Lcom/android/server/wm/SingleHandWindow$4;
.super Ljava/lang/Object;
.source "SingleHandWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 533
    iput-object p1, p0, Lcom/android/server/wm/SingleHandWindow$4;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow$4;->this$0:Lcom/android/server/wm/SingleHandWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/SingleHandWindow;->-wrap1(Lcom/android/server/wm/SingleHandWindow;Z)V

    .line 535
    return-void
.end method
