.class Lcom/android/internal/telephony/GsmCdmaCallTracker$2;
.super Ljava/lang/Object;
.source "GsmCdmaCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-get0(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->-get0(Lcom/android/internal/telephony/GsmCdmaCallTracker;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1528
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker$2;->this$0:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1527
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1525
    :cond_0
    return-void
.end method
