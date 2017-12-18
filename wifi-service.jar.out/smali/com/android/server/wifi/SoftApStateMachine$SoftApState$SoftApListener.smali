.class Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;
.super Ljava/lang/Object;
.source "SoftApStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/SoftApManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SoftApStateMachine$SoftApState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/SoftApStateMachine$SoftApState;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/SoftApStateMachine$SoftApState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApStateMachine$SoftApState;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/SoftApStateMachine$SoftApState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/SoftApStateMachine$SoftApState;Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/SoftApStateMachine$SoftApState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;-><init>(Lcom/android/server/wifi/SoftApStateMachine$SoftApState;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    .line 372
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/SoftApStateMachine$SoftApState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    const v1, 0x20018

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    .line 378
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/SoftApStateMachine$SoftApState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/SoftApStateMachine;->-wrap3(Lcom/android/server/wifi/SoftApStateMachine;II)V

    .line 371
    return-void

    .line 374
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState$SoftApListener;->this$1:Lcom/android/server/wifi/SoftApStateMachine$SoftApState;

    iget-object v0, v0, Lcom/android/server/wifi/SoftApStateMachine$SoftApState;->this$0:Lcom/android/server/wifi/SoftApStateMachine;

    const v1, 0x20016

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
