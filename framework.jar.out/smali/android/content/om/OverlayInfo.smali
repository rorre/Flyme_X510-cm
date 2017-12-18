.class public final Landroid/content/om/OverlayInfo;
.super Ljava/lang/Object;
.source "OverlayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_APPROVED_DISABLED:I = 0x4

.field public static final STATE_APPROVED_ENABLED:I = 0x5

.field public static final STATE_NOT_APPROVED_COMPONENT_DISABLED:I = 0x0

.field public static final STATE_NOT_APPROVED_DANGEROUS_OVERLAY:I = 0x3

.field public static final STATE_NOT_APPROVED_MISSING_TARGET:I = 0x1

.field public static final STATE_NOT_APPROVED_NO_IDMAP:I = 0x2

.field public static final STATE_NOT_APPROVED_UNKNOWN:I = -0x1


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final state:I

.field public final targetPackageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Landroid/content/om/OverlayInfo$1;

    invoke-direct {v0}, Landroid/content/om/OverlayInfo$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/om/OverlayInfo;I)V
    .locals 6
    .param p1, "source"    # Landroid/content/om/OverlayInfo;
    .param p2, "state"    # I

    .prologue
    .line 117
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 118
    iget v5, p1, Landroid/content/om/OverlayInfo;->userId:I

    move-object v0, p0

    move v4, p2

    .line 117
    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->state:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    .line 137
    invoke-direct {p0}, Landroid/content/om/OverlayInfo;->ensureValidState()V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .param p3, "baseCodePath"    # Ljava/lang/String;
    .param p4, "state"    # I
    .param p5, "userId"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 126
    iput p4, p0, Landroid/content/om/OverlayInfo;->state:I

    .line 127
    iput p5, p0, Landroid/content/om/OverlayInfo;->userId:I

    .line 128
    invoke-direct {p0}, Landroid/content/om/OverlayInfo;->ensureValidState()V

    .line 122
    return-void
.end method

.method private ensureValidState()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "targetPackageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "baseCodePath must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    return-void

    .line 150
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 223
    packed-switch p0, :pswitch_data_0

    .line 239
    const-string/jumbo v0, "<unknown state>"

    return-object v0

    .line 225
    :pswitch_0
    const-string/jumbo v0, "STATE_NOT_APPROVED_UNKNOWN"

    return-object v0

    .line 227
    :pswitch_1
    const-string/jumbo v0, "STATE_NOT_APPROVED_COMPONENT_DISABLED"

    return-object v0

    .line 229
    :pswitch_2
    const-string/jumbo v0, "STATE_NOT_APPROVED_MISSING_TARGET"

    return-object v0

    .line 231
    :pswitch_3
    const-string/jumbo v0, "STATE_NOT_APPROVED_NO_IDMAP"

    return-object v0

    .line 233
    :pswitch_4
    const-string/jumbo v0, "STATE_NOT_APPROVED_DANGEROUS_OVERLAY"

    return-object v0

    .line 235
    :pswitch_5
    const-string/jumbo v0, "STATE_APPROVED_DISABLED"

    return-object v0

    .line 237
    :pswitch_6
    const-string/jumbo v0, "STATE_APPROVED_ENABLED"

    return-object v0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    if-ne p0, p1, :cond_0

    .line 258
    return v4

    .line 260
    :cond_0
    if-nez p1, :cond_1

    .line 261
    return v3

    .line 263
    :cond_1
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 264
    return v3

    :cond_2
    move-object v0, p1

    .line 266
    check-cast v0, Landroid/content/om/OverlayInfo;

    .line 267
    .local v0, "other":Landroid/content/om/OverlayInfo;
    iget v1, p0, Landroid/content/om/OverlayInfo;->userId:I

    iget v2, v0, Landroid/content/om/OverlayInfo;->userId:I

    if-eq v1, v2, :cond_3

    .line 268
    return v3

    .line 270
    :cond_3
    iget v1, p0, Landroid/content/om/OverlayInfo;->state:I

    iget v2, v0, Landroid/content/om/OverlayInfo;->state:I

    if-eq v1, v2, :cond_4

    .line 271
    return v3

    .line 273
    :cond_4
    iget-object v1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 274
    return v3

    .line 276
    :cond_5
    iget-object v1, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 277
    return v3

    .line 279
    :cond_6
    iget-object v1, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 280
    return v3

    .line 282
    :cond_7
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 245
    const/16 v0, 0x1f

    .line 247
    .local v0, "prime":I
    iget v2, p0, Landroid/content/om/OverlayInfo;->userId:I

    add-int/lit8 v1, v2, 0x1f

    .line 248
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/content/om/OverlayInfo;->state:I

    add-int v1, v2, v4

    .line 249
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 250
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 251
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 252
    return v1

    .line 249
    :cond_0
    iget-object v2, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 250
    :cond_1
    iget-object v2, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 251
    :cond_2
    iget-object v3, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isApproved()Z
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    packed-switch v0, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 216
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    packed-switch v0, :pswitch_data_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 201
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OverlayInfo { overlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    iget v1, p0, Landroid/content/om/OverlayInfo;->state:I

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string/jumbo v1, " ("

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    iget v1, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-static {v1}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string/jumbo v1, "), userId="

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    iget v1, p0, Landroid/content/om/OverlayInfo;->userId:I

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string/jumbo v1, " }"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 171
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Landroid/content/om/OverlayInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return-void
.end method
