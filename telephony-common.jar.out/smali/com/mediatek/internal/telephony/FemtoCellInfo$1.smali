.class final Lcom/mediatek/internal/telephony/FemtoCellInfo$1;
.super Ljava/lang/Object;
.source "FemtoCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/FemtoCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/internal/telephony/FemtoCellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 139
    new-instance v0, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 139
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/FemtoCellInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    .local v0, "femtoCellInfo":Lcom/mediatek/internal/telephony/FemtoCellInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/FemtoCellInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Lcom/mediatek/internal/telephony/FemtoCellInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/FemtoCellInfo;

    move-result-object v0

    return-object v0
.end method
