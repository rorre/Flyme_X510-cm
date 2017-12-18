.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "ApnSetting"

.field static final TAG:Ljava/lang/String; = "ApnSetting"

.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field private final bearer:I

.field public final bearerBitmask:I

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final modemCognitive:Z

.field public final mtu:I

.field public final mvnoMatchData:Ljava/lang/String;

.field public final mvnoType:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public permanentFailed:Z

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearerBitmask"    # I
    .param p19, "profileId"    # I
    .param p20, "modemCognitive"    # Z
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConnsTime"    # I
    .param p24, "mtu"    # I
    .param p25, "mvnoType"    # Ljava/lang/String;
    .param p26, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    .line 124
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 125
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 129
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 130
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 131
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 132
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 133
    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 135
    move/from16 v0, p12

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 136
    move-object/from16 v0, p13

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, p13, v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 142
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 143
    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 144
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int v2, v2, p18

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    .line 145
    move/from16 v0, p19

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 146
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 147
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 148
    move/from16 v0, p22

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 149
    move/from16 v0, p23

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 150
    move/from16 v0, p24

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 151
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 28
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 157
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    move/from16 v19, v0

    .line 160
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    move/from16 v24, v0

    .line 161
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v1, p0

    .line 157
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static arrayFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v3, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    return-object v3

    .line 289
    :cond_0
    const-string/jumbo v4, "\\s*;\\s*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "apnStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 291
    .local v1, "apnString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 292
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apnString":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 31
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 193
    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 197
    :cond_0
    const-string/jumbo v1, "^\\[ApnSettingV3\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const/16 v30, 0x3

    .line 199
    .local v30, "version":I
    const-string/jumbo v1, "^\\[ApnSettingV3\\]\\s*"

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    :goto_0
    const-string/jumbo v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 208
    .local v28, "a":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    .line 209
    const/4 v1, 0x0

    return-object v1

    .line 200
    .end local v28    # "a":[Ljava/lang/String;
    .end local v30    # "version":I
    :cond_1
    const-string/jumbo v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const/16 v30, 0x2

    .line 202
    .restart local v30    # "version":I
    const-string/jumbo v1, "^\\[ApnSettingV2\\]\\s*"

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 204
    .end local v30    # "version":I
    :cond_2
    const/16 v30, 0x1

    .restart local v30    # "version":I
    goto :goto_0

    .line 214
    .restart local v28    # "a":[Ljava/lang/String;
    :cond_3
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 222
    .local v13, "authType":I
    :goto_1
    const/16 v19, 0x0

    .line 223
    .local v19, "bearerBitmask":I
    const/16 v20, 0x0

    .line 224
    .local v20, "profileId":I
    const/16 v21, 0x0

    .line 225
    .local v21, "modemCognitive":Z
    const/16 v22, 0x0

    .line 226
    .local v22, "maxConns":I
    const/16 v23, 0x0

    .line 227
    .local v23, "waitTime":I
    const/16 v24, 0x0

    .line 228
    .local v24, "maxConnsTime":I
    const/16 v25, 0x0

    .line 229
    .local v25, "mtu":I
    const-string/jumbo v26, ""

    .line 230
    .local v26, "mvnoType":Ljava/lang/String;
    const-string/jumbo v27, ""

    .line 231
    .local v27, "mvnoMatchData":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, v30

    if-ne v0, v1, :cond_5

    .line 232
    move-object/from16 v0, v28

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .line 233
    .local v14, "typeArray":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-static {v0, v2, v14, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    const-string/jumbo v15, "IP"

    .line 235
    .local v15, "protocol":Ljava/lang/String;
    const-string/jumbo v16, "IP"

    .line 236
    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    .line 270
    .end local v21    # "modemCognitive":Z
    :cond_4
    :goto_2
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aget-object v4, v28, v2

    const/4 v2, 0x1

    aget-object v5, v28, v2

    const/4 v2, 0x2

    aget-object v6, v28, v2

    const/4 v2, 0x3

    aget-object v7, v28, v2

    const/4 v2, 0x7

    aget-object v8, v28, v2

    const/16 v2, 0x8

    aget-object v9, v28, v2

    .line 271
    const/16 v2, 0x9

    aget-object v10, v28, v2

    const/4 v2, 0x4

    aget-object v11, v28, v2

    const/4 v2, 0x5

    aget-object v12, v28, v2

    .line 270
    const/4 v2, -0x1

    .line 271
    const/16 v18, 0x0

    .line 270
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 215
    .end local v13    # "authType":I
    .end local v14    # "typeArray":[Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v19    # "bearerBitmask":I
    .end local v20    # "profileId":I
    .end local v22    # "maxConns":I
    .end local v23    # "waitTime":I
    .end local v24    # "maxConnsTime":I
    .end local v25    # "mtu":I
    .end local v26    # "mvnoType":Ljava/lang/String;
    .end local v27    # "mvnoMatchData":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 216
    .local v29, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    .restart local v13    # "authType":I
    goto :goto_1

    .line 238
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "bearerBitmask":I
    .restart local v20    # "profileId":I
    .restart local v21    # "modemCognitive":Z
    .restart local v22    # "maxConns":I
    .restart local v23    # "waitTime":I
    .restart local v24    # "maxConnsTime":I
    .restart local v25    # "mtu":I
    .restart local v26    # "mvnoType":Ljava/lang/String;
    .restart local v27    # "mvnoMatchData":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_6

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 241
    :cond_6
    const/16 v1, 0xd

    aget-object v1, v28, v1

    const-string/jumbo v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 242
    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v28, v1

    .line 243
    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v28, v1

    .line 244
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 246
    .local v17, "carrierEnabled":Z
    const/16 v1, 0x11

    aget-object v1, v28, v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v19

    .line 248
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x16

    if-le v1, v2, :cond_7

    .line 249
    const/16 v1, 0x13

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 251
    .local v21, "modemCognitive":Z
    const/16 v1, 0x12

    :try_start_1
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 252
    const/16 v1, 0x14

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 253
    const/16 v1, 0x15

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 254
    const/16 v1, 0x16

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v24

    .line 258
    .end local v21    # "modemCognitive":Z
    :cond_7
    :goto_3
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x17

    if-le v1, v2, :cond_8

    .line 260
    const/16 v1, 0x17

    :try_start_2
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v25

    .line 264
    :cond_8
    :goto_4
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 265
    const/16 v1, 0x18

    aget-object v26, v28, v1

    .line 266
    const/16 v1, 0x19

    aget-object v27, v28, v1

    goto/16 :goto_2

    .line 261
    :catch_1
    move-exception v29

    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 255
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "modemCognitive":Z
    :catch_2
    move-exception v29

    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 366
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 367
    .local v3, "len":I
    const/4 v2, 0x0

    .line 369
    .local v2, "idxCompare":I
    if-gtz v3, :cond_0

    return v5

    .line 370
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    return v5

    .line 372
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 373
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 374
    .local v0, "c":C
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2

    const/16 v4, 0x58

    if-ne v0, v4, :cond_3

    .line 372
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_2

    .line 377
    return v5

    .line 380
    .end local v0    # "c":C
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method public static isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "isRoaming"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 421
    if-eqz p3, :cond_0

    .line 422
    const-string/jumbo v1, "carrier_metered_roaming_apn_types_strings"

    .line 426
    .local v1, "carrierConfig":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "carrier_config"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 425
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 427
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v2, :cond_1

    .line 428
    const-string/jumbo v5, "ApnSetting"

    const-string/jumbo v6, "Carrier config service is not available"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v8

    .line 423
    .end local v1    # "carrierConfig":Ljava/lang/String;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_0
    const-string/jumbo v1, "carrier_metered_apn_types_strings"

    .restart local v1    # "carrierConfig":Ljava/lang/String;
    goto :goto_0

    .line 432
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_1
    invoke-virtual {v2, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 433
    .local v0, "b":Landroid/os/PersistableBundle;
    if-nez v0, :cond_2

    .line 434
    const-string/jumbo v5, "ApnSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get the config. subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return v8

    .line 438
    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "meteredApnTypes":[Ljava/lang/String;
    if-nez v4, :cond_3

    .line 440
    const-string/jumbo v5, "ApnSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not available. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return v8

    .line 444
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 452
    .local v3, "meteredApnSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v5, "*"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 454
    return v8

    .line 457
    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 459
    return v8

    .line 460
    :cond_5
    const-string/jumbo v5, "*"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 463
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 466
    return v8

    .line 471
    :cond_6
    return v6
.end method

.method public static mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "mvnoType"    # Ljava/lang/String;
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 384
    const-string/jumbo v6, "spn"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 385
    if-eqz v6, :cond_4

    .line 387
    return v12

    .line 389
    :cond_0
    const-string/jumbo v6, "imsi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "imsiSIM":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {p2, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 392
    return v12

    .line 394
    .end local v2    # "imsiSIM":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "gid"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 397
    .local v5, "mvno_match_data_length":I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v5, :cond_4

    .line 398
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 397
    if-eqz v6, :cond_4

    .line 399
    return v12

    .line 401
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v5    # "mvno_match_data_length":I
    :cond_2
    const-string/jumbo v6, "iccid"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 404
    const-string/jumbo v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "mvnoIccidList":[Ljava/lang/String;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v3, v4, v6

    .line 406
    .local v3, "mvnoIccid":Ljava/lang/String;
    const-string/jumbo v9, "ApnSetting"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mvnoIccid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 408
    const-string/jumbo v6, "ApnSetting"

    const-string/jumbo v7, "mvno icc id match found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v12

    .line 405
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 415
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v3    # "mvnoIccid":Ljava/lang/String;
    .end local v4    # "mvnoIccidList":[Ljava/lang/String;
    :cond_4
    return v7
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-nez v2, :cond_0

    return v3

    .line 345
    :cond_0
    const/4 v1, 0x1

    .line 346
    .local v1, "wildcardable":Z
    const-string/jumbo v2, "ia"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 347
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v0, v4, v2

    .line 349
    .local v0, "t":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 350
    if-eqz v1, :cond_2

    const-string/jumbo v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 349
    if-nez v6, :cond_3

    .line 351
    :cond_2
    const-string/jumbo v6, "default"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 352
    const-string/jumbo v6, "hipri"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 349
    if-eqz v6, :cond_4

    .line 353
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 347
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "t":Ljava/lang/String;
    :cond_5
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 491
    instance-of v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v2, :cond_0

    .line 492
    return v1

    :cond_0
    move-object v0, p1

    .line 495
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 497
    .local v0, "other":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    if-ne v2, v3, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 507
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 508
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    if-ne v2, v3, :cond_1

    .line 509
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 512
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v2, v3, :cond_1

    .line 513
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v2, v3, :cond_1

    .line 514
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    if-ne v2, v3, :cond_1

    .line 515
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v2, v3, :cond_1

    .line 516
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    if-ne v2, v3, :cond_1

    .line 517
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    if-ne v2, v3, :cond_1

    .line 518
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    if-ne v2, v3, :cond_1

    .line 519
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    if-ne v2, v3, :cond_1

    .line 520
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    if-ne v2, v3, :cond_1

    .line 521
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 497
    if-eqz v2, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 497
    :cond_1
    return v1
.end method

.method public hasMvnoParams()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMetered(Landroid/content/Context;IZ)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "isRoaming"    # Z

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 477
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->isMeteredApnType(Ljava/lang/String;Landroid/content/Context;IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    const/4 v1, 0x1

    return v1

    .line 475
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[ApnSettingV3] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 308
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 308
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    const-string/jumbo v3, ", "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 316
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
