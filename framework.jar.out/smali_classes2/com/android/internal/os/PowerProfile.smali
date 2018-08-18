.class public Lcom/android/internal/os/PowerProfile;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/PowerProfile$CpuClusterKey;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final POWER_AUDIO:Ljava/lang/String; = "dsp.audio"

.field public static final POWER_BATTERY_CAPACITY:Ljava/lang/String; = "battery.capacity"

.field public static final POWER_BLUETOOTH_ACTIVE:Ljava/lang/String; = "bluetooth.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_AT_CMD:Ljava/lang/String; = "bluetooth.at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_BLUETOOTH_CONTROLLER_IDLE:Ljava/lang/String; = "bluetooth.controller.idle"

.field public static final POWER_BLUETOOTH_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "bluetooth.controller.voltage"

.field public static final POWER_BLUETOOTH_CONTROLLER_RX:Ljava/lang/String; = "bluetooth.controller.rx"

.field public static final POWER_BLUETOOTH_CONTROLLER_TX:Ljava/lang/String; = "bluetooth.controller.tx"

.field public static final POWER_BLUETOOTH_ON:Ljava/lang/String; = "bluetooth.on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CAMERA:Ljava/lang/String; = "camera.avg"

.field public static final POWER_CPU_ACTIVE:Ljava/lang/String; = "cpu.active"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_CPU_AWAKE:Ljava/lang/String; = "cpu.awake"

.field private static final POWER_CPU_CLUSTER_ACTIVE_PREFIX:Ljava/lang/String; = "cpu.active.cluster"

.field private static final POWER_CPU_CLUSTER_CORE_COUNT:Ljava/lang/String; = "cpu.clusters.cores"

.field private static final POWER_CPU_CLUSTER_SPEED_PREFIX:Ljava/lang/String; = "cpu.speeds.cluster"

.field public static final POWER_CPU_IDLE:Ljava/lang/String; = "cpu.idle"

.field public static final POWER_CPU_SPEEDS:Ljava/lang/String; = "cpu.speeds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_FLASHLIGHT:Ljava/lang/String; = "camera.flashlight"

.field public static final POWER_GPS_ON:Ljava/lang/String; = "gps.on"

.field public static final POWER_MODEM_CONTROLLER_IDLE:Ljava/lang/String; = "modem.controller.idle"

.field public static final POWER_MODEM_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "modem.controller.voltage"

.field public static final POWER_MODEM_CONTROLLER_RX:Ljava/lang/String; = "modem.controller.rx"

.field public static final POWER_MODEM_CONTROLLER_TX:Ljava/lang/String; = "modem.controller.tx"

.field public static final POWER_NONE:Ljava/lang/String; = "none"

.field public static final POWER_RADIO_ACTIVE:Ljava/lang/String; = "radio.active"

.field public static final POWER_RADIO_ON:Ljava/lang/String; = "radio.on"

.field public static final POWER_RADIO_SCANNING:Ljava/lang/String; = "radio.scanning"

.field public static final POWER_SCREEN_FULL:Ljava/lang/String; = "screen.full"

.field public static final POWER_SCREEN_ON:Ljava/lang/String; = "screen.on"

.field public static final POWER_VIDEO:Ljava/lang/String; = "dsp.video"

.field public static final POWER_WIFI_ACTIVE:Ljava/lang/String; = "wifi.active"

.field public static final POWER_WIFI_BATCHED_SCAN:Ljava/lang/String; = "wifi.batchedscan"

.field public static final POWER_WIFI_CONTROLLER_IDLE:Ljava/lang/String; = "wifi.controller.idle"

.field public static final POWER_WIFI_CONTROLLER_OPERATING_VOLTAGE:Ljava/lang/String; = "wifi.controller.voltage"

.field public static final POWER_WIFI_CONTROLLER_RX:Ljava/lang/String; = "wifi.controller.rx"

.field public static final POWER_WIFI_CONTROLLER_TX:Ljava/lang/String; = "wifi.controller.tx"

.field public static final POWER_WIFI_CONTROLLER_TX_LEVELS:Ljava/lang/String; = "wifi.controller.tx_levels"

.field public static final POWER_WIFI_ON:Ljava/lang/String; = "wifi.on"

.field public static final POWER_WIFI_SCAN:Ljava/lang/String; = "wifi.scan"

.field private static final TAG:Ljava/lang/String; = "PowerProfile"

.field private static final TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/internal/os/PowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/PowerProfile;->initCpuClusters()V

    .line 206
    return-void
.end method

.method private getPowerProfileResId(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    const v0, 0x111000f

    .line 376
    .local v0, "id":I
    const-string/jumbo v3, "ro.power_profile.override"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "powerProfileOverride":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "xml"

    .line 379
    const-string/jumbo v5, "android"

    .line 378
    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 380
    .local v2, "tmpId":I
    if-lez v2, :cond_1

    .line 381
    const-string/jumbo v3, "PowerProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPowerProfileResId: using power profile \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 382
    const-string/jumbo v5, "\""

    .line 381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move v0, v2

    .line 389
    .end local v2    # "tmpId":I
    :cond_0
    :goto_0
    return v0

    .line 385
    .restart local v2    # "tmpId":I
    :cond_1
    const-string/jumbo v3, "PowerProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPowerProfileResId: could not retrieve power profile \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 386
    const-string/jumbo v5, "\", using default instead"

    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initCpuClusters()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 316
    sget-object v4, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    const-string/jumbo v5, "cpu.clusters.cores"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, [Ljava/lang/Double;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 323
    check-cast v0, [Ljava/lang/Double;

    .line 324
    .local v0, "array":[Ljava/lang/Double;
    array-length v4, v0

    new-array v4, v4, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 325
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 326
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 327
    .local v2, "numCpusInCluster":I
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cpu.speeds.cluster"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cpu.active.cluster"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 327
    invoke-direct {v5, v6, v7, v2, v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey;)V

    aput-object v5, v4, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "array":[Ljava/lang/Double;
    .end local v1    # "cluster":I
    .end local v2    # "numCpusInCluster":I
    :cond_0
    new-array v4, v8, [Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    iput-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .line 320
    iget-object v4, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    new-instance v5, Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    const-string/jumbo v6, "cpu.speeds"

    const-string/jumbo v7, "cpu.active"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 314
    :cond_1
    return-void
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/PowerProfile;->getPowerProfileResId(Landroid/content/Context;)I

    move-result v10

    .line 217
    .local v10, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 218
    .local v17, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 219
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v15, 0x0

    .line 220
    .local v15, "parsingArray":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .line 224
    .local v3, "arrayName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v21, "device"

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 227
    .end local v3    # "arrayName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 229
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "element":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 259
    if-eqz v15, :cond_1

    .line 260
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 271
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v5, v0, [I

    .local v5, "configResIds":[I
    fill-array-data v5, :array_0

    .line 282
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/String;

    .line 283
    const-string/jumbo v21, "bluetooth.controller.idle"

    const/16 v22, 0x0

    aput-object v21, v4, v22

    .line 284
    const-string/jumbo v21, "bluetooth.controller.rx"

    const/16 v22, 0x1

    aput-object v21, v4, v22

    .line 285
    const-string/jumbo v21, "bluetooth.controller.tx"

    const/16 v22, 0x2

    aput-object v21, v4, v22

    .line 286
    const-string/jumbo v21, "bluetooth.controller.voltage"

    const/16 v22, 0x3

    aput-object v21, v4, v22

    .line 287
    const-string/jumbo v21, "wifi.controller.idle"

    const/16 v22, 0x4

    aput-object v21, v4, v22

    .line 288
    const-string/jumbo v21, "wifi.controller.rx"

    const/16 v22, 0x5

    aput-object v21, v4, v22

    .line 289
    const-string/jumbo v21, "wifi.controller.tx"

    const/16 v22, 0x6

    aput-object v21, v4, v22

    .line 290
    const-string/jumbo v21, "wifi.controller.voltage"

    const/16 v22, 0x7

    aput-object v21, v4, v22

    .line 293
    .local v4, "configResIdKeys":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_b

    .line 294
    aget-object v11, v4, v9

    .line 297
    .local v11, "key":Ljava/lang/String;
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Double;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-lez v21, :cond_a

    .line 293
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 232
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v9    # "i":I
    .end local v11    # "key":Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_4

    :try_start_1
    const-string/jumbo v21, "value"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 237
    :cond_4
    :goto_3
    const-string/jumbo v21, "array"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 238
    const/4 v15, 0x1

    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 240
    const-string/jumbo v21, "name"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "arrayName":Ljava/lang/String;
    goto/16 :goto_0

    .line 234
    .end local v3    # "arrayName":Ljava/lang/String;
    :cond_5
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Double;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const/4 v15, 0x0

    goto :goto_3

    .line 241
    :cond_6
    const-string/jumbo v21, "item"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string/jumbo v21, "value"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 242
    :cond_7
    const/4 v12, 0x0

    .line 243
    .local v12, "name":Ljava/lang/String;
    if-nez v15, :cond_8

    const-string/jumbo v21, "name"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 244
    .end local v12    # "name":Ljava/lang/String;
    :cond_8
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 245
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 246
    .local v16, "power":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 248
    .local v18, "value":D
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v18

    .line 251
    :goto_4
    :try_start_3
    const-string/jumbo v21, "item"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 252
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 262
    .end local v8    # "element":Ljava/lang/String;
    .end local v16    # "power":Ljava/lang/String;
    .end local v18    # "value":D
    :catch_0
    move-exception v7

    .line 263
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v21

    .line 267
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 266
    throw v21

    .line 253
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v16    # "power":Ljava/lang/String;
    .restart local v18    # "value":D
    :cond_9
    if-eqz v15, :cond_0

    .line 254
    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 264
    .end local v8    # "element":Ljava/lang/String;
    .end local v16    # "power":Ljava/lang/String;
    .end local v18    # "value":D
    :catch_1
    move-exception v6

    .line 265
    .local v6, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 300
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "configResIdKeys":[Ljava/lang/String;
    .restart local v5    # "configResIds":[I
    .restart local v8    # "element":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v11    # "key":Ljava/lang/String;
    :cond_a
    aget v21, v5, v9

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 301
    .local v20, "value":I
    if-lez v20, :cond_2

    .line 302
    sget-object v21, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 215
    .end local v11    # "key":Ljava/lang/String;
    .end local v20    # "value":I
    :cond_b
    return-void

    .line 249
    .end local v4    # "configResIdKeys":[Ljava/lang/String;
    .end local v5    # "configResIds":[I
    .end local v9    # "i":I
    .restart local v16    # "power":Ljava/lang/String;
    .restart local v18    # "value":D
    :catch_2
    move-exception v13

    .local v13, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 271
    nop

    :array_0
    .array-data 4
        0x10e007f
        0x10e0080
        0x10e0081
        0x10e0082
        0x10e003e
        0x10e003f
        0x10e0040
        0x10e0041
    .end array-data
.end method


# virtual methods
.method public getAveragePower(Ljava/lang/String;)D
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 418
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAveragePower(Ljava/lang/String;I)D
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 430
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    sget-object v2, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "data":Ljava/lang/Object;
    instance-of v2, v0, [Ljava/lang/Double;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 433
    check-cast v1, [Ljava/lang/Double;

    .line 434
    .local v1, "values":[Ljava/lang/Double;
    array-length v2, v1

    if-le v2, p2, :cond_0

    if-ltz p2, :cond_0

    .line 435
    aget-object v2, v1, p2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 436
    :cond_0
    if-ltz p2, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    .line 437
    :cond_1
    return-wide v4

    .line 439
    :cond_2
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 442
    .end local v1    # "values":[Ljava/lang/Double;
    :cond_3
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 445
    :cond_4
    return-wide v4
.end method

.method public getAveragePowerForCpu(II)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .prologue
    .line 364
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-get1(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    .line 367
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAveragePowerOrDefault(Ljava/lang/String;D)D
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 400
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 402
    .local v0, "data":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 403
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "data":Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 405
    .restart local v0    # "data":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 408
    .end local v0    # "data":Ljava/lang/Object;
    :cond_1
    return-wide p2
.end method

.method public getBatteryCapacity()D
    .locals 2

    .prologue
    .line 455
    const-string/jumbo v0, "battery.capacity"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumCoresInCpuCluster(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-get0(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I

    move-result v0

    return v0
.end method

.method public getNumCpuClusters()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    array-length v0, v0

    return v0
.end method

.method public getNumSpeedStepsInCpuCluster(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 356
    sget-object v1, Lcom/android/internal/os/PowerProfile;->sPowerMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/os/PowerProfile;->mCpuClusters:[Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->-get2(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 358
    check-cast v0, [Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    array-length v1, v0

    return v1

    .line 360
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
