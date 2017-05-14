.class public Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;
.super Ljava/lang/Object;
.source "IaExtendParam.java"


# instance fields
.field public mCanHandleIms:Z

.field public mDualApnPlmnList:[Ljava/lang/String;

.field public mOperatorNumeric:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mOperatorNumeric:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mCanHandleIms:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mDualApnPlmnList:[Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mOperatorNumeric:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mCanHandleIms:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mDualApnPlmnList:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "canHandleIms"    # Z
    .param p3, "dualApnPlmnList"    # [Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mOperatorNumeric:Ljava/lang/String;

    .line 67
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mCanHandleIms:Z

    .line 68
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mDualApnPlmnList:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "dualApnPlmnList"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mOperatorNumeric:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mCanHandleIms:Z

    .line 61
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mDualApnPlmnList:[Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[OperatorNumberic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", CanHandleIms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mCanHandleIms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, ", DualApnPlmnList: "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mDualApnPlmnList:[Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "]"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
