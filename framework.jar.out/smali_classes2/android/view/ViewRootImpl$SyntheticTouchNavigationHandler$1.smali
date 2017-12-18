.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .prologue
    .line 5391
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5394
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5395
    .local v0, "time":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-get1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-get2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v4

    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-wrap2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V

    .line 5396
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-get0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-set0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F

    .line 5397
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-wrap0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5398
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-set1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z

    .line 5399
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-wrap1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    .line 5393
    :cond_0
    return-void
.end method
