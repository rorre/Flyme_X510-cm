.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;
.super Ljava/lang/Object;
.source "WorldPhoneOp01.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 934
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get7()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set3(I)I

    .line 935
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get7()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get0()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 936
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get0()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set3(I)I

    .line 939
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get3()I

    move-result v0

    if-nez v0, :cond_1

    .line 940
    const-string/jumbo v0, "FDD time out!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 941
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-set11(I)I

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-get23()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    .line 933
    :goto_0
    return-void

    .line 945
    :cond_1
    const-string/jumbo v0, "FDD time out but BT SAP is connected, switch not executed!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->-wrap7(Ljava/lang/String;)V

    goto :goto_0
.end method
