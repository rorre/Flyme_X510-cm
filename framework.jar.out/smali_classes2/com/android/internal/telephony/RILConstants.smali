.class public interface abstract Lcom/android/internal/telephony/RILConstants;
.super Ljava/lang/Object;
.source "RILConstants.java"


# static fields
.field public static final CDMA_CELL_BROADCAST_SMS_DISABLED:I = 0x1

.field public static final CDMA_CELL_BROADCAST_SMS_ENABLED:I = 0x0

.field public static final CDMA_PHONE:I = 0x2

.field public static final CDM_TTY_FULL_MODE:I = 0x1

.field public static final CDM_TTY_HCO_MODE:I = 0x2

.field public static final CDM_TTY_MODE_DISABLED:I = 0x0

.field public static final CDM_TTY_MODE_ENABLED:I = 0x1

.field public static final CDM_TTY_VCO_MODE:I = 0x3

.field public static final DATA_PROFILE_CBS:I = 0x4

.field public static final DATA_PROFILE_DEFAULT:I = 0x0

.field public static final DATA_PROFILE_FOTA:I = 0x3

.field public static final DATA_PROFILE_IMS:I = 0x2

.field public static final DATA_PROFILE_INVALID:I = -0x1

.field public static final DATA_PROFILE_OEM_BASE:I = 0x3e8

.field public static final DATA_PROFILE_TETHERED:I = 0x1

.field public static final DEACTIVATE_REASON_NONE:I = 0x0

.field public static final DEACTIVATE_REASON_PDP_RESET:I = 0x2

.field public static final DEACTIVATE_REASON_RADIO_OFF:I = 0x1

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x14

.field public static final DIAL_MODIFIED_TO_SS:I = 0x13

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x12

.field public static final FDN_CHECK_FAILURE:I = 0xe

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final GSM_PHONE:I = 0x1

.field public static final ILLEGAL_SIM_OR_ME:I = 0xf

.field public static final IMS_PHONE:I = 0x5

.field public static final INVALID_PARAMETER:I = 0x25

.field public static final LCE_ACTIVE:I = 0x1

.field public static final LCE_NOT_AVAILABLE:I = -0x1

.field public static final LCE_NOT_SUPPORTED:I = 0x24

.field public static final LCE_STOPPED:I = 0x0

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final MAX_INT:I = 0x7fffffff

.field public static final MISSING_RESOURCE:I = 0x10

.field public static final MODE_NOT_SUPPORTED:I = 0xd

.field public static final NETWORK_MODE_CDMA:I = 0x4

.field public static final NETWORK_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NETWORK_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NETWORK_MODE_GLOBAL:I = 0x7

.field public static final NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final NETWORK_MODE_LTE_CDMA_EVDO:I = 0x8

.field public static final NETWORK_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NETWORK_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NETWORK_MODE_LTE_ONLY:I = 0xb

.field public static final NETWORK_MODE_LTE_TDSCDMA:I = 0xf

.field public static final NETWORK_MODE_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x16

.field public static final NETWORK_MODE_LTE_TDSCDMA_GSM:I = 0x11

.field public static final NETWORK_MODE_LTE_TDSCDMA_GSM_WCDMA:I = 0x14

.field public static final NETWORK_MODE_LTE_TDSCDMA_WCDMA:I = 0x13

.field public static final NETWORK_MODE_LTE_WCDMA:I = 0xc

.field public static final NETWORK_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15

.field public static final NETWORK_MODE_TDSCDMA_GSM:I = 0x10

.field public static final NETWORK_MODE_TDSCDMA_GSM_WCDMA:I = 0x12

.field public static final NETWORK_MODE_TDSCDMA_ONLY:I = 0xd

.field public static final NETWORK_MODE_TDSCDMA_WCDMA:I = 0xe

.field public static final NETWORK_MODE_WCDMA_ONLY:I = 0x2

.field public static final NETWORK_MODE_WCDMA_PREF:I = 0x0

.field public static final NO_PHONE:I = 0x0

.field public static final NO_SUCH_ELEMENT:I = 0x11

.field public static final NV_CONFIG_ERASE_RESET:I = 0x2

.field public static final NV_CONFIG_FACTORY_RESET:I = 0x3

.field public static final NV_CONFIG_RELOAD_RESET:I = 0x1

.field public static final OP_NOT_ALLOWED_BEFORE_REG_NW:I = 0x9

.field public static final OP_NOT_ALLOWED_DURING_VOICE_CALL:I = 0x8

.field public static final PASSWORD_INCORRECT:I = 0x3

.field public static final PREFERRED_NETWORK_MODE:I

.field public static final RADIO_NOT_AVAILABLE:I = 0x1

.field public static final REQUEST_CANCELLED:I = 0x7

.field public static final REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final RIL_ERRNO_INVALID_RESPONSE:I = -0x1

.field public static final RIL_REQUEST_ABORT_FEMTOCELL_LIST:I = 0x81d

.field public static final RIL_REQUEST_ABORT_QUERY_AVAILABLE_NETWORKS:I = 0x821

.field public static final RIL_REQUEST_ACKNOWLEDGE_INCOMING_GSM_SMS_WITH_PDU:I = 0x6a

.field public static final RIL_REQUEST_ADD_IMS_CONFERENCE_CALL_MEMBER:I = 0x83a

.field public static final RIL_REQUEST_AGPS_GET_MPC_IPPORT:I = 0xfac

.field public static final RIL_REQUEST_AGPS_SET_MPC_IPPORT:I = 0xfab

.field public static final RIL_REQUEST_AGPS_TCP_CONNIND:I = 0xfaa

.field public static final RIL_REQUEST_ALLOW_DATA:I = 0x7b

.field public static final RIL_REQUEST_ANSWER:I = 0x28

.field public static final RIL_REQUEST_AT_COMMAND_WITH_PROXY:I = 0x852

.field public static final RIL_REQUEST_BASEBAND_VERSION:I = 0x33

.field public static final RIL_REQUEST_BTSIM_CONNECT:I = 0x7e5

.field public static final RIL_REQUEST_BTSIM_DISCONNECT_OR_POWEROFF:I = 0x7e6

.field public static final RIL_REQUEST_BTSIM_POWERON_OR_RESETSIM:I = 0x7e7

.field public static final RIL_REQUEST_BTSIM_TRANSFERAPDU:I = 0x7e8

.field public static final RIL_REQUEST_C2K_BASE:I = 0xfa0

.field public static final RIL_REQUEST_CAF_SIM_OPEN_CHANNEL_WITH_P2:I = 0x89

.field public static final RIL_REQUEST_CANCEL_USSD:I = 0x1e

.field public static final RIL_REQUEST_CDMA_BROADCAST_ACTIVATION:I = 0x5e

.field public static final RIL_REQUEST_CDMA_BURST_DTMF:I = 0x55

.field public static final RIL_REQUEST_CDMA_DELETE_SMS_ON_RUIM:I = 0x61

.field public static final RIL_REQUEST_CDMA_FLASH:I = 0x54

.field public static final RIL_REQUEST_CDMA_GET_BROADCAST_CONFIG:I = 0x5c

.field public static final RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE:I = 0x68

.field public static final RIL_REQUEST_CDMA_QUERY_PREFERRED_VOICE_PRIVACY_MODE:I = 0x53

.field public static final RIL_REQUEST_CDMA_QUERY_ROAMING_PREFERENCE:I = 0x4f

.field public static final RIL_REQUEST_CDMA_SEND_SMS:I = 0x57

.field public static final RIL_REQUEST_CDMA_SET_BROADCAST_CONFIG:I = 0x5d

.field public static final RIL_REQUEST_CDMA_SET_PREFERRED_VOICE_PRIVACY_MODE:I = 0x52

.field public static final RIL_REQUEST_CDMA_SET_ROAMING_PREFERENCE:I = 0x4e

.field public static final RIL_REQUEST_CDMA_SET_SUBSCRIPTION_SOURCE:I = 0x4d

.field public static final RIL_REQUEST_CDMA_SMS_ACKNOWLEDGE:I = 0x58

.field public static final RIL_REQUEST_CDMA_SUBSCRIPTION:I = 0x5f

.field public static final RIL_REQUEST_CDMA_VALIDATE_AND_WRITE_AKEY:I = 0x56

.field public static final RIL_REQUEST_CDMA_WRITE_SMS_TO_RUIM:I = 0x60

.field public static final RIL_REQUEST_CHANGE_BARRING_PASSWORD:I = 0x2c

.field public static final RIL_REQUEST_CHANGE_SIM_PIN:I = 0x6

.field public static final RIL_REQUEST_CHANGE_SIM_PIN2:I = 0x7

.field public static final RIL_REQUEST_CONFERENCE:I = 0x10

.field public static final RIL_REQUEST_CONFERENCE_DIAL:I = 0x84a

.field public static final RIL_REQUEST_CONFIG_EVDO_MODE:I = 0xfb6

.field public static final RIL_REQUEST_CONFIG_IRAT_MODE:I = 0xfb5

.field public static final RIL_REQUEST_CONFIG_MODEM_STATUS:I = 0x845

.field public static final RIL_REQUEST_CONFIRM_INTER_3GPP_IRAT_CHANGE:I = 0x847

.field public static final RIL_REQUEST_DATA_CALL_LIST:I = 0x39

.field public static final RIL_REQUEST_DATA_REGISTRATION_STATE:I = 0x15

.field public static final RIL_REQUEST_DEACTIVATE_DATA_CALL:I = 0x29

.field public static final RIL_REQUEST_DEACTIVATE_LINK_DOWN_PDN:I = 0x851

.field public static final RIL_REQUEST_DELETE_SMS_ON_SIM:I = 0x40

.field public static final RIL_REQUEST_DELETE_UPB_ENTRY:I = 0x7f5

.field public static final RIL_REQUEST_DETACH_PS:I = 0x80e

.field public static final RIL_REQUEST_DETECT_SIM_MISSING:I = 0x7fc

.field public static final RIL_REQUEST_DEVICE_IDENTITY:I = 0x62

.field public static final RIL_REQUEST_DIAL:I = 0xa

.field public static final RIL_REQUEST_DIAL_UP_CSD:I = 0x822

.field public static final RIL_REQUEST_DIAL_WITH_SIP_URI:I = 0x83c

.field public static final RIL_REQUEST_DTMF:I = 0x18

.field public static final RIL_REQUEST_DTMF_START:I = 0x31

.field public static final RIL_REQUEST_DTMF_STOP:I = 0x32

.field public static final RIL_REQUEST_DUAL_SIM_MODE_SWITCH:I = 0x7db

.field public static final RIL_REQUEST_EDIT_UPB_ENTRY:I = 0x7f4

.field public static final RIL_REQUEST_EMERGENCY_DIAL:I = 0x827

.field public static final RIL_REQUEST_ENABLE_MD3_SLEEP:I = 0x854

.field public static final RIL_REQUEST_ENTER_NETWORK_DEPERSONALIZATION:I = 0x8

.field public static final RIL_REQUEST_ENTER_SIM_PIN:I = 0x2

.field public static final RIL_REQUEST_ENTER_SIM_PIN2:I = 0x4

.field public static final RIL_REQUEST_ENTER_SIM_PUK:I = 0x3

.field public static final RIL_REQUEST_ENTER_SIM_PUK2:I = 0x5

.field public static final RIL_REQUEST_EVDO_SUPPORT_BASE:I = 0x834

.field public static final RIL_REQUEST_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x63

.field public static final RIL_REQUEST_EXPLICIT_CALL_TRANSFER:I = 0x48

.field public static final RIL_REQUEST_FORCE_RELEASE_CALL:I = 0x825

.field public static final RIL_REQUEST_GENERAL_SIM_AUTH:I = 0x82a

.field public static final RIL_REQUEST_GET_ACM:I = 0x7d4

.field public static final RIL_REQUEST_GET_ACMMAX:I = 0x7d5

.field public static final RIL_REQUEST_GET_ACTIVITY_INFO:I = 0x87

.field public static final RIL_REQUEST_GET_CALIBRATION_DATA:I = 0x7fd

.field public static final RIL_REQUEST_GET_CB_CONFIG_INFO:I = 0x80a

.field public static final RIL_REQUEST_GET_CCM:I = 0x7d3

.field public static final RIL_REQUEST_GET_CELL_INFO_LIST:I = 0x6d

.field public static final RIL_REQUEST_GET_CLIR:I = 0x1f

.field public static final RIL_REQUEST_GET_COLP:I = 0x7d0

.field public static final RIL_REQUEST_GET_COLR:I = 0x7d2

.field public static final RIL_REQUEST_GET_CURRENT_CALLS:I = 0x9

.field public static final RIL_REQUEST_GET_DC_RT_INFO:I = 0x7e

.field public static final RIL_REQUEST_GET_FEMTOCELL_LIST:I = 0x81c

.field public static final RIL_REQUEST_GET_HARDWARE_CONFIG:I = 0x7c

.field public static final RIL_REQUEST_GET_ICC_APPLICATION_STATUS:I = 0x82c

.field public static final RIL_REQUEST_GET_IMEI:I = 0x26

.field public static final RIL_REQUEST_GET_IMEISV:I = 0x27

.field public static final RIL_REQUEST_GET_IMSI:I = 0xb

.field public static final RIL_REQUEST_GET_LOCAL_INFO:I = 0xfa6

.field public static final RIL_REQUEST_GET_MUTE:I = 0x36

.field public static final RIL_REQUEST_GET_NEIGHBORING_CELL_IDS:I = 0x4b

.field public static final RIL_REQUEST_GET_NITZ_TIME:I = 0xfa0

.field public static final RIL_REQUEST_GET_OPLMN_VERSION:I = 0x820

.field public static final RIL_REQUEST_GET_PHB_MEM_STORAGE:I = 0x7ff

.field public static final RIL_REQUEST_GET_PHB_STRING_LENGTH:I = 0x7fe

.field public static final RIL_REQUEST_GET_PHONE_CAPABILITY:I = 0x7ee

.field public static final RIL_REQUEST_GET_POL_CAPABILITY:I = 0x7f0

.field public static final RIL_REQUEST_GET_POL_LIST:I = 0x7f1

.field public static final RIL_REQUEST_GET_PPU_AND_CURRENCY:I = 0x7d6

.field public static final RIL_REQUEST_GET_PREFERRED_NETWORK_TYPE:I = 0x4a

.field public static final RIL_REQUEST_GET_RADIO_CAPABILITY:I = 0x82

.field public static final RIL_REQUEST_GET_SIM_RECOVERY_ON:I = 0x7fa

.field public static final RIL_REQUEST_GET_SIM_STATUS:I = 0x1

.field public static final RIL_REQUEST_GET_SMSC_ADDRESS:I = 0x64

.field public static final RIL_REQUEST_GET_SMS_PARAMS:I = 0x803

.field public static final RIL_REQUEST_GET_SMS_SIM_MEM_STATUS:I = 0x7ed

.field public static final RIL_REQUEST_GSM_BROADCAST_ACTIVATION:I = 0x5b

.field public static final RIL_REQUEST_GSM_GET_BROADCAST_CONFIG:I = 0x59

.field public static final RIL_REQUEST_GSM_SET_BROADCAST_CONFIG:I = 0x5a

.field public static final RIL_REQUEST_HANGUP:I = 0xc

.field public static final RIL_REQUEST_HANGUP_ALL:I = 0x824

.field public static final RIL_REQUEST_HANGUP_FOREGROUND_RESUME_BACKGROUND:I = 0xe

.field public static final RIL_REQUEST_HANGUP_WAITING_OR_BACKGROUND:I = 0xd

.field public static final RIL_REQUEST_HOLD_CALL:I = 0x84e

.field public static final RIL_REQUEST_IMS_REGISTRATION_STATE:I = 0x70

.field public static final RIL_REQUEST_IMS_SEND_SMS:I = 0x71

.field public static final RIL_REQUEST_ISIM_AUTHENTICATION:I = 0x69

.field public static final RIL_REQUEST_LAST_CALL_FAIL_CAUSE:I = 0x12

.field public static final RIL_REQUEST_LAST_DATA_CALL_FAIL_CAUSE:I = 0x38

.field public static final RIL_REQUEST_MAL_PS_RGEGISTRATION_STATE:I = 0x85a

.field public static final RIL_REQUEST_MOBILEREVISION_AND_IMEI:I = 0x7e1

.field public static final RIL_REQUEST_MODEM_POWEROFF:I = 0x7da

.field public static final RIL_REQUEST_MODEM_POWERON:I = 0x7ec

.field public static final RIL_REQUEST_NV_READ_ITEM:I = 0x76

.field public static final RIL_REQUEST_NV_RESET_CONFIG:I = 0x79

.field public static final RIL_REQUEST_NV_WRITE_CDMA_PRL:I = 0x78

.field public static final RIL_REQUEST_NV_WRITE_ITEM:I = 0x77

.field public static final RIL_REQUEST_OEM_HOOK_RAW:I = 0x3b

.field public static final RIL_REQUEST_OEM_HOOK_STRINGS:I = 0x3c

.field public static final RIL_REQUEST_OPEN_ICC_APPLICATION:I = 0x82b

.field public static final RIL_REQUEST_OPERATOR:I = 0x16

.field public static final RIL_REQUEST_PULL_LCEDATA:I = 0x86

.field public static final RIL_REQUEST_QUERY_AVAILABLE_BAND_MODE:I = 0x42

.field public static final RIL_REQUEST_QUERY_AVAILABLE_NETWORKS:I = 0x30

.field public static final RIL_REQUEST_QUERY_AVAILABLE_NETWORKS_WITH_ACT:I = 0x82f

.field public static final RIL_REQUEST_QUERY_AVOID_SYS:I = 0xfa4

.field public static final RIL_REQUEST_QUERY_CALL_FORWARD_STATUS:I = 0x21

.field public static final RIL_REQUEST_QUERY_CALL_WAITING:I = 0x23

.field public static final RIL_REQUEST_QUERY_CDMA_NETWORK_INFO:I = 0xfa5

.field public static final RIL_REQUEST_QUERY_CLIP:I = 0x37

.field public static final RIL_REQUEST_QUERY_FACILITY_LOCK:I = 0x2a

.field public static final RIL_REQUEST_QUERY_ICCID:I = 0x7ea

.field public static final RIL_REQUEST_QUERY_MODEM_TYPE:I = 0x813

.field public static final RIL_REQUEST_QUERY_NETWORK_REGISTRATION:I = 0xfa9

.field public static final RIL_REQUEST_QUERY_NETWORK_SELECTION_MODE:I = 0x2d

.field public static final RIL_REQUEST_QUERY_PHB_STORAGE_INFO:I = 0x7dc

.field public static final RIL_REQUEST_QUERY_SIM_NETWORK_LOCK:I = 0x7e2

.field public static final RIL_REQUEST_QUERY_SMS_AND_PHONEBOOK_STATUS:I = 0xfa8

.field public static final RIL_REQUEST_QUERY_STK_MENU_FROM_MD:I = 0xfb8

.field public static final RIL_REQUEST_QUERY_TTY_MODE:I = 0x51

.field public static final RIL_REQUEST_QUERY_UIM_INSERTED:I = 0xfa1

.field public static final RIL_REQUEST_QUERY_UPB_CAPABILITY:I = 0x7f3

.field public static final RIL_REQUEST_QUERY_UTK_MENU_FROM_MD:I = 0xfb7

.field public static final RIL_REQUEST_RADIO_POWER:I = 0x17

.field public static final RIL_REQUEST_RADIO_POWER_CARD_SWITCH:I = 0x834

.field public static final RIL_REQUEST_READ_PHB_ENTRY:I = 0x7de

.field public static final RIL_REQUEST_READ_PHB_ENTRY_EXT:I = 0x801

.field public static final RIL_REQUEST_READ_UPB_GAS_LIST:I = 0x7f6

.field public static final RIL_REQUEST_READ_UPB_GRP:I = 0x7f7

.field public static final RIL_REQUEST_RELOAD_MODEM_TYPE:I = 0x84d

.field public static final RIL_REQUEST_REMOVE_CB_MESSAGE:I = 0x838

.field public static final RIL_REQUEST_REMOVE_IMS_CONFERENCE_CALL_MEMBER:I = 0x83b

.field public static final RIL_REQUEST_REPLACE_VT_CALL:I = 0x844

.field public static final RIL_REQUEST_REPORT_SMS_MEMORY_STATUS:I = 0x66

.field public static final RIL_REQUEST_REPORT_STK_SERVICE_IS_RUNNING:I = 0x67

.field public static final RIL_REQUEST_RESET_ACM:I = 0x7d8

.field public static final RIL_REQUEST_RESET_RADIO:I = 0x3a

.field public static final RIL_REQUEST_RESUME_CALL:I = 0x83d

.field public static final RIL_REQUEST_RESUME_REGISTRATION:I = 0x811

.field public static final RIL_REQUEST_RESUME_REGISTRATION_CDMA:I = 0xfae

.field public static final RIL_REQUEST_SCREEN_STATE:I = 0x3d

.field public static final RIL_REQUEST_SELECT_FEMTOCELL:I = 0x81e

.field public static final RIL_REQUEST_SEND_CNAP:I = 0x830

.field public static final RIL_REQUEST_SEND_OPLMN:I = 0x81f

.field public static final RIL_REQUEST_SEND_SMS:I = 0x19

.field public static final RIL_REQUEST_SEND_SMS_EXPECT_MORE:I = 0x1a

.field public static final RIL_REQUEST_SEND_USSD:I = 0x1d

.field public static final RIL_REQUEST_SEPARATE_CONNECTION:I = 0x34

.field public static final RIL_REQUEST_SETUP_DATA_CALL:I = 0x1b

.field public static final RIL_REQUEST_SET_ACMMAX:I = 0x7d7

.field public static final RIL_REQUEST_SET_ACTIVE_PS_SLOT:I = 0x846

.field public static final RIL_REQUEST_SET_ALL_CB_LANGUAGE_ON:I = 0x80b

.field public static final RIL_REQUEST_SET_ARSI_THRESHOLD:I = 0xfb3

.field public static final RIL_REQUEST_SET_AVOID_SYS:I = 0xfa3

.field public static final RIL_REQUEST_SET_BAND_MODE:I = 0x41

.field public static final RIL_REQUEST_SET_CALL_FORWARD:I = 0x22

.field public static final RIL_REQUEST_SET_CALL_INDICATION:I = 0x826

.field public static final RIL_REQUEST_SET_CALL_WAITING:I = 0x24

.field public static final RIL_REQUEST_SET_CB_CHANNEL_CONFIG_INFO:I = 0x808

.field public static final RIL_REQUEST_SET_CB_LANGUAGE_CONFIG_INFO:I = 0x809

.field public static final RIL_REQUEST_SET_CLIP:I = 0x831

.field public static final RIL_REQUEST_SET_CLIR:I = 0x20

.field public static final RIL_REQUEST_SET_COLP:I = 0x7d1

.field public static final RIL_REQUEST_SET_DATA_CENTRIC:I = 0x839

.field public static final RIL_REQUEST_SET_DATA_ON_TO_MD:I = 0x83f

.field public static final RIL_REQUEST_SET_DATA_PROFILE:I = 0x80

.field public static final RIL_REQUEST_SET_DC_RT_INFO_RATE:I = 0x7f

.field public static final RIL_REQUEST_SET_ECC_LIST:I = 0x829

.field public static final RIL_REQUEST_SET_ECC_SERVICE_CATEGORY:I = 0x828

.field public static final RIL_REQUEST_SET_ETS_DEV:I = 0xfb0

.field public static final RIL_REQUEST_SET_ETWS:I = 0x80c

.field public static final RIL_REQUEST_SET_FACILITY_LOCK:I = 0x2b

.field public static final RIL_REQUEST_SET_FD_MODE:I = 0x80d

.field public static final RIL_REQUEST_SET_GPRS_CONNECT_TYPE:I = 0x7df

.field public static final RIL_REQUEST_SET_GPRS_TRANSFER_TYPE:I = 0x7e0

.field public static final RIL_REQUEST_SET_IMS_CALL_STATUS:I = 0x841

.field public static final RIL_REQUEST_SET_IMS_ENABLE:I = 0x82e

.field public static final RIL_REQUEST_SET_IMS_VIDEO_ENABLE:I = 0x85e

.field public static final RIL_REQUEST_SET_IMS_VOICE_ENABLE:I = 0x85d

.field public static final RIL_REQUEST_SET_INITIAL_ATTACH_APN:I = 0x6f

.field public static final RIL_REQUEST_SET_LOCATION_UPDATES:I = 0x4c

.field public static final RIL_REQUEST_SET_LTE_ACCESS_STRATUM_REPORT:I = 0x856

.field public static final RIL_REQUEST_SET_LTE_EARFCN_ENABLED:I = 0xfb4

.field public static final RIL_REQUEST_SET_LTE_UPLINK_DATA_TRANSFER:I = 0x857

.field public static final RIL_REQUEST_SET_MAX_TRANSMIT_POWER:I = 0x8b

.field public static final RIL_REQUEST_SET_MEID:I = 0xfad

.field public static final RIL_REQUEST_SET_MUTE:I = 0x35

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_AUTOMATIC:I = 0x2e

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL:I = 0x2f

.field public static final RIL_REQUEST_SET_NETWORK_SELECTION_MANUAL_WITH_ACT:I = 0x7e9

.field public static final RIL_REQUEST_SET_PHB_MEM_STORAGE:I = 0x800

.field public static final RIL_REQUEST_SET_PHONE_CAPABILITY:I = 0x7ef

.field public static final RIL_REQUEST_SET_POL_ENTRY:I = 0x7f2

.field public static final RIL_REQUEST_SET_PPU_AND_CURRENCY:I = 0x7d9

.field public static final RIL_REQUEST_SET_PREFERRED_NETWORK_TYPE:I = 0x49

.field public static final RIL_REQUEST_SET_RADIO_CAPABILITY:I = 0x83

.field public static final RIL_REQUEST_SET_REG_SUSPEND_ENABLED:I = 0x810

.field public static final RIL_REQUEST_SET_REG_SUSPEND_ENABLED_CDMA:I = 0xfaf

.field public static final RIL_REQUEST_SET_REMOVE_RESTRICT_EUTRAN_MODE:I = 0x840

.field public static final RIL_REQUEST_SET_SCRI:I = 0x7e4

.field public static final RIL_REQUEST_SET_SIM_NETWORK_LOCK:I = 0x7e3

.field public static final RIL_REQUEST_SET_SIM_RECOVERY_ON:I = 0x7f9

.field public static final RIL_REQUEST_SET_SMSC_ADDRESS:I = 0x65

.field public static final RIL_REQUEST_SET_SMS_PARAMS:I = 0x804

.field public static final RIL_REQUEST_SET_SPEECH_CODEC_INFO:I = 0x83e

.field public static final RIL_REQUEST_SET_SRVCC_CALL_CONTEXT_TRANSFER:I = 0x84b

.field public static final RIL_REQUEST_SET_STK_UTK_MODE:I = 0x84f

.field public static final RIL_REQUEST_SET_SUPP_SVC_NOTIFICATION:I = 0x3e

.field public static final RIL_REQUEST_SET_SVLTE_RAT_MODE:I = 0x848

.field public static final RIL_REQUEST_SET_TELEPHONY_MODE:I = 0x823

.field public static final RIL_REQUEST_SET_TRM:I = 0x7fb

.field public static final RIL_REQUEST_SET_TTY_MODE:I = 0x50

.field public static final RIL_REQUEST_SET_UICC_SUBSCRIPTION:I = 0x7a

.field public static final RIL_REQUEST_SET_UNSOL_CELL_INFO_LIST_RATE:I = 0x6e

.field public static final RIL_REQUEST_SET_VIA_TRM:I = 0xfb2

.field public static final RIL_REQUEST_SET_VOLTE_ENABLE:I = 0x85b

.field public static final RIL_REQUEST_SET_WFC_ENABLE:I = 0x85c

.field public static final RIL_REQUEST_SHUTDOWN:I = 0x81

.field public static final RIL_REQUEST_SIGNAL_STRENGTH:I = 0x13

.field public static final RIL_REQUEST_SIM_AUTHENTICATION:I = 0x7d

.field public static final RIL_REQUEST_SIM_CLOSE_CHANNEL:I = 0x74

.field public static final RIL_REQUEST_SIM_GET_ATR:I = 0x807

.field public static final RIL_REQUEST_SIM_INTERFACE_SWITCH:I = 0x814

.field public static final RIL_REQUEST_SIM_IO:I = 0x1c

.field public static final RIL_REQUEST_SIM_IO_EX:I = 0x82d

.field public static final RIL_REQUEST_SIM_OPEN_CHANNEL:I = 0x73

.field public static final RIL_REQUEST_SIM_OPEN_CHANNEL_WITH_SW:I = 0x80f

.field public static final RIL_REQUEST_SIM_TRANSMIT_APDU_BASIC:I = 0x72

.field public static final RIL_REQUEST_SIM_TRANSMIT_APDU_CHANNEL:I = 0x75

.field public static final RIL_REQUEST_SIM_TRANSMIT_BASIC:I = 0x805

.field public static final RIL_REQUEST_SIM_TRANSMIT_CHANNEL:I = 0x806

.field public static final RIL_REQUEST_SMS_ACKNOWLEDGE:I = 0x25

.field public static final RIL_REQUEST_START_LCE:I = 0x84

.field public static final RIL_REQUEST_STK_EVDL_CALL_BY_AP:I = 0x81b

.field public static final RIL_REQUEST_STK_GET_PROFILE:I = 0x43

.field public static final RIL_REQUEST_STK_HANDLE_CALL_SETUP_REQUESTED_FROM_SIM:I = 0x47

.field public static final RIL_REQUEST_STK_SEND_ENVELOPE_COMMAND:I = 0x45

.field public static final RIL_REQUEST_STK_SEND_ENVELOPE_WITH_STATUS:I = 0x6b

.field public static final RIL_REQUEST_STK_SEND_TERMINAL_RESPONSE:I = 0x46

.field public static final RIL_REQUEST_STK_SET_PROFILE:I = 0x44

.field public static final RIL_REQUEST_STOP_LCE:I = 0x85

.field public static final RIL_REQUEST_STORE_MODEM_TYPE:I = 0x812

.field public static final RIL_REQUEST_SWITCH_ANTENNA:I = 0x850

.field public static final RIL_REQUEST_SWITCH_CARD_TYPE:I = 0x853

.field public static final RIL_REQUEST_SWITCH_HPF:I = 0xfa2

.field public static final RIL_REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE:I = 0xf

.field public static final RIL_REQUEST_TRIGGER_LTE_BG_SEARCH:I = 0x849

.field public static final RIL_REQUEST_UDUB:I = 0x11

.field public static final RIL_REQUEST_UICC_AKA_AUTHENTICATE:I = 0x818

.field public static final RIL_REQUEST_UICC_APPLICATION_IO:I = 0x817

.field public static final RIL_REQUEST_UICC_DEACTIVATE_APPLICATION:I = 0x816

.field public static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_BOOTSTRAP:I = 0x819

.field public static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_NAF:I = 0x81a

.field public static final RIL_REQUEST_UICC_SELECT_APPLICATION:I = 0x815

.field public static final RIL_REQUEST_UPDATE_IMS_REGISTRATION_STATUS:I = 0x84c

.field public static final RIL_REQUEST_USIM_AUTHENTICATION:I = 0x7eb

.field public static final RIL_REQUEST_UTK_REFRESH:I = 0xfa7

.field public static final RIL_REQUEST_VENDOR_BASE:I = 0x7d0

.field public static final RIL_REQUEST_VIDEO_CALL_ACCEPT:I = 0x855

.field public static final RIL_REQUEST_VOICE_ACCEPT:I = 0x843

.field public static final RIL_REQUEST_VOICE_RADIO_TECH:I = 0x6c

.field public static final RIL_REQUEST_VOICE_REGISTRATION_STATE:I = 0x14

.field public static final RIL_REQUEST_VT_DIAL:I = 0x842

.field public static final RIL_REQUEST_VT_DIAL_WITH_SIP_URI:I = 0x85f

.field public static final RIL_REQUEST_WIFI_DISCONNECT_IND:I = 0x859

.field public static final RIL_REQUEST_WRITE_MDN:I = 0xfb1

.field public static final RIL_REQUEST_WRITE_PHB_ENTRY:I = 0x7dd

.field public static final RIL_REQUEST_WRITE_PHB_ENTRY_EXT:I = 0x802

.field public static final RIL_REQUEST_WRITE_SMS_TO_SIM:I = 0x3f

.field public static final RIL_REQUEST_WRITE_UPB_GRP:I = 0x7f8

.field public static final RIL_RESTRICTED_STATE_CS_ALL:I = 0x4

.field public static final RIL_RESTRICTED_STATE_CS_EMERGENCY:I = 0x1

.field public static final RIL_RESTRICTED_STATE_CS_NORMAL:I = 0x2

.field public static final RIL_RESTRICTED_STATE_NONE:I = 0x0

.field public static final RIL_RESTRICTED_STATE_PS_ALL:I = 0x10

.field public static final RIL_UNSOL_ABNORMAL_EVENT:I = 0xbf2

.field public static final RIL_UNSOL_APPLICATION_SESSION_ID_CHANGED:I = 0xbd5

.field public static final RIL_UNSOL_ATCI_RESPONSE:I = 0xbc2

.field public static final RIL_UNSOL_C2K_BASE:I = 0x1388

.field public static final RIL_UNSOL_CALLMOD_CHANGE_INDICATOR:I = 0xc05

.field public static final RIL_UNSOL_CALL_FORWARDING:I = 0xbe0

.field public static final RIL_UNSOL_CALL_INFO_INDICATION:I = 0xbe9

.field public static final RIL_UNSOL_CALL_RING:I = 0x3fa

.field public static final RIL_UNSOL_CDMA_CALL_ACCEPTED:I = 0x1388

.field public static final RIL_UNSOL_CDMA_CALL_WAITING:I = 0x401

.field public static final RIL_UNSOL_CDMA_CARD_TYPE:I = 0xbf7

.field public static final RIL_UNSOL_CDMA_IMSI_READY:I = 0x1393

.field public static final RIL_UNSOL_CDMA_INFO_REC:I = 0x403

.field public static final RIL_UNSOL_CDMA_OTA_PROVISION_STATUS:I = 0x402

.field public static final RIL_UNSOL_CDMA_PLMN_CHANGED:I = 0x138e

.field public static final RIL_UNSOL_CDMA_RUIM_SMS_STORAGE_FULL:I = 0x3fe

.field public static final RIL_UNSOL_CDMA_SIGNAL_FADE:I = 0x1394

.field public static final RIL_UNSOL_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x407

.field public static final RIL_UNSOL_CDMA_TONE_SIGNALS:I = 0x1395

.field public static final RIL_UNSOL_CELL_INFO_LIST:I = 0x40c

.field public static final RIL_UNSOL_CIPHER_INDICATION:I = 0xbe3

.field public static final RIL_UNSOL_CNAP:I = 0xbe4

.field public static final RIL_UNSOL_CRSS_NOTIFICATION:I = 0xbe1

.field public static final RIL_UNSOL_DATA_ALLOWED:I = 0xbe6

.field public static final RIL_UNSOL_DATA_CALL_LIST_CHANGED:I = 0x3f2

.field public static final RIL_UNSOL_DATA_PACKETS_FLUSH:I = 0xbd2

.field public static final RIL_UNSOL_DC_RT_INFO_CHANGED:I = 0x411

.field public static final RIL_UNSOL_ECONF_RESULT_INDICATION:I = 0xbde

.field public static final RIL_UNSOL_ECONF_SRVCC_INDICATION:I = 0xbd6

.field public static final RIL_UNSOL_EF_CSP_PLMN_MODE_BIT:I = 0xbc9

.field public static final RIL_UNSOL_EMERGENCY_BEARER_SUPPORT_NOTIFY:I = 0xbf3

.field public static final RIL_UNSOL_ENG_MODE_NETWORK_INFO:I = 0x1390

.field public static final RIL_UNSOL_ENTER_EMERGENCY_CALLBACK_MODE:I = 0x400

.field public static final RIL_UNSOL_EUSIM_READY:I = 0xbfb

.field public static final RIL_UNSOL_EXIT_EMERGENCY_CALLBACK_MODE:I = 0x409

.field public static final RIL_UNSOL_FEMTOCELL_INFO:I = 0xbd3

.field public static final RIL_UNSOL_GMSS_RAT_CHANGED:I = 0xbf6

.field public static final RIL_UNSOL_GPRS_DETACH:I = 0xbc1

.field public static final RIL_UNSOL_HARDWARE_CONFIG_CHANGED:I = 0x410

.field public static final RIL_UNSOL_IMEI_LOCK:I = 0xbca

.field public static final RIL_UNSOL_IMSI_REFRESH_DONE:I = 0xbfa

.field public static final RIL_UNSOL_IMS_DISABLE_DONE:I = 0xbd8

.field public static final RIL_UNSOL_IMS_DISABLE_START:I = 0xbf9

.field public static final RIL_UNSOL_IMS_ENABLE_DONE:I = 0xbd7

.field public static final RIL_UNSOL_IMS_ENABLE_START:I = 0xbf8

.field public static final RIL_UNSOL_IMS_REGISTRATION_INFO:I = 0xbd9

.field public static final RIL_UNSOL_INCOMING_CALL_INDICATION:I = 0xbe2

.field public static final RIL_UNSOL_INTER_3GPP_IRAT_STATE_CHANGE:I = 0xbf4

.field public static final RIL_UNSOL_INVALID_SIM:I = 0xbc6

.field public static final RIL_UNSOL_LCEDATA_RECV:I = 0x415

.field public static final RIL_UNSOL_LTE_ACCESS_STRATUM_STATE_CHANGE:I = 0xc07

.field public static final RIL_UNSOL_LTE_BG_SEARCH_STATUS:I = 0xbf5

.field public static final RIL_UNSOL_LTE_EARFCN_INFO:I = 0x1392

.field public static final RIL_UNSOL_MAIN_SIM_INFO:I = 0xc03

.field public static final RIL_UNSOL_MAL_AT_INFO:I = 0xc02

.field public static final RIL_UNSOL_MD_STATE_CHANGE:I = 0xbed

.field public static final RIL_UNSOL_MELOCK_NOTIFICATION:I = 0xbdf

.field public static final RIL_UNSOL_ME_SMS_STORAGE_FULL:I = 0xbbd

.field public static final RIL_UNSOL_MO_DATA_BARRING_INFO:I = 0xbef

.field public static final RIL_UNSOL_NEIGHBORING_CELL_INFO:I = 0xbb8

.field public static final RIL_UNSOL_NETWORK_EXIST:I = 0x1396

.field public static final RIL_UNSOL_NETWORK_INFO:I = 0xbb9

.field public static final RIL_UNSOL_NITZ_TIME_RECEIVED:I = 0x3f0

.field public static final RIL_UNSOL_OEM_HOOK_RAW:I = 0x404

.field public static final RIL_UNSOL_ON_SS:I = 0x413

.field public static final RIL_UNSOL_ON_USSD:I = 0x3ee

.field public static final RIL_UNSOL_ON_USSD_REQUEST:I = 0x3ef

.field public static final RIL_UNSOL_PHB_READY_NOTIFICATION:I = 0xbba

.field public static final RIL_UNSOL_RAC_UPDATE:I = 0xbdd

.field public static final RIL_UNSOL_RADIO_CAPABILITY:I = 0x412

.field public static final RIL_UNSOL_RADIO_TEMPORARILY_UNAVAILABLE:I = 0xbbc

.field public static final RIL_UNSOL_REMOVE_RESTRICT_EUTRAN:I = 0xbee

.field public static final RIL_UNSOL_RESEND_INCALL_MUTE:I = 0x406

.field public static final RIL_UNSOL_RESPONSE_ACMT:I = 0xbc8

.field public static final RIL_UNSOL_RESPONSE_BASE:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_CALL_STATE_CHANGED:I = 0x3e9

.field public static final RIL_UNSOL_RESPONSE_CDMA_NEW_SMS:I = 0x3fc

.field public static final RIL_UNSOL_RESPONSE_DATA_NETWORK_TYPE_CHANGED:I = 0x1391

.field public static final RIL_UNSOL_RESPONSE_ETWS_NOTIFICATION:I = 0xbce

.field public static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x40d

.field public static final RIL_UNSOL_RESPONSE_MMRR_STATUS_CHANGED:I = 0xbcb

.field public static final RIL_UNSOL_RESPONSE_NEW_BROADCAST_SMS:I = 0x3fd

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS:I = 0x3eb

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_ON_SIM:I = 0x3ed

.field public static final RIL_UNSOL_RESPONSE_NEW_SMS_STATUS_REPORT:I = 0x3ec

.field public static final RIL_UNSOL_RESPONSE_PLMN_CHANGED:I = 0xbcf

.field public static final RIL_UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED:I = 0xbc7

.field public static final RIL_UNSOL_RESPONSE_RADIO_STATE_CHANGED:I = 0x3e8

.field public static final RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED:I = 0xbd0

.field public static final RIL_UNSOL_RESPONSE_SIM_STATUS_CHANGED:I = 0x3fb

.field public static final RIL_UNSOL_RESPONSE_VOICE_NETWORK_STATE_CHANGED:I = 0x3ea

.field public static final RIL_UNSOL_RESTRICTED_STATE_CHANGED:I = 0x3ff

.field public static final RIL_UNSOL_RIL_CONNECTED:I = 0x40a

.field public static final RIL_UNSOL_RINGBACK_TONE:I = 0x405

.field public static final RIL_UNSOL_SCRI_RESULT:I = 0xbbf

.field public static final RIL_UNSOL_SET_ATTACH_APN:I = 0xc01

.field public static final RIL_UNSOL_SIGNAL_STRENGTH:I = 0x3f1

.field public static final RIL_UNSOL_SIM_COMMON_SLOT_NO_CHANGED:I = 0xbe5

.field public static final RIL_UNSOL_SIM_INSERTED_STATUS:I = 0xbbb

.field public static final RIL_UNSOL_SIM_MISSING:I = 0xbc0

.field public static final RIL_UNSOL_SIM_PLUG_IN:I = 0xbcd

.field public static final RIL_UNSOL_SIM_PLUG_OUT:I = 0xbcc

.field public static final RIL_UNSOL_SIM_RECOVERY:I = 0xbc3

.field public static final RIL_UNSOL_SIM_REFRESH:I = 0x3f9

.field public static final RIL_UNSOL_SIM_SMS_STORAGE_FULL:I = 0x3f8

.field public static final RIL_UNSOL_SIP_CALL_PROGRESS_INDICATOR:I = 0xbf1

.field public static final RIL_UNSOL_SMS_READY_NOTIFICATION:I = 0xbbe

.field public static final RIL_UNSOL_SPEECH_CODEC_INFO:I = 0xbec

.field public static final RIL_UNSOL_SRVCC_HANDOVER_INFO_INDICATION:I = 0xbeb

.field public static final RIL_UNSOL_SRVCC_STATE_NOTIFY:I = 0x40f

.field public static final RIL_UNSOL_SSAC_BARRING_INFO:I = 0xbf0

.field public static final RIL_UNSOL_STK_BIP_PROACTIVE_COMMAND:I = 0xbfc

.field public static final RIL_UNSOL_STK_CALL_CTRL:I = 0xbe7

.field public static final RIL_UNSOL_STK_CALL_SETUP:I = 0x3f7

.field public static final RIL_UNSOL_STK_CC_ALPHA_NOTIFY:I = 0x414

.field public static final RIL_UNSOL_STK_EVDL_CALL:I = 0xbd1

.field public static final RIL_UNSOL_STK_EVENT_NOTIFY:I = 0x3f6

.field public static final RIL_UNSOL_STK_PROACTIVE_COMMAND:I = 0x3f5

.field public static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa

.field public static final RIL_UNSOL_STK_SESSION_END:I = 0x3f4

.field public static final RIL_UNSOL_STK_SETUP_MENU_RESET:I = 0xbd4

.field public static final RIL_UNSOL_SUPP_SVC_NOTIFICATION:I = 0x3f3

.field public static final RIL_UNSOL_TRAY_PLUG_IN:I = 0xc04

.field public static final RIL_UNSOL_UICC_SUBSCRIPTION_STATUS_CHANGED:I = 0x40e

.field public static final RIL_UNSOL_UTK_EVENT_NOTIFY:I = 0x138b

.field public static final RIL_UNSOL_UTK_PROACTIVE_COMMAND:I = 0x138a

.field public static final RIL_UNSOL_UTK_SESSION_END:I = 0x1389

.field public static final RIL_UNSOL_VENDOR_BASE:I = 0xbb8

.field public static final RIL_UNSOL_VIA_GPS_EVENT:I = 0x138c

.field public static final RIL_UNSOL_VIA_INVALID_SIM_DETECTED:I = 0x138f

.field public static final RIL_UNSOL_VIA_NETWORK_TYPE_CHANGE:I = 0x138d

.field public static final RIL_UNSOL_VIDEO_CAPABILITY_INDICATOR:I = 0xc06

.field public static final RIL_UNSOL_VIRTUAL_SIM_OFF:I = 0xbc5

.field public static final RIL_UNSOL_VIRTUAL_SIM_ON:I = 0xbc4

.field public static final RIL_UNSOL_VOICE_RADIO_TECH_CHANGED:I = 0x40b

.field public static final RIL_UNSOL_VOLTE_EPS_NETWORK_FEATURE_INFO:I = 0xbea

.field public static final RIL_UNSOL_VOLTE_EPS_NETWORK_FEATURE_SUPPORT:I = 0xbe8

.field public static final RIL_UNSOL_VSIM_OPERATION_INDICATION:I = 0xc00

.field public static final RIL_UNSOL_VT_RING_INFO:I = 0xbff

.field public static final RIL_UNSOL_VT_STATUS_INFO:I = 0xbfe

.field public static final RIL_UNSOL_WORLD_MODE_CHANGED:I = 0xbfd

.field public static final RIL_UNSOl_CDMA_PRL_CHANGED:I = 0x408

.field public static final SETUP_DATA_AUTH_CHAP:I = 0x2

.field public static final SETUP_DATA_AUTH_NONE:I = 0x0

.field public static final SETUP_DATA_AUTH_PAP:I = 0x1

.field public static final SETUP_DATA_AUTH_PAP_CHAP:I = 0x3

.field public static final SETUP_DATA_PROTOCOL_IP:Ljava/lang/String; = "IP"

.field public static final SETUP_DATA_PROTOCOL_IPV4V6:Ljava/lang/String; = "IPV4V6"

.field public static final SETUP_DATA_PROTOCOL_IPV6:Ljava/lang/String; = "IPV6"

.field public static final SETUP_DATA_TECH_CDMA:I = 0x0

.field public static final SETUP_DATA_TECH_GSM:I = 0x1

.field public static final SIM_ABSENT:I = 0xb

.field public static final SIM_ALREADY_POWERED_OFF:I = 0x1d

.field public static final SIM_ALREADY_POWERED_ON:I = 0x1e

.field public static final SIM_DATA_NOT_AVAILABLE:I = 0x1f

.field public static final SIM_PIN2:I = 0x4

.field public static final SIM_PUK2:I = 0x5

.field public static final SIM_SAP_CONNECT_FAILURE:I = 0x20

.field public static final SIM_SAP_CONNECT_OK_CALL_ONGOING:I = 0x23

.field public static final SIM_SAP_MSG_SIZE_TOO_LARGE:I = 0x21

.field public static final SIM_SAP_MSG_SIZE_TOO_SMALL:I = 0x22

.field public static final SIP_PHONE:I = 0x3

.field public static final SMS_SEND_FAIL_RETRY:I = 0xa

.field public static final SS_MODIFIED_TO_DIAL:I = 0x18

.field public static final SS_MODIFIED_TO_SS:I = 0x1b

.field public static final SS_MODIFIED_TO_USSD:I = 0x19

.field public static final SUBSCRIPTION_NOT_AVAILABLE:I = 0xc

.field public static final SUBSCRIPTION_NOT_SUPPORTED:I = 0x1a

.field public static final SUCCESS:I = 0x0

.field public static final THIRD_PARTY_PHONE:I = 0x4

.field public static final USSD_MODIFIED_TO_DIAL:I = 0x15

.field public static final USSD_MODIFIED_TO_SS:I = 0x16

.field public static final USSD_MODIFIED_TO_USSD:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "ro.telephony.default_network"

    .line 110
    const/4 v1, 0x0

    .line 109
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 32
    return-void
.end method
