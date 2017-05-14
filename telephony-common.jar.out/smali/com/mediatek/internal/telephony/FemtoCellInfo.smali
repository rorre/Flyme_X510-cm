.class public Lcom/mediatek/internal/telephony/FemtoCellInfo;
.super Ljava/lang/Object;
.source "FemtoCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/FemtoCellInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/FemtoCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CSG_ICON_TYPE_ALLOWED:I = 0x1

.field public static final CSG_ICON_TYPE_NOT_ALLOWED:I = 0x0

.field public static final CSG_ICON_TYPE_OPERATOR:I = 0x2

.field public static final CSG_ICON_TYPE_OPERATOR_UNAUTHORIZED:I = 0x3


# instance fields
.field private csgIconType:I

.field private csgId:I

.field private homeNodeBName:Ljava/lang/String;

.field private operatorAlphaLong:Ljava/lang/String;

.field private operatorNumeric:Ljava/lang/String;

.field private rat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;-><init>()V

    .line 136
    sput-object v0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "csgId"    # I
    .param p2, "csgIconType"    # I
    .param p3, "homeNodeBName"    # Ljava/lang/String;
    .param p4, "operatorNumeric"    # Ljava/lang/String;
    .param p5, "operatorAlphaLong"    # Ljava/lang/String;
    .param p6, "rat"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    .line 91
    iput p1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    .line 92
    iput p2, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    .line 93
    iput-object p3, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 96
    iput p6, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getCsgIconType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    return v0
.end method

.method public getCsgId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    return v0
.end method

.method public getCsgRat()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    return v0
.end method

.method public getHomeNodeBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FemtoCellInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "/"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    iget v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "/"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "/"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "/"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "/"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    .line 100
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
    .line 124
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->csgIconType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->homeNodeBName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/mediatek/internal/telephony/FemtoCellInfo;->rat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
