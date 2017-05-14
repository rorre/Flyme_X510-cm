.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final DO_SWITCH:I = 0x0

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final IMSI_READY:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field public static final NOT_SWITCH:I = 0x1

.field public static final NOT_SWITCH_SIM_INFO_NOT_READY:I = 0x2

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP18:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field private static final PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OP18:I = 0x5

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "46000"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46002"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46007"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46008"

    aput-object v1, v0, v6

    const-string/jumbo v1, "45412"

    aput-object v1, v0, v7

    const-string/jumbo v1, "45413"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "00101"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "00211"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "00321"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "00431"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "00541"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "00651"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "00761"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "00871"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "00902"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "01012"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "01122"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "01232"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "46004"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "46602"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "50270"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 84
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 92
    new-array v0, v7, [Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "46001"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46006"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46009"

    aput-object v1, v0, v5

    const-string/jumbo v1, "45407"

    aput-object v1, v0, v6

    .line 92
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 96
    new-array v0, v7, [Ljava/lang/String;

    .line 97
    const-string/jumbo v1, "46005"

    aput-object v1, v0, v3

    const-string/jumbo v1, "45502"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46003"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46011"

    aput-object v1, v0, v6

    .line 96
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 101
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "405840"

    aput-object v1, v0, v3

    const-string/jumbo v1, "405854"

    aput-object v1, v0, v4

    const-string/jumbo v1, "405855"

    aput-object v1, v0, v5

    const-string/jumbo v1, "405856"

    aput-object v1, v0, v6

    .line 103
    const-string/jumbo v1, "405857"

    aput-object v1, v0, v7

    const-string/jumbo v1, "405858"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "405855"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "405856"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "405857"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "405858"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "405859"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "405860"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "405861"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "405862"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "405863"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "405864"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "405865"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "405866"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "405867"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "405868"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "405869"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "405870"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "405871"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "405872"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "405873"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "405874"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 101
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    .line 114
    new-array v0, v7, [Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 116
    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    .line 117
    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    .line 118
    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    .line 114
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    .line 130
    new-array v0, v7, [Ljava/lang/String;

    .line 131
    const-string/jumbo v1, "ril.imsi.status.sim1"

    aput-object v1, v0, v3

    .line 132
    const-string/jumbo v1, "ril.imsi.status.sim2"

    aput-object v1, v0, v4

    .line 133
    const-string/jumbo v1, "ril.imsi.status.sim3"

    aput-object v1, v0, v5

    .line 134
    const-string/jumbo v1, "ril.imsi.status.sim4"

    aput-object v1, v0, v6

    .line 130
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01LC(I[I[I)Z
    .locals 12
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 437
    const-string/jumbo v7, "persist.radio.simswitch"

    const-string/jumbo v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 436
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 438
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 439
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 440
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 441
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 442
    .local v1, "currIccId":[Ljava/lang/String;
    new-array v6, v5, [I

    .line 443
    .local v6, "priority":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ril.iccid.sim"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 445
    const-string/jumbo v7, "N/A"

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 446
    add-int/lit8 v3, v3, 0x1

    .line 447
    shl-int v7, v9, v2

    or-int/2addr v4, v7

    .line 449
    :cond_0
    aget v7, p1, v2

    if-ne v7, v11, :cond_3

    .line 450
    aget v7, p2, v2

    if-ne v7, v9, :cond_2

    .line 451
    aput v10, v6, v2

    .line 443
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_2
    aget v7, p2, v2

    if-nez v7, :cond_1

    .line 453
    aput v9, v6, v2

    goto :goto_1

    .line 456
    :cond_3
    aput v11, v6, v2

    goto :goto_1

    .line 460
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(curPhoneId): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkOp01LC(insertedSimCount): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 462
    if-ne v3, v9, :cond_5

    .line 463
    const-string/jumbo v7, "checkOp01LC : single SIM case, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 464
    return v9

    .line 466
    :cond_5
    aget v7, v6, p0

    aget v8, v6, v0

    if-gt v7, v8, :cond_6

    .line 467
    const-string/jumbo v7, "checkOp01LC : target priority greater than or equal to current, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 468
    return v9

    .line 470
    :cond_6
    const-string/jumbo v7, "checkOp01LC : target priority lower than current; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 471
    return v10
.end method

.method public static clearAllRilMccMnc(I)V
    .locals 2
    .param p0, "phoneNum"    # I

    .prologue
    .line 618
    const-string/jumbo v1, "clearAllRilMccMnc"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 620
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    return-void
.end method

.method public static clearAllSimImsiStatus()V
    .locals 2

    .prologue
    .line 611
    const-string/jumbo v1, "clearAllSimImsiStatus"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 613
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_0
    return-void
.end method

.method public static clearRilMccMnc(I)V
    .locals 3
    .param p0, "slot"    # I

    .prologue
    .line 601
    if-nez p0, :cond_0

    .line 602
    const-string/jumbo v0, "gsm.sim.ril.mcc.mnc"

    .line 606
    .local v0, "propStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clear property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 599
    return-void

    .line 604
    .end local v0    # "propStr":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 5
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v4, -0x1

    .line 362
    const/4 v2, -0x1

    .line 363
    .local v2, "targetSim":I
    array-length v1, p1

    .line 365
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-eqz v3, :cond_0

    .line 366
    return p0

    .line 368
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 369
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_1

    .line 370
    move v2, v0

    .line 368
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_2
    if-ne v2, v4, :cond_3

    aget-boolean v3, p2, p0

    if-eqz v3, :cond_4

    .line 374
    :cond_3
    return v2

    .line 376
    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    .line 377
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_5

    .line 378
    move v2, v0

    .line 376
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    :cond_6
    if-ne v2, v4, :cond_7

    aget-boolean v3, p3, p0

    if-eqz v3, :cond_8

    .line 382
    :cond_7
    return v2

    .line 384
    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_a

    .line 385
    aget-boolean v3, p3, v0

    if-eqz v3, :cond_9

    .line 386
    move v2, v0

    .line 384
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 389
    :cond_a
    if-ne v2, v4, :cond_b

    aget-boolean v3, p4, p0

    if-eqz v3, :cond_c

    .line 390
    :cond_b
    return v2

    .line 392
    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_e

    .line 393
    aget-boolean v3, p4, v0

    if-eqz v3, :cond_d

    .line 394
    move v2, v0

    .line 392
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 397
    :cond_e
    return v2
.end method

.method public static getHighestPriorityPhone(I[I)I
    .locals 9
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 408
    const/4 v4, 0x0

    .line 409
    .local v4, "targetPhone":I
    array-length v3, p1

    .line 410
    .local v3, "phoneNum":I
    const/4 v1, 0x0

    .line 411
    .local v1, "highestPriorityCount":I
    const/4 v0, 0x0

    .line 413
    .local v0, "highestPriorityBitMap":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 414
    aget v5, p1, v2

    aget v6, p1, v4

    if-ge v5, v6, :cond_1

    .line 415
    move v4, v2

    .line 416
    const/4 v1, 0x1

    .line 417
    shl-int v0, v7, v2

    .line 413
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_1
    aget v5, p1, v2

    aget v6, p1, v4

    if-ne v5, v6, :cond_0

    .line 419
    add-int/lit8 v1, v1, 0x1

    .line 420
    shl-int v5, v7, v2

    or-int/2addr v0, v5

    goto :goto_1

    .line 423
    :cond_2
    if-ne v1, v7, :cond_3

    .line 424
    return v4

    .line 425
    :cond_3
    if-ne p0, v8, :cond_4

    .line 428
    return v8

    .line 429
    :cond_4
    shl-int v5, v7, p0

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    .line 430
    return p0

    .line 432
    :cond_5
    return v8
.end method

.method private static getSimImsiStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "slot"    # I

    .prologue
    .line 595
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 596
    .local v0, "propStr":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfo([I[II)Z
    .locals 9
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    .line 177
    array-length v5, p0

    new-array v3, v5, [Ljava/lang/String;

    .line 178
    .local v3, "strMnc":[Ljava/lang/String;
    array-length v5, p0

    new-array v4, v5, [Ljava/lang/String;

    .line 181
    .local v4, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_16

    .line 182
    if-nez v0, :cond_3

    .line 183
    const-string/jumbo v2, "gsm.ril.uicctype"

    .line 187
    .local v2, "propStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 188
    aget-object v5, v4, v0

    const-string/jumbo v6, "SIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    const/4 v5, 0x0

    aput v5, p1, v0

    .line 195
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", simType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 197
    if-nez v0, :cond_6

    .line 198
    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc"

    .line 202
    :goto_3
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 203
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 204
    aget-object v5, v3, v0

    const-string/jumbo v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 203
    if-nez v5, :cond_0

    .line 205
    aget-object v5, v3, v0

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 203
    if-nez v5, :cond_0

    .line 206
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_absent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 203
    if-eqz v5, :cond_8

    .line 207
    :cond_0
    const-string/jumbo v5, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 209
    const-string/jumbo v5, "gsm.sim.operator.imsi"

    const-string/jumbo v6, ""

    .line 208
    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 210
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_7

    .line 211
    aget-object v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 215
    :cond_1
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from gsm.sim.operator.imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 220
    :cond_2
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insertedStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 221
    if-ltz p2, :cond_c

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    and-int/2addr v5, p2

    if-lez v5, :cond_c

    .line 222
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 223
    const-string/jumbo v5, "SIM is inserted but no imsi"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 224
    const/4 v5, 0x0

    return v5

    .line 185
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.ril.uicctype."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 190
    :cond_4
    aget-object v5, v4, v0

    const-string/jumbo v6, "USIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    const/4 v5, 0x1

    aput v5, p1, v0

    goto/16 :goto_2

    .line 193
    :cond_5
    const/4 v5, 0x2

    aput v5, p1, v0

    goto/16 :goto_2

    .line 200
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 212
    :cond_7
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    .line 213
    aget-object v5, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    goto/16 :goto_4

    .line 218
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 226
    :cond_9
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 227
    const-string/jumbo v5, "SIM is lock, wait pin unlock"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 228
    const/4 v5, 0x0

    return v5

    .line 230
    :cond_a
    aget-object v5, v3, v0

    const-string/jumbo v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 231
    aget-object v5, v3, v0

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 230
    if-nez v5, :cond_b

    .line 232
    aget-object v5, v3, v0

    const-string/jumbo v6, "sim_absent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 230
    if-eqz v5, :cond_c

    .line 233
    :cond_b
    const-string/jumbo v5, "strMnc have invalid value, return false"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 234
    const/4 v5, 0x0

    return v5

    .line 237
    :cond_c
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_6
    if-ge v5, v7, :cond_d

    aget-object v1, v6, v5

    .line 238
    .local v1, "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 239
    const/4 v5, 0x2

    aput v5, p0, v0

    .line 243
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_d
    aget v5, p0, v0

    if-nez v5, :cond_e

    .line 244
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_7
    if-ge v5, v7, :cond_e

    aget-object v1, v6, v5

    .line 245
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 246
    const/4 v5, 0x3

    aput v5, p0, v0

    .line 251
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_e
    aget v5, p0, v0

    if-nez v5, :cond_f

    .line 252
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_8
    if-ge v5, v7, :cond_f

    aget-object v1, v6, v5

    .line 253
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 254
    const/4 v5, 0x4

    aput v5, p0, v0

    .line 259
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_f
    const-string/jumbo v5, "ro.operator.optr"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OP18"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 260
    aget v5, p0, v0

    if-nez v5, :cond_10

    .line 261
    sget-object v6, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP18:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_9
    if-ge v5, v7, :cond_10

    aget-object v1, v6, v5

    .line 262
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v8, v3, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 263
    const/4 v5, 0x5

    aput v5, p0, v0

    .line 269
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_10
    aget v5, p0, v0

    if-nez v5, :cond_11

    .line 270
    aget-object v5, v3, v0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 271
    const/4 v5, 0x1

    aput v5, p0, v0

    .line 274
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strMnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", simOpInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 237
    .restart local v1    # "mccmnc":Ljava/lang/String;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 244
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 252
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 261
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 276
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simOpInfo): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simType): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 278
    const/4 v5, 0x1

    return v5
.end method

.method public static isC2kSupport()Z
    .locals 2

    .prologue
    .line 581
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const-string/jumbo v0, "return true for C2K project"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 583
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNeedShowSimDialog()I
    .locals 14

    .prologue
    .line 489
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 490
    const-string/jumbo v12, "mtk_disable_cap_switch is true"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 491
    const/4 v12, 0x0

    return v12

    .line 494
    :cond_0
    const-string/jumbo v12, "isNeedShowSimDialog start"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 496
    .local v7, "phoneCount":I
    new-array v9, v7, [I

    .line 497
    .local v9, "simOpInfo":[I
    new-array v10, v7, [I

    .line 498
    .local v10, "simType":[I
    new-array v0, v7, [Ljava/lang/String;

    .line 499
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 500
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 501
    .local v3, "insertedStatus":I
    const/4 v4, 0x0

    .line 502
    .local v4, "op02CardCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v11, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v8, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v5, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v6, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 508
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 509
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "currIccid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 510
    aget-object v12, v0, v1

    if-eqz v12, :cond_1

    const-string/jumbo v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 511
    :cond_1
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "iccid not found, wait for next sim state change"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v12, 0x3

    return v12

    .line 514
    :cond_2
    const-string/jumbo v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 515
    add-int/lit8 v2, v2, 0x1

    .line 516
    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v3, v12

    .line 507
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_4
    const/4 v12, 0x2

    if-ge v2, v12, :cond_5

    .line 521
    const-string/jumbo v12, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 522
    const/4 v12, 0x1

    return v12

    .line 525
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 526
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v12, 0x2

    return v12

    .line 529
    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_a

    .line 531
    aget v12, v10, v1

    const/4 v13, 0x1

    if-ne v13, v12, :cond_8

    .line 532
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_7
    :goto_2
    aget v12, v9, v1

    const/4 v13, 0x3

    if-ne v13, v12, :cond_9

    .line 539
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 533
    :cond_8
    aget v12, v10, v1

    if-nez v12, :cond_7

    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 541
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 544
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 545
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    .line 549
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_c

    .line 550
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 551
    add-int/lit8 v4, v4, 0x1

    .line 549
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 555
    :cond_c
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 556
    const-string/jumbo v12, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 557
    const/4 v12, 0x1

    return v12

    .line 559
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 560
    const-string/jumbo v12, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 561
    const/4 v12, 0x1

    return v12

    .line 565
    :cond_e
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 566
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 567
    add-int/lit8 v4, v4, 0x1

    .line 565
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 571
    :cond_10
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 572
    const-string/jumbo v12, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 573
    const/4 v12, 0x1

    return v12

    .line 576
    :cond_11
    const-string/jumbo v12, "isNeedShowSimDialog: Show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 577
    const/4 v12, 0x0

    return v12
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I
    .locals 14
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 291
    const-string/jumbo v11, "ro.operator.optr"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "operatorSpec":Ljava/lang/String;
    array-length v11, p0

    new-array v6, v11, [I

    .line 293
    .local v6, "simOpInfo":[I
    array-length v11, p0

    new-array v7, v11, [I

    .line 295
    .local v7, "simType":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 296
    .local v5, "phoneCount":I
    const/4 v2, 0x0

    .line 297
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 298
    .local v3, "insertedStatus":I
    new-array v0, v5, [Ljava/lang/String;

    .line 300
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Operator Spec:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v11, "ro.mtk_disable_cap_switch"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 302
    const-string/jumbo v9, "mtk_disable_cap_switch is true"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 303
    return v10

    .line 304
    :cond_0
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 312
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 313
    sget-object v11, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    .line 314
    aget-object v11, v0, v1

    if-eqz v11, :cond_1

    const-string/jumbo v11, ""

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 315
    :cond_1
    const-string/jumbo v9, "error: iccid not found, not switch, return NOT_SWITCH_SIM_INFO_NOT_READY"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 316
    return v13

    .line 308
    .end local v1    # "i":I
    :cond_2
    return v9

    .line 318
    .restart local v1    # "i":I
    :cond_3
    const-string/jumbo v11, "N/A"

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 319
    add-int/lit8 v2, v2, 0x1

    .line 320
    shl-int v11, v10, v1

    or-int/2addr v3, v11

    .line 312
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_5
    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v11

    if-nez v11, :cond_6

    .line 324
    if-eq v2, v10, :cond_6

    .line 325
    return v13

    .line 330
    :cond_6
    const/4 v8, 0x0

    .local v8, "targetPhoneId":I
    :goto_1
    array-length v11, p1

    if-ge v8, v11, :cond_7

    .line 331
    const-string/jumbo v11, "ro.mtk_lte_support"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 332
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    .line 333
    const/16 v12, 0x4000

    .line 332
    if-ne v11, v12, :cond_9

    .line 343
    :cond_7
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 344
    invoke-static {v8, v6, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01LC(I[I[I)Z

    move-result v11

    if-eqz v11, :cond_a

    :goto_2
    return v9

    .line 337
    :cond_8
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    .line 338
    const/16 v12, 0x8

    .line 337
    if-eq v11, v12, :cond_7

    .line 330
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_a
    move v9, v10

    .line 344
    goto :goto_2

    .line 346
    :cond_b
    return v9
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 475
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "bIsMajorPhone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 150
    const-string/jumbo v3, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 151
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    .line 152
    const/16 v4, 0x4000

    .line 151
    if-ne v3, v4, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 161
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.iccid.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "currIccId":Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.simswitch.iccid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 146
    .end local v1    # "currIccId":Ljava/lang/String;
    :cond_1
    return-void

    .line 156
    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    .line 157
    const/16 v4, 0x8

    .line 156
    if-ne v3, v4, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_1

    .line 148
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static updateSimImsiStatus(ILjava/lang/String;)V
    .locals 3
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSimImsiStatus slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 590
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 591
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method
