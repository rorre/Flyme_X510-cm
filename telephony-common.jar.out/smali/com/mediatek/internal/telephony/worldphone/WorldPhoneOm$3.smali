.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;
.super Ljava/lang/Object;
.source "WorldPhoneOm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1171
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get7()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set3(I)I

    .line 1172
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get7()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get0()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1173
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get0()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set3(I)I

    .line 1176
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get3()I

    move-result v0

    if-nez v0, :cond_1

    .line 1177
    const-string/jumbo v0, "FDD time out!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 1170
    :goto_0
    return-void

    .line 1180
    :cond_1
    const-string/jumbo v0, "FDD time out but BT SAP is connected, switch not executed!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8(Ljava/lang/String;)V

    goto :goto_0
.end method
