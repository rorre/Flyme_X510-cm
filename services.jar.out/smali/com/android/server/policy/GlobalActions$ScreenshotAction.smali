.class final Lcom/android/server/policy/GlobalActions$ScreenshotAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenshotAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenshotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 518
    const v0, 0x108037f

    .line 519
    const v1, 0x104001a

    .line 518
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 521
    invoke-static {p1}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ScreenshotAction;->setStatus(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ScreenshotAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$ScreenshotAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 532
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;Z)V

    .line 534
    return v2
.end method

.method public onPress()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenshotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;Z)V

    .line 525
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    return v0
.end method
