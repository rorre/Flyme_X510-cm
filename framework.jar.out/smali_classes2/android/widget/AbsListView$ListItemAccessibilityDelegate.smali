.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    .line 2436
    iput-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2439
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2441
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2442
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2438
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2447
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2448
    return v7

    .line 2451
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 2452
    .local v4, "position":I
    if-eq v4, v8, :cond_1

    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v5, :cond_2

    .line 2454
    :cond_1
    return v6

    .line 2457
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 2464
    return v6

    .line 2468
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2469
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v3, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v5, :cond_4

    .line 2470
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2475
    :goto_0
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 2480
    sparse-switch p2, :sswitch_data_0

    .line 2507
    return v6

    .line 2472
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v2, 0x0

    .local v2, "isItemEnabled":Z
    goto :goto_0

    .line 2477
    .end local v2    # "isItemEnabled":Z
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    return v6

    .line 2482
    :sswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 2483
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2484
    return v7

    .line 2486
    :cond_6
    return v6

    .line 2488
    :sswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v5

    if-eq v5, v4, :cond_7

    .line 2489
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2490
    return v7

    .line 2492
    :cond_7
    return v6

    .line 2494
    :sswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5, p1}, Landroid/widget/AbsListView;->-wrap2(Landroid/widget/AbsListView;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2495
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2496
    .local v0, "id":J
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v5

    return v5

    .line 2498
    .end local v0    # "id":J
    :cond_8
    return v6

    .line 2500
    :sswitch_3
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2501
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 2502
    .restart local v0    # "id":J
    iget-object v5, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    return v5

    .line 2504
    .end local v0    # "id":J
    :cond_9
    return v6

    .line 2480
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
