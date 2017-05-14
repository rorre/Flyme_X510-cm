.class final Lcom/mediatek/internal/telephony/NetworkInfoWithAcT$1;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
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
        "Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 189
    new-instance v0, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 194
    .local v0, "netInfoWithAct":Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 198
    new-array v0, p1, [Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT$1;->newArray(I)[Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    move-result-object v0

    return-object v0
.end method
