.class public interface abstract Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
.super Ljava/lang/Object;
.source "IWorldPhone.java"


# static fields
.field public static final ACTION_ADB_SWITCH_MODEM:Ljava/lang/String; = "android.intent.action.ACTION_ADB_SWITCH_MODEM"

.field public static final ACTION_SAP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_TEST_WORLDPHONE:Ljava/lang/String; = "android.intent.action.ACTION_TEST_WORLDPHOE"

.field public static final AUTO_SWITCH_OFF:I = -0x62

.field public static final CAMP_ON_DENY_REASON_DOMESTIC_FDD_MD:I = 0x4

.field public static final CAMP_ON_DENY_REASON_NEED_SWITCH_TO_FDD:I = 0x2

.field public static final CAMP_ON_DENY_REASON_NEED_SWITCH_TO_TDD:I = 0x3

.field public static final CAMP_ON_DENY_REASON_UNKNOWN:I = 0x1

.field public static final CAMP_ON_NOT_DENIED:I = 0x0

.field public static final CAUSE_TYPE_OOS:I = 0x1

.field public static final CAUSE_TYPE_OTHERS:I = 0xff

.field public static final CAUSE_TYPE_PLMN_CHANGE:I = 0x0

.field public static final DEFAULT_MAJOR_SIM:I = 0x0

.field public static final EVENT_INVALID_SIM_NOTIFY_1:I = 0x3c

.field public static final EVENT_INVALID_SIM_NOTIFY_2:I = 0x3d

.field public static final EVENT_INVALID_SIM_NOTIFY_SVLTE_1:I = 0x410

.field public static final EVENT_INVALID_SIM_NOTIFY_SVLTE_2:I = 0x411

.field public static final EVENT_QUERY_MODEM_TYPE:I = 0x32

.field public static final EVENT_RADIO_ON_1:I = 0x0

.field public static final EVENT_RADIO_ON_2:I = 0x1

.field public static final EVENT_RADIO_ON_SVLTE_1:I = 0x3e8

.field public static final EVENT_RADIO_ON_SVLTE_2:I = 0x3e9

.field public static final EVENT_REG_PLMN_CHANGED_1:I = 0xa

.field public static final EVENT_REG_PLMN_CHANGED_2:I = 0xb

.field public static final EVENT_REG_PLMN_CHANGED_SVLTE_1:I = 0x3f2

.field public static final EVENT_REG_PLMN_CHANGED_SVLTE_2:I = 0x3f3

.field public static final EVENT_REG_SUSPENDED_1:I = 0x1e

.field public static final EVENT_REG_SUSPENDED_2:I = 0x1f

.field public static final EVENT_REG_SUSPENDED_SVLTE_1:I = 0x406

.field public static final EVENT_REG_SUSPENDED_SVLTE_2:I = 0x407

.field public static final EVENT_RESUME_CAMPING:I = 0x46

.field public static final EVENT_STORE_MODEM_TYPE:I = 0x28

.field public static final EVENT_WP_CARD_TYPE_READY:I = 0x41a

.field public static final EVENT_WP_GMSS_RAT_CHANGED_1:I = 0x424

.field public static final EVENT_WP_GMSS_RAT_CHANGED_2:I = 0x425

.field public static final EXTRA_FAKE_REGION:Ljava/lang/String; = "EXTRA_FAKE_REGION"

.field public static final EXTRA_FAKE_USER_TYPE:Ljava/lang/String; = "FAKE_USER_TYPE"

.field public static final ICC_CARD_TYPE_SIM:I = 0x1

.field public static final ICC_CARD_TYPE_UNKNOWN:I = 0x0

.field public static final ICC_CARD_TYPE_USIM:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MAJOR_CAPABILITY_OFF:I = -0x1

.field public static final MAJOR_SIM_UNKNOWN:I = -0x63

.field public static final NO_OP:Ljava/lang/String; = "OM"

.field public static final POLICY_OM:I = 0x0

.field public static final POLICY_OP01:I = 0x1

.field public static final PROPERTY_SWITCH_MODEM_CAUSE_TYPE:Ljava/lang/String; = "ril.switch.modem.cause.type"

.field public static final RADIO_TECH_MODE_FOR_WP_CSFB:I = 0x1

.field public static final RADIO_TECH_MODE_FOR_WP_SVLTE:I = 0x2

.field public static final RADIO_TECH_MODE_FOR_WP_UNKNOWN:I = 0x0

.field public static final REGION_DOMESTIC:I = 0x1

.field public static final REGION_FOREIGN:I = 0x2

.field public static final REGION_UNKNOWN:I = 0x0

.field public static final SELECTION_MODE_AUTO:I = 0x1

.field public static final SELECTION_MODE_MANUAL:I = 0x0

.field public static final TYPE1_USER:I = 0x1

.field public static final TYPE2_USER:I = 0x2

.field public static final TYPE3_USER:I = 0x3

.field public static final UNKNOWN_USER:I


# virtual methods
.method public abstract setModemSelectionMode(II)V
.end method
