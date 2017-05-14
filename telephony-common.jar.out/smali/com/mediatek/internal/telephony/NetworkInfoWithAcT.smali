.class public Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/NetworkInfoWithAcT$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field nAct:I

.field nPriority:I

.field operatorAlphaName:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT$1;-><init>()V

    .line 186
    sput-object v0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "nPriority"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 148
    iput p3, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    .line 149
    iput p4, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    .line 144
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessTechnology()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    return v0
.end method

.method public getOperatorAlphaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    return v0
.end method

.method public setAccessTechnology(I)V
    .locals 0
    .param p1, "nAct"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    .line 128
    return-void
.end method

.method public setOperatorAlphaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorAlphaName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "nIndex"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkInfoWithAcT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "/"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "/"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget v1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "/"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    iget v1, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
