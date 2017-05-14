.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final ACTIVE_MD_TYPE_LTG:I = 0x4

.field private static final ACTIVE_MD_TYPE_LWCG:I = 0x5

.field private static final ACTIVE_MD_TYPE_LWG:I = 0x3

.field private static final ACTIVE_MD_TYPE_LfWG:I = 0x7

.field private static final ACTIVE_MD_TYPE_LtTG:I = 0x6

.field private static final ACTIVE_MD_TYPE_TG:I = 0x2

.field private static final ACTIVE_MD_TYPE_UNKNOWN:I = 0x0

.field private static final ACTIVE_MD_TYPE_WG:I = 0x1

.field private static final IS_LTE_SUPPORT:Z

.field private static final IS_WORLD_MODE_SUPPORT:Z

.field private static final IS_WORLD_PHONE_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field private static final PROPERTY_MAJOR_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field public static final UTRAN_DIVISION_DUPLEX_MODE_FDD:I = 0x1

.field public static final UTRAN_DIVISION_DUPLEX_MODE_TDD:I = 0x2

.field public static final UTRAN_DIVISION_DUPLEX_MODE_UNKNOWN:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sContext:Landroid/content/Context;

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    .line 72
    const-string/jumbo v0, "ro.mtk_world_phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 71
    :goto_0
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    .line 74
    const-string/jumbo v0, "ro.mtk_lte_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 73
    :goto_1
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    .line 76
    const-string/jumbo v0, "ro.mtk_md_world_mode_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 75
    :goto_2
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    .line 78
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 79
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 80
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 81
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 74
    goto :goto_1

    :cond_2
    move v1, v2

    .line 76
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string/jumbo v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 89
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v2, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 84
    :goto_1
    return-void

    .line 94
    :cond_1
    const-string/jumbo v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 205
    packed-switch p0, :pswitch_data_0

    .line 222
    const-string/jumbo v0, "Invalid Reason"

    .line 226
    .local v0, "drString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 207
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "CAMP_ON_NOT_DENIED"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_UNKNOWN"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_FDD"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_TDD"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_DOMESTIC_FDD_MD"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMajorSim()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public static getModemSelectionMode()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public static getProjectSimNum()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    return v0
.end method

.method public static iccCardTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "iccCardType"    # I

    .prologue
    .line 231
    packed-switch p0, :pswitch_data_0

    .line 242
    const-string/jumbo v0, "Invalid Icc Card Type"

    .line 246
    .local v0, "iccTypeString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 233
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "SIM"

    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "USIM"

    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "Icc Card Type Unknown"

    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLteSupport()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    return v0
.end method

.method public static isWorldModeSupport()Z
    .locals 1

    .prologue
    .line 254
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSupport()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSwitching()Z
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->isWorldModeSwitching()Z

    move-result v0

    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "regState"    # I

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_0

    .line 196
    const-string/jumbo v0, "Invalid RegState"

    .line 200
    .local v0, "rsString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 178
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "REGISTRATION_STATE_HOME_NETWORK"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "REGISTRATION_STATE_UNKNOWN"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "REGISTRATION_STATE_ROAMING"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "region"    # I

    .prologue
    .line 133
    packed-switch p0, :pswitch_data_0

    .line 144
    const-string/jumbo v0, "Invalid Region"

    .line 148
    .local v0, "regionString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 135
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "REGION_UNKNOWN"

    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "REGION_DOMESTIC"

    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 141
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REGION_FOREIGN"

    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 167
    const-string/jumbo v0, "Invalid State"

    .line 171
    .local v0, "stateString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 155
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "STATE_POWER_OFF"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "STATE_IN_SERVICE"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "STATE_OUT_OF_SERVICE"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "STATE_EMERGENCY_ONLY"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setModemSelectionMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    .line 249
    return-void
.end method
