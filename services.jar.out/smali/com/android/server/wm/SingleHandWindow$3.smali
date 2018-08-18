.class Lcom/android/server/wm/SingleHandWindow$3;
.super Ljava/lang/Object;
.source "SingleHandWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 494
    iput-object p1, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 498
    .local v2, "rawX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 499
    .local v3, "rawY":F
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    float-to-int v7, v2

    float-to-int v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/SingleHandWindow;->singlehandRegionContainsPoint(II)Z

    move-result v1

    .line 501
    .local v1, "inRegion":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 529
    :goto_0
    :pswitch_0
    return v5

    .line 503
    :pswitch_1
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    if-eqz v1, :cond_0

    :goto_1
    invoke-static {v6, v4}, Lcom/android/server/wm/SingleHandWindow;->-set0(Lcom/android/server/wm/SingleHandWindow;Z)Z

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    .line 506
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v6}, Lcom/android/server/wm/SingleHandWindow;->-get6(Lcom/android/server/wm/SingleHandWindow;)Landroid/view/View;

    move-result-object v6

    const v7, 0x102040d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 508
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 509
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v6}, Lcom/android/server/wm/SingleHandWindow;->-get4(Lcom/android/server/wm/SingleHandWindow;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v6}, Lcom/android/server/wm/SingleHandWindow;->-get0(Lcom/android/server/wm/SingleHandWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "single_hand_mode"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 520
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v6, v4}, Lcom/android/server/wm/SingleHandWindow;->-set0(Lcom/android/server/wm/SingleHandWindow;Z)Z

    goto :goto_0

    .line 515
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v6, v4}, Lcom/android/server/wm/SingleHandWindow;->-wrap1(Lcom/android/server/wm/SingleHandWindow;Z)V

    .line 517
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v6}, Lcom/android/server/wm/SingleHandWindow;->-get0(Lcom/android/server/wm/SingleHandWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "single_hand_mode_hint_shown"

    const-string/jumbo v8, "yes"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 523
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/wm/SingleHandWindow$3;->this$0:Lcom/android/server/wm/SingleHandWindow;

    invoke-static {v6, v4}, Lcom/android/server/wm/SingleHandWindow;->-set0(Lcom/android/server/wm/SingleHandWindow;Z)Z

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
