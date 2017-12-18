.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final BUNDLE_MAGIC:I = 0x4c444e42

.field static final DEBUG:Z = false

.field static final FLAG_DEFUSABLE:I = 0x1

.field private static final LOG_DEFUSABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "Bundle"

.field private static volatile sShouldDefuse:Z


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field mFlags:I

.field mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 113
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/os/BaseBundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/BaseBundle;

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 159
    monitor-enter p1

    .line 160
    :try_start_0
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p1

    .line 173
    iget-object v0, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 179
    :goto_1
    iget-object v0, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 158
    return-void

    .line 164
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 165
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 166
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 169
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    :cond_2
    iput-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 124
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 138
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;I)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 105
    if-lez p2, :cond_1

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 105
    :goto_0
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 107
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .end local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 104
    return-void

    .line 106
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_0
.end method

.method private readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 1441
    if-gez p2, :cond_0

    .line 1442
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad length in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1444
    :cond_0
    if-nez p2, :cond_1

    .line 1446
    sget-object v3, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1447
    return-void

    .line 1450
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1451
    .local v0, "magic":I
    const v3, 0x4c444e42    # 5.146036E7f

    if-eq v0, v3, :cond_2

    .line 1452
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1453
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1457
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1458
    .local v1, "offset":I
    invoke-static {v1, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1461
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1462
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1465
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1467
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1440
    return-void
.end method

.method public static setShouldDefuse(Z)V
    .locals 0
    .param p0, "shouldDefuse"    # Z

    .prologue
    .line 65
    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 339
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 337
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 351
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 363
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 741
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 742
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 743
    return p2

    .line 746
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 747
    :catch_0
    move-exception v6

    .line 748
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 749
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1165
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1166
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1167
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1168
    return-object v3

    .line 1171
    :cond_0
    :try_start_0
    check-cast v1, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1172
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1174
    return-object v3
.end method

.method getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 775
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 776
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 777
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 780
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "o":Ljava/lang/Object;
    return-object v2

    .line 781
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 782
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 783
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method getByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1188
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1189
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1190
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1191
    return-object v3

    .line 1194
    :cond_0
    :try_start_0
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1195
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1197
    return-object v3
.end method

.method getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 796
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method getChar(Ljava/lang/String;C)C
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 808
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 809
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 810
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 811
    return p2

    .line 814
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 815
    :catch_0
    move-exception v6

    .line 816
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 817
    return p2
.end method

.method getCharArray(Ljava/lang/String;)[C
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1234
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1235
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1236
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1237
    return-object v3

    .line 1240
    :cond_0
    :try_start_0
    check-cast v1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1241
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "char[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1243
    return-object v3
.end method

.method getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1038
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1040
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1041
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1043
    const/4 v2, 0x0

    return-object v2
.end method

.method getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 1059
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1060
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1372
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1373
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1374
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1375
    return-object v3

    .line 1378
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1379
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1381
    return-object v3
.end method

.method getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1142
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1143
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1144
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1145
    return-object v3

    .line 1148
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1149
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<CharSequence>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1151
    return-object v3
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 965
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 966
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 978
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 979
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 980
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 981
    return-wide p2

    .line 984
    :cond_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 985
    :catch_0
    move-exception v7

    .line 986
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 987
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1326
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1327
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1328
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1329
    return-object v3

    .line 1332
    :cond_0
    :try_start_0
    check-cast v1, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1333
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "double[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1335
    return-object v3
.end method

.method getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 931
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 932
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method getFloat(Ljava/lang/String;F)F
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 945
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 946
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 947
    return p2

    .line 950
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 951
    :catch_0
    move-exception v6

    .line 952
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 953
    return p2
.end method

.method getFloatArray(Ljava/lang/String;)[F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1303
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1304
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1305
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1306
    return-object v3

    .line 1309
    :cond_0
    :try_start_0
    check-cast v1, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1310
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "float[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1312
    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 864
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 877
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 878
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 879
    return p2

    .line 882
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 883
    :catch_0
    move-exception v6

    .line 884
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 885
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1257
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1258
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1259
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1260
    return-object v3

    .line 1263
    :cond_0
    :try_start_0
    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1264
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "int[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1266
    return-object v3
.end method

.method getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1096
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1097
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1098
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1099
    return-object v3

    .line 1102
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1103
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<Integer>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1105
    return-object v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 898
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 910
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 911
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 912
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 913
    return-wide p2

    .line 916
    :cond_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 917
    :catch_0
    move-exception v7

    .line 918
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 919
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1280
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1281
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1282
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1283
    return-object v3

    .line 1286
    :cond_0
    :try_start_0
    check-cast v1, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1287
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "long[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1289
    return-object v3
.end method

.method getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 313
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 193
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 194
    .local v2, "size":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 195
    const-string/jumbo v3, "Bundle"

    const-string/jumbo v4, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    if-nez v2, :cond_1

    .line 198
    return-object v6

    .line 200
    :cond_1
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 203
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "getPairValue()"

    const-string/jumbo v4, "String"

    invoke-virtual {p0, v3, v1, v4, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 205
    return-object v6
.end method

.method getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1073
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1074
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1075
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1076
    return-object v3

    .line 1079
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1080
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Serializable"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1082
    return-object v3
.end method

.method getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 829
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 830
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method getShort(Ljava/lang/String;S)S
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 842
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 843
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 844
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 845
    return p2

    .line 848
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 849
    :catch_0
    move-exception v6

    .line 850
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 851
    return p2
.end method

.method getShortArray(Ljava/lang/String;)[S
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1211
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1212
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1213
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1214
    return-object v3

    .line 1217
    :cond_0
    :try_start_0
    check-cast v1, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1218
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "short[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1220
    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1001
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1002
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1004
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1005
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1007
    const/4 v2, 0x0

    return-object v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1023
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1349
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1350
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1351
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1352
    return-object v3

    .line 1355
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1356
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1358
    return-object v3
.end method

.method getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1119
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1120
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1121
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1122
    return-object v3

    .line 1125
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1126
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<String>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1128
    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 331
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmptyParcel()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v1, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParcelled()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 404
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 383
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 384
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 381
    return-void
.end method

.method putAll(Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "map"    # Landroid/util/ArrayMap;

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 394
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 392
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 416
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 584
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method putByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 428
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 596
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    return-void
.end method

.method putChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 440
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    return-void
.end method

.method putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 620
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    return-void
.end method

.method putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 524
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-void
.end method

.method putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 691
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 692
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-void
.end method

.method putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 560
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 500
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 668
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void
.end method

.method putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 488
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method

.method putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 656
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 464
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 632
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    return-void
.end method

.method putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 536
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 476
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 644
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    return-void
.end method

.method putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 572
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    return-void
.end method

.method putShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 452
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-void
.end method

.method putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 608
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 512
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 679
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 680
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 548
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1437
    .local v0, "length":I
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1433
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 373
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 216
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 215
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 323
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 728
    const-string/jumbo v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 727
    return-void
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string/jumbo v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string/jumbo v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string/jumbo v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 721
    const-string/jumbo v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string/jumbo v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string/jumbo v1, "Bundle"

    const-string/jumbo v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    return-void
.end method

.method declared-synchronized unparcel()V
    .locals 7

    .prologue
    monitor-enter p0

    .line 231
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 232
    :try_start_1
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .local v4, "parcelledData":Landroid/os/Parcel;
    if-nez v4, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 237
    return-void

    .line 245
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v5, :cond_1

    .line 249
    new-instance v5, Landroid/util/ArrayMap;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 253
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 254
    return-void

    .line 251
    :cond_1
    :try_start_5
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->erase()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 231
    .end local v4    # "parcelledData":Landroid/os/Parcel;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit p0

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 257
    .restart local v4    # "parcelledData":Landroid/os/Parcel;
    :cond_2
    :try_start_7
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    .line 260
    .local v0, "N":I
    if-gez v0, :cond_3

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    .line 261
    return-void

    .line 263
    :cond_3
    :try_start_9
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 264
    .local v3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v3, :cond_4

    .line 265
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 271
    .restart local v3    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    :try_start_a
    iget-object v5, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v3, v0, v5}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    :try_end_a
    .catch Landroid/os/BadParcelableException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 287
    :try_start_b
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 288
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 289
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_2
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit p0

    .line 230
    return-void

    .line 267
    :cond_4
    :try_start_d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V

    .line 268
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_e
    sget-boolean v5, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/ClassNotFoundException;

    if-eqz v5, :cond_5

    .line 281
    const-string/jumbo v5, "Bundle"

    const-string/jumbo v6, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 287
    :try_start_f
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 288
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 289
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2

    .line 284
    :cond_5
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 286
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v5

    .line 287
    :try_start_11
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 288
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 289
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 286
    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 272
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/BadParcelableException;
    :try_start_12
    sget-boolean v5, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v5, :cond_6

    .line 274
    const-string/jumbo v5, "Bundle"

    const-string/jumbo v6, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    invoke-virtual {v3}, Landroid/util/ArrayMap;->erase()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 287
    :try_start_13
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 288
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 289
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_2

    .line 277
    :cond_6
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
.end method

.method writeToParcelInner(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const v7, 0x4c444e42    # 5.146036E7f

    const/4 v6, 0x0

    .line 1394
    monitor-enter p0

    .line 1395
    :try_start_0
    iget-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "parcelledData":Landroid/os/Parcel;
    monitor-exit p0

    .line 1397
    if-eqz v3, :cond_1

    .line 1398
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1399
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    :goto_0
    return-void

    .line 1394
    .end local v3    # "parcelledData":Landroid/os/Parcel;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1401
    .restart local v3    # "parcelledData":Landroid/os/Parcel;
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1402
    .local v1, "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    invoke-virtual {p1, v3, v6, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_0

    .line 1408
    .end local v1    # "length":I
    :cond_1
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1409
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    return-void

    .line 1412
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1413
    .local v2, "lengthPos":I
    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1417
    .local v4, "startPos":I
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1418
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1421
    .local v0, "endPos":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1422
    sub-int v1, v0, v4

    .line 1423
    .restart local v1    # "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method
