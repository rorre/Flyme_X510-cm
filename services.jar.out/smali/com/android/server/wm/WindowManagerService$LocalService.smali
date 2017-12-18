.class final Lcom/android/server/wm/WindowManagerService$LocalService;
.super Landroid/view/WindowManagerInternal;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 11617
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "type"    # I

    .prologue
    .line 11773
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->addWindowToken(Landroid/os/IBinder;I)V

    .line 11772
    return-void
.end method

.method public clearLastInputMethodWindowForTransition()V
    .locals 4

    .prologue
    .line 11814
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11815
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManagerPolicy;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 11813
    return-void

    .line 11814
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 11650
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 11651
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11652
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_0

    monitor-exit v3

    .line 11653
    return-object v5

    .line 11655
    :cond_0
    const/4 v0, 0x0

    .line 11656
    .local v0, "spec":Landroid/view/MagnificationSpec;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_1

    .line 11657
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 11659
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget v2, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    monitor-exit v3

    .line 11660
    return-object v5

    .line 11662
    :cond_3
    if-nez v0, :cond_4

    :try_start_2
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 11663
    .local v0, "spec":Landroid/view/MagnificationSpec;
    :goto_0
    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v4

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 11664
    return-object v0

    .line 11662
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_4
    :try_start_3
    invoke-static {v0}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    goto :goto_0

    .line 11650
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11703
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 11704
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->-wrap1(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 11705
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 11706
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 11708
    return-object v3

    .line 11703
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 2

    .prologue
    .line 11798
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->getInputMethodWindowVisibleHeightLw()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 11798
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "magnificationRegion"    # Landroid/graphics/Region;

    .prologue
    .line 11639
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11640
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_0

    .line 11641
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationRegionLocked(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 11638
    return-void

    .line 11643
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Magnification callbacks not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11639
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 11724
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 11725
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 11726
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 11727
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 11723
    return-void

    .line 11729
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11724
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isDockedDividerResizing()Z
    .locals 2

    .prologue
    .line 11843
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11844
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 11843
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isHardKeyboardAvailable()Z
    .locals 2

    .prologue
    .line 11821
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 11821
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 11714
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isStackVisible(I)Z
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 11836
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11837
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->isStackVisibleLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 11836
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 11791
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11792
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 11790
    return-void

    .line 11791
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeWindowToken(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "removeWindows"    # Z

    .prologue
    .line 11778
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 11779
    if-eqz p2, :cond_0

    .line 11780
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    .line 11781
    .local v0, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_0

    .line 11782
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeAllWindows()V

    .line 11785
    .end local v0    # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 11777
    return-void

    .line 11778
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public requestTraversalFromDisplayManager()V
    .locals 1

    .prologue
    .line 11620
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 11619
    return-void
.end method

.method public saveLastInputMethodWindowForTransition()V
    .locals 4

    .prologue
    .line 11805
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 11807
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManagerPolicy;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 11804
    return-void

    .line 11805
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 11698
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 11697
    return-void
.end method

.method public setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 4
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .prologue
    .line 11670
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_0

    .line 11672
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    .line 11673
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 11672
    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 11675
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 11676
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11677
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 11669
    return-void

    .line 11670
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 11625
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11626
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_1

    .line 11627
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 11632
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 11633
    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    .line 11624
    :cond_0
    return-void

    .line 11629
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Magnification callbacks not set!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11625
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnHardKeyboardStatusChangeListener(Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    .prologue
    .line 11829
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 11828
    return-void

    .line 11829
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 11684
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11685
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v0, :cond_0

    .line 11686
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    .line 11687
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 11686
    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 11689
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController;->setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 11690
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11691
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 11683
    return-void

    .line 11684
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showGlobalActions()V
    .locals 1

    .prologue
    .line 11719
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showGlobalActions()V

    .line 11718
    return-void
.end method

.method public waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V
    .locals 12
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "timeout"    # J

    .prologue
    .line 11736
    const/4 v0, 0x0

    .line 11737
    .local v0, "allWindowsDrawn":Z
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 11738
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 11739
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 11740
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_0
    if-ltz v4, :cond_1

    .line 11741
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 11742
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    .line 11743
    .local v1, "isForceHiding":Z
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    .line 11744
    .local v2, "keyguard":Z
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11745
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    .line 11744
    if-eqz v2, :cond_3

    .line 11746
    :cond_0
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v8, 0x1

    iput v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 11748
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 11749
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11752
    if-eqz v1, :cond_3

    .line 11757
    .end local v1    # "isForceHiding":Z
    .end local v2    # "keyguard":Z
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 11758
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x18

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 11759
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 11760
    const/4 v0, 0x1

    :goto_1
    monitor-exit v7

    .line 11766
    if-eqz v0, :cond_2

    .line 11767
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11735
    :cond_2
    return-void

    .line 11740
    .restart local v1    # "isForceHiding":Z
    .restart local v2    # "keyguard":Z
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 11762
    .end local v1    # "isForceHiding":Z
    .end local v2    # "keyguard":Z
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x18

    invoke-virtual {v6, v8, p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 11763
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 11737
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method
