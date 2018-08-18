.class public Lcom/android/internal/telephony/TelephonyEventLog;
.super Landroid/net/ConnectivityMetricsLogger;
.source "TelephonyEventLog.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I = null

.field public static final DATA_KEY_APN:Ljava/lang/String; = "apn"

.field public static final DATA_KEY_CALLEE:Ljava/lang/String; = "callee"

.field public static final DATA_KEY_CLIR_MODE:Ljava/lang/String; = "clirMode"

.field public static final DATA_KEY_DATA_CALL_ACTIVE:Ljava/lang/String; = "active"

.field public static final DATA_KEY_DATA_CALL_ACTIVES:Ljava/lang/String; = "actives"

.field public static final DATA_KEY_DATA_CALL_CID:Ljava/lang/String; = "cid"

.field public static final DATA_KEY_DATA_CALL_CIDS:Ljava/lang/String; = "cids"

.field public static final DATA_KEY_DATA_CALL_IFNAME:Ljava/lang/String; = "ifname"

.field public static final DATA_KEY_DATA_CALL_IFNAMES:Ljava/lang/String; = "ifnames"

.field public static final DATA_KEY_DATA_CALL_RETRY:Ljava/lang/String; = "retry"

.field public static final DATA_KEY_DATA_CALL_STATUS:Ljava/lang/String; = "status"

.field public static final DATA_KEY_DATA_CALL_STATUSES:Ljava/lang/String; = "statuses"

.field public static final DATA_KEY_DATA_CALL_TYPE:Ljava/lang/String; = "type"

.field public static final DATA_KEY_DATA_CALL_TYPES:Ljava/lang/String; = "types"

.field public static final DATA_KEY_DATA_DEACTIVATE_REASON:Ljava/lang/String; = "reason"

.field public static final DATA_KEY_DATA_PROFILE:Ljava/lang/String; = "profile"

.field public static final DATA_KEY_PARAM1:Ljava/lang/String; = "param1"

.field public static final DATA_KEY_PARAM2:Ljava/lang/String; = "param2"

.field public static final DATA_KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field public static final DATA_KEY_PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final DATA_KEY_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final DATA_KEY_RAT:Ljava/lang/String; = "rat"

.field public static final DATA_KEY_REASONINFO_CODE:Ljava/lang/String; = "code"

.field public static final DATA_KEY_REASONINFO_EXTRA_CODE:Ljava/lang/String; = "extra-code"

.field public static final DATA_KEY_REASONINFO_EXTRA_MESSAGE:Ljava/lang/String; = "extra-message"

.field public static final DATA_KEY_RIL_CALL_RING_RESPONSE:Ljava/lang/String; = "response"

.field public static final DATA_KEY_RIL_ERROR:Ljava/lang/String; = "error"

.field public static final DATA_KEY_RIL_HANGUP_GSM_INDEX:Ljava/lang/String; = "gsmIndex"

.field public static final DATA_KEY_SMS_ACK_PDU:Ljava/lang/String; = "ackPDU"

.field public static final DATA_KEY_SMS_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final DATA_KEY_SMS_MESSAGE_REF:Ljava/lang/String; = "messageRef"

.field public static final DATA_KEY_SRC_TECH:Ljava/lang/String; = "src-tech"

.field public static final DATA_KEY_TARGET_TECH:Ljava/lang/String; = "target-tech"

.field public static final DATA_KEY_UTLTE:Ljava/lang/String; = "UTLTE"

.field public static final DATA_KEY_UTWIFI:Ljava/lang/String; = "UTWiFi"

.field public static final DATA_KEY_VILTE:Ljava/lang/String; = "ViLTE"

.field public static final DATA_KEY_VIWIFI:Ljava/lang/String; = "ViWiFi"

.field public static final DATA_KEY_VOLTE:Ljava/lang/String; = "VoLTE"

.field public static final DATA_KEY_VOWIFI:Ljava/lang/String; = "VoWiFi"

.field private static final DBG:Z = true

.field public static final IMS_CONNECTION_STATE_CONNECTED:I = 0x1

.field public static final IMS_CONNECTION_STATE_DISCONNECTED:I = 0x3

.field public static final IMS_CONNECTION_STATE_PROGRESSING:I = 0x2

.field public static final IMS_CONNECTION_STATE_RESUMED:I = 0x4

.field public static final IMS_CONNECTION_STATE_SUSPENDED:I = 0x5

.field public static final SERVICE_STATE_DATA_ALPHA_LONG:Ljava/lang/String; = "dataAlphaLong"

.field public static final SERVICE_STATE_DATA_ALPNA_SHORT:Ljava/lang/String; = "dataAlphaShort"

.field public static final SERVICE_STATE_DATA_NUMERIC:Ljava/lang/String; = "dataOperator"

.field public static final SERVICE_STATE_DATA_RAT:Ljava/lang/String; = "dataRat"

.field public static final SERVICE_STATE_DATA_REG_STATE:Ljava/lang/String; = "dataRegSt"

.field public static final SERVICE_STATE_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"

.field public static final SERVICE_STATE_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"

.field public static final SERVICE_STATE_VOICE_ALPHA_LONG:Ljava/lang/String; = "alphaLong"

.field public static final SERVICE_STATE_VOICE_ALPNA_SHORT:Ljava/lang/String; = "alphaShort"

.field public static final SERVICE_STATE_VOICE_NUMERIC:Ljava/lang/String; = "operator"

.field public static final SERVICE_STATE_VOICE_RAT:Ljava/lang/String; = "rat"

.field public static final SERVICE_STATE_VOICE_REG_STATE:Ljava/lang/String; = "regSt"

.field public static final SERVICE_STATE_VOICE_ROAMING_TYPE:Ljava/lang/String; = "roamingType"

.field public static final SETTING_AIRPLANE_MODE:I = 0x1

.field public static final SETTING_CELL_DATA_ENABLED:I = 0x2

.field public static final SETTING_DATA_ROAMING_ENABLED:I = 0x3

.field public static final SETTING_PREFERRED_NETWORK_MODE:I = 0x4

.field public static final SETTING_VI_LTE_ENABLED:I = 0x9

.field public static final SETTING_VI_WIFI_ENABLED:I = 0xa

.field public static final SETTING_VO_LTE_ENABLED:I = 0x6

.field public static final SETTING_VO_WIFI_ENABLED:I = 0x7

.field public static final SETTING_WFC_MODE:I = 0x8

.field public static final SETTING_WIFI_ENABLED:I = 0x5

.field private static TAG:Ljava/lang/String; = null

.field public static final TAG_DATA_CALL_LIST:I = 0x5

.field public static final TAG_IMS_CALL_ACCEPT:I = 0x7d4

.field public static final TAG_IMS_CALL_HANDOVER:I = 0x7e9

.field public static final TAG_IMS_CALL_HANDOVER_FAILED:I = 0x7ea

.field public static final TAG_IMS_CALL_HELD:I = 0x7df

.field public static final TAG_IMS_CALL_HOLD:I = 0x7d7

.field public static final TAG_IMS_CALL_HOLD_FAILED:I = 0x7e0

.field public static final TAG_IMS_CALL_HOLD_RECEIVED:I = 0x7e1

.field public static final TAG_IMS_CALL_MERGE:I = 0x7d9

.field public static final TAG_IMS_CALL_MERGED:I = 0x7e7

.field public static final TAG_IMS_CALL_MERGE_FAILED:I = 0x7e8

.field public static final TAG_IMS_CALL_PROGRESSING:I = 0x7db

.field public static final TAG_IMS_CALL_RECEIVE:I = 0x7d3

.field public static final TAG_IMS_CALL_REJECT:I = 0x7d5

.field public static final TAG_IMS_CALL_RESUME:I = 0x7d8

.field public static final TAG_IMS_CALL_RESUMED:I = 0x7e2

.field public static final TAG_IMS_CALL_RESUME_FAILED:I = 0x7e3

.field public static final TAG_IMS_CALL_RESUME_RECEIVED:I = 0x7e4

.field public static final TAG_IMS_CALL_START:I = 0x7d1

.field public static final TAG_IMS_CALL_STARTED:I = 0x7dc

.field public static final TAG_IMS_CALL_START_CONFERENCE:I = 0x7d2

.field public static final TAG_IMS_CALL_START_FAILED:I = 0x7dd

.field public static final TAG_IMS_CALL_STATE:I = 0x7ee

.field public static final TAG_IMS_CALL_TERMINATE:I = 0x7d6

.field public static final TAG_IMS_CALL_TERMINATED:I = 0x7de

.field public static final TAG_IMS_CALL_TTY_MODE_RECEIVED:I = 0x7eb

.field public static final TAG_IMS_CALL_UPDATE:I = 0x7da

.field public static final TAG_IMS_CALL_UPDATED:I = 0x7e5

.field public static final TAG_IMS_CALL_UPDATE_FAILED:I = 0x7e6

.field public static final TAG_IMS_CAPABILITIES:I = 0x4

.field public static final TAG_IMS_CONFERENCE_PARTICIPANTS_STATE_CHANGED:I = 0x7ec

.field public static final TAG_IMS_CONNECTION_STATE:I = 0x3

.field public static final TAG_IMS_MULTIPARTY_STATE_CHANGED:I = 0x7ed

.field public static final TAG_PHONE_STATE:I = 0x8

.field public static final TAG_RIL_REQUEST:I = 0x3e9

.field public static final TAG_RIL_RESPONSE:I = 0x3ea

.field public static final TAG_RIL_TIMEOUT_RESPONSE:I = 0x3ec

.field public static final TAG_RIL_UNSOL_RESPONSE:I = 0x3eb

.field public static final TAG_SERVICE_STATE:I = 0x2

.field public static final TAG_SETTINGS:I = 0x1

.field private static final VDBG:Z


# instance fields
.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoamingType:I

.field private mEmergencyOnly:Z

.field private final mImsCapabilities:[Z

.field mPhoneId:I

.field private mRilDataRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRoamingType:I


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "TelephonyEventLog"

    sput-object v0, Lcom/android/internal/telephony/TelephonyEventLog;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, -0x1

    .line 162
    invoke-direct {p0}, Landroid/net/ConnectivityMetricsLogger;-><init>()V

    .line 191
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    .line 192
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    .line 193
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    .line 194
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    .line 199
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    .line 200
    iput v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    .line 316
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mImsCapabilities:[Z

    .line 164
    iput p1, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mPhoneId:I

    .line 161
    return-void

    .line 316
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 204
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getCallId(Lcom/android/ims/internal/ImsCallSession;)I
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    const/4 v2, -0x1

    .line 610
    if-nez p1, :cond_0

    .line 611
    return v2

    .line 615
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v2
.end method

.method private imsHandoverToBundle(IILcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "src-tech"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    const-string/jumbo v1, "target-tech"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string/jumbo v1, "code"

    iget v2, p3, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    const-string/jumbo v1, "extra-code"

    iget v2, p3, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    const-string/jumbo v1, "extra-message"

    iget-object v2, p3, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-object v0
.end method

.method private imsReasonInfoToBundle(Lcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v1, 0x0

    .line 505
    if-eqz p1, :cond_0

    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "code"

    iget v2, p1, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v1, "extra-code"

    iget v2, p1, Lcom/android/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v1, "extra-message"

    iget-object v2, p1, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-object v0

    .line 512
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method private writeEvent(III)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I

    .prologue
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(JIIILandroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method private writeEvent(IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "data"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(JIIILandroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method private writeEvent(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "tag"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v6, v5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(JIIILandroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method private writeEvent(JIIILandroid/os/Bundle;)V
    .locals 7
    .param p1, "timestamp"    # J
    .param p3, "tag"    # I
    .param p4, "param1"    # I
    .param p5, "param2"    # I
    .param p6, "data"    # Landroid/os/Bundle;

    .prologue
    .line 180
    move-object v6, p6

    .line 181
    .local v6, "b":Landroid/os/Bundle;
    if-nez p6, :cond_0

    .line 182
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "b":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 184
    .restart local v6    # "b":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v0, "phoneId"

    iget v1, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mPhoneId:I

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string/jumbo v0, "param1"

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string/jumbo v0, "param2"

    invoke-virtual {v6, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const/4 v4, 0x4

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyEventLog;->logEvent(JIILandroid/os/Parcelable;)V

    .line 179
    return-void
.end method

.method private writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 497
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 496
    return-void
.end method

.method private writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 501
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->imsReasonInfoToBundle(Lcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 500
    return-void
.end method


# virtual methods
.method public writeImsCallState(Lcom/android/ims/internal/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "callState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 481
    invoke-static {}, Lcom/android/internal/telephony/TelephonyEventLog;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 491
    const/4 v0, -0x1

    .line 493
    .local v0, "state":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v1

    const/16 v2, 0x7ee

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 479
    return-void

    .line 482
    .end local v0    # "state":I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0    # "state":I
    goto :goto_0

    .line 483
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "state":I
    goto :goto_0

    .line 484
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0    # "state":I
    goto :goto_0

    .line 485
    .end local v0    # "state":I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0    # "state":I
    goto :goto_0

    .line 486
    .end local v0    # "state":I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0    # "state":I
    goto :goto_0

    .line 487
    .end local v0    # "state":I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0    # "state":I
    goto :goto_0

    .line 488
    .end local v0    # "state":I
    :pswitch_6
    const/4 v0, 0x6

    .restart local v0    # "state":I
    goto :goto_0

    .line 489
    .end local v0    # "state":I
    :pswitch_7
    const/4 v0, 0x7

    .restart local v0    # "state":I
    goto :goto_0

    .line 490
    .end local v0    # "state":I
    :pswitch_8
    const/16 v0, 0x8

    .restart local v0    # "state":I
    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeImsSetFeatureValue(IIII)V
    .locals 2
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "status"    # I

    .prologue
    const/4 v1, 0x1

    .line 296
    packed-switch p1, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 298
    :pswitch_0
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    goto :goto_0

    .line 301
    :pswitch_1
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    goto :goto_0

    .line 304
    :pswitch_2
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    goto :goto_0

    .line 307
    :pswitch_3
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0, p3}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeOnImsCallAccept(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 532
    const/16 v0, 0x7d4

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 531
    return-void
.end method

.method public writeOnImsCallHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 593
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyEventLog;->imsHandoverToBundle(IILcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 594
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v1

    const/16 v2, 0x7e9

    const/4 v3, -0x1

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 592
    return-void
.end method

.method public writeOnImsCallHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 599
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyEventLog;->imsHandoverToBundle(IILcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 600
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v1

    const/16 v2, 0x7ea

    const/4 v3, -0x1

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 598
    return-void
.end method

.method public writeOnImsCallHeld(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 568
    const/16 v0, 0x7df

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 567
    return-void
.end method

.method public writeOnImsCallHold(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 544
    const/16 v0, 0x7d7

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 543
    return-void
.end method

.method public writeOnImsCallHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 576
    const/16 v0, 0x7e0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 575
    return-void
.end method

.method public writeOnImsCallHoldReceived(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 572
    const/16 v0, 0x7e1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 571
    return-void
.end method

.method public writeOnImsCallProgressing(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 552
    const/16 v0, 0x7db

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 551
    return-void
.end method

.method public writeOnImsCallReceive(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 528
    const/16 v0, 0x7d3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 527
    return-void
.end method

.method public writeOnImsCallReject(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 536
    const/16 v0, 0x7d5

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 535
    return-void
.end method

.method public writeOnImsCallResume(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 548
    const/16 v0, 0x7d8

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 547
    return-void
.end method

.method public writeOnImsCallResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 588
    const/16 v0, 0x7e3

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 587
    return-void
.end method

.method public writeOnImsCallResumeReceived(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 584
    const/16 v0, 0x7e4

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 583
    return-void
.end method

.method public writeOnImsCallResumed(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 580
    const/16 v0, 0x7e2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 579
    return-void
.end method

.method public writeOnImsCallStart(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;

    .prologue
    .line 516
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 517
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "callee"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v1

    const/16 v2, 0x7d1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 515
    return-void
.end method

.method public writeOnImsCallStartConference(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;

    .prologue
    .line 522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "participants"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 524
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    move-result v1

    const/16 v2, 0x7d2

    const/4 v3, -0x1

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 521
    return-void
.end method

.method public writeOnImsCallStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 560
    const/16 v0, 0x7dd

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 559
    return-void
.end method

.method public writeOnImsCallStarted(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 556
    const/16 v0, 0x7dc

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 555
    return-void
.end method

.method public writeOnImsCallTerminate(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 540
    const/16 v0, 0x7d6

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;)V

    .line 539
    return-void
.end method

.method public writeOnImsCallTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 564
    const/16 v0, 0x7de

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeImsCallEvent(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 563
    return-void
.end method

.method public writeOnImsCapabilities([Z)V
    .locals 6
    .param p1, "capabilities"    # [Z

    .prologue
    const/4 v5, 0x4

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mImsCapabilities:[Z

    aget-boolean v3, v3, v2

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_0

    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mImsCapabilities:[Z

    aget-boolean v4, p1, v2

    aput-boolean v4, v3, v2

    .line 323
    const/4 v1, 0x1

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_1
    if-eqz v1, :cond_2

    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "VoLTE"

    const/4 v4, 0x0

    aget-boolean v4, p1, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    const-string/jumbo v3, "ViLTE"

    const/4 v4, 0x1

    aget-boolean v4, p1, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const-string/jumbo v3, "VoWiFi"

    const/4 v4, 0x2

    aget-boolean v4, p1, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    const-string/jumbo v3, "ViWiFi"

    const/4 v4, 0x3

    aget-boolean v4, p1, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    const-string/jumbo v3, "UTLTE"

    aget-boolean v4, p1, v5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    const-string/jumbo v3, "UTWiFi"

    const/4 v4, 0x5

    aget-boolean v4, p1, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(ILandroid/os/Bundle;)V

    .line 318
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public writeOnImsConnectionState(ILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 313
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TelephonyEventLog;->imsReasonInfoToBundle(Lcom/android/ims/ImsReasonInfo;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public writeOnRilSolicitedResponse(IIILjava/lang/Object;)V
    .locals 6
    .param p1, "rilSerial"    # I
    .param p2, "rilError"    # I
    .param p3, "rilRequest"    # I
    .param p4, "ret"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0x3ea

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    .local v0, "b":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    const-string/jumbo v3, "error"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 423
    :sswitch_0
    if-eqz p4, :cond_1

    move-object v1, p4

    .line 424
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 425
    .local v1, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    const-string/jumbo v3, "status"

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string/jumbo v3, "retry"

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string/jumbo v3, "cid"

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    const-string/jumbo v3, "active"

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    const-string/jumbo v3, "type"

    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v3, "ifname"

    iget-object v4, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .end local v1    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_1
    invoke-direct {p0, v5, p3, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 441
    :sswitch_1
    invoke-direct {p0, v5, p3, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 448
    :sswitch_2
    if-eqz p4, :cond_2

    move-object v2, p4

    .line 449
    check-cast v2, Lcom/android/internal/telephony/SmsResponse;

    .line 450
    .local v2, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    const-string/jumbo v3, "messageRef"

    iget v4, v2, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string/jumbo v3, "ackPDU"

    iget-object v4, v2, Lcom/android/internal/telephony/SmsResponse;->mAckPdu:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string/jumbo v3, "errorCode"

    iget v4, v2, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    .end local v2    # "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    :cond_2
    invoke-direct {p0, v5, p3, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1b -> :sswitch_0
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x57 -> :sswitch_2
        0x71 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeOnRilTimeoutResponse(II)V
    .locals 2
    .param p1, "rilSerial"    # I
    .param p2, "rilRequest"    # I

    .prologue
    .line 460
    const/16 v0, 0x3ec

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 459
    return-void
.end method

.method public writePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3
    .param p1, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 465
    invoke-static {}, Lcom/android/internal/telephony/TelephonyEventLog;->-getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 469
    const/4 v0, -0x1

    .line 471
    .local v0, "state":I
    :goto_0
    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 463
    return-void

    .line 466
    .end local v0    # "state":I
    :pswitch_0
    const/4 v0, 0x0

    .restart local v0    # "state":I
    goto :goto_0

    .line 467
    .end local v0    # "state":I
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0    # "state":I
    goto :goto_0

    .line 468
    .end local v0    # "state":I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0    # "state":I
    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeRilAnswer(I)V
    .locals 3
    .param p1, "rilSerial"    # I

    .prologue
    .line 402
    const/16 v0, 0x3e9

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 401
    return-void
.end method

.method public writeRilCallRing([C)V
    .locals 4
    .param p1, "response"    # [C

    .prologue
    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 391
    const/16 v1, 0x3eb

    const/16 v2, 0x3fa

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 388
    return-void
.end method

.method public writeRilDataCallList(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v9, -0x1

    .line 359
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v1, "b":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [I

    .line 361
    .local v6, "statuses":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v2, v8, [I

    .line 362
    .local v2, "cids":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [I

    .line 363
    .local v0, "actives":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 364
    .local v7, "types":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 365
    .local v5, "ifnames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 366
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 367
    .local v3, "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    aput v8, v6, v4

    .line 368
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    aput v8, v2, v4

    .line 369
    iget v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    aput v8, v0, v4

    .line 370
    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 371
    iget-object v8, v3, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    aput-object v8, v5, v4

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "dcs":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_0
    const-string/jumbo v8, "statuses"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 374
    const-string/jumbo v8, "cids"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 375
    const-string/jumbo v8, "actives"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 376
    const-string/jumbo v8, "types"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 377
    const-string/jumbo v8, "ifnames"

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 378
    const/4 v8, 0x5

    invoke-direct {p0, v8, v9, v9, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 358
    return-void
.end method

.method public writeRilDeactivateDataCall(III)V
    .locals 3
    .param p1, "rilSerial"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I

    .prologue
    .line 352
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    const/16 v1, 0x3e9

    const/16 v2, 0x29

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 351
    return-void
.end method

.method public writeRilDial(IILcom/android/internal/telephony/UUSInfo;)V
    .locals 3
    .param p1, "rilSerial"    # I
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    .prologue
    .line 383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "clirMode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    const/16 v1, 0x3e9

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 382
    return-void
.end method

.method public writeRilHangup(III)V
    .locals 2
    .param p1, "rilSerial"    # I
    .param p2, "req"    # I
    .param p3, "gsmIndex"    # I

    .prologue
    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "gsmIndex"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    const/16 v1, 0x3e9

    invoke-direct {p0, v1, p2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 395
    return-void
.end method

.method public writeRilNewSms(I)V
    .locals 3
    .param p1, "response"    # I

    .prologue
    .line 414
    const/16 v0, 0x3eb

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 413
    return-void
.end method

.method public writeRilSendSms(II)V
    .locals 2
    .param p1, "rilSerial"    # I
    .param p2, "req"    # I

    .prologue
    .line 410
    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 409
    return-void
.end method

.method public writeRilSetupDataCall(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "rilSerial"    # I
    .param p2, "radioTechnology"    # I
    .param p3, "profile"    # I
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "authType"    # I
    .param p8, "protocol"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "rat"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string/jumbo v1, "profile"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string/jumbo v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "protocol"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/16 v1, 0x3e9

    const/16 v2, 0x1b

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 341
    return-void
.end method

.method public writeRilSrvcc(I)V
    .locals 3
    .param p1, "rilSrvccState"    # I

    .prologue
    .line 406
    const/16 v0, 0x3eb

    const/16 v1, 0x40f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(IIILandroid/os/Bundle;)V

    .line 405
    return-void
.end method

.method public writeServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 210
    .local v1, "changed":Z
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    .line 212
    const-string/jumbo v2, "regSt"

    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRegState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const/4 v1, 0x1

    .line 215
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    .line 217
    const-string/jumbo v2, "dataRegSt"

    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRegState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const/4 v1, 0x1

    .line 220
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    .line 222
    const-string/jumbo v2, "roamingType"

    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceRoamingType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const/4 v1, 0x1

    .line 225
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 226
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    .line 227
    const-string/jumbo v2, "dataRoamingType"

    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataRoamingType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const/4 v1, 0x1

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyEventLog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 250
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 251
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    .line 252
    const-string/jumbo v2, "rat"

    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilVoiceRadioTechnology:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const/4 v1, 0x1

    .line 255
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 256
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    .line 257
    const-string/jumbo v2, "dataRat"

    iget v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mRilDataRadioTechnology:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const/4 v1, 0x1

    .line 260
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 261
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    .line 262
    const-string/jumbo v2, "emergencyOnly"

    iget-boolean v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mEmergencyOnly:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const/4 v1, 0x1

    .line 266
    :cond_6
    if-eqz v1, :cond_7

    .line 267
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(ILandroid/os/Bundle;)V

    .line 207
    :cond_7
    return-void

    .line 234
    :cond_8
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 236
    const-string/jumbo v2, "alphaShort"

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v2, "operator"

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 244
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorNumeric:Ljava/lang/String;

    .line 246
    const-string/jumbo v2, "dataAlphaShort"

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v2, "dataOperator"

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyEventLog;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method public writeSetAirplaneMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 272
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 271
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeSetCellDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 276
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 275
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeSetDataRoamingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 280
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 279
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeSetPreferredNetworkType(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 284
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 283
    return-void
.end method

.method public writeSetWfcMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 292
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 291
    return-void
.end method

.method public writeSetWifiEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 288
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const/4 v2, 0x5

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/TelephonyEventLog;->writeEvent(III)V

    .line 287
    return-void

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
