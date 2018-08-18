.class public Lorg/codeaurora/ims/utils/QtiImsExtUtils;
.super Ljava/lang/Object;
.source "QtiImsExtUtils.java"


# static fields
.field public static final ACTION_VOPS_SSAC_STATUS:Ljava/lang/String; = "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

.field public static final CARRIER_ONE_DEFAULT_MCC_MNC:Ljava/lang/String; = "405854"

.field public static final EXTRA_SSAC:Ljava/lang/String; = "Ssac"

.field public static final EXTRA_VOPS:Ljava/lang/String; = "Vops"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final PKG_CALL_SETTINGS:Ljava/lang/String; = "com.qualcomm.qti.callsettings"

.field public static final PROPERTY_RADIO_ATEL_CARRIER:Ljava/lang/String; = "persist.radio.atel.carrier"

.field public static final QTI_IMS_ASSURED_TRANSFER:I = 0x2

.field public static final QTI_IMS_BLIND_TRANSFER:I = 0x1

.field public static final QTI_IMS_CALL_DEFLECT_NUMBER:Ljava/lang/String; = "ims_call_deflect_number"

.field public static final QTI_IMS_CONSULTATIVE_TRANSFER:I = 0x4

.field public static final QTI_IMS_DEFLECT_ENABLED:Ljava/lang/String; = "qti.ims.call_deflect"

.field public static final QTI_IMS_HO_DISABLE_ALL:I = 0x2

.field public static final QTI_IMS_HO_ENABLED_WLAN_TO_WWAN_ONLY:I = 0x3

.field public static final QTI_IMS_HO_ENABLED_WWAN_TO_WLAN_ONLY:I = 0x4

.field public static final QTI_IMS_HO_ENABLE_ALL:I = 0x1

.field public static final QTI_IMS_HO_INVALID:I = 0x0

.field public static final QTI_IMS_INCOMING_CONF_EXTRA_KEY:Ljava/lang/String; = "incomingConference"

.field public static final QTI_IMS_REQUEST_ERROR:I = 0x1

.field public static final QTI_IMS_REQUEST_SUCCESS:I = 0x0

.field public static final QTI_IMS_STATIC_IMAGE_SETTING:Ljava/lang/String; = "ims_vt_call_static_image"

.field public static final QTI_IMS_TRANSFER_EXTRA_KEY:Ljava/lang/String; = "transferType"

.field public static final QTI_IMS_VOLTE_PREF_OFF:I = 0x0

.field public static final QTI_IMS_VOLTE_PREF_ON:I = 0x1

.field public static final QTI_IMS_VOLTE_PREF_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "QtiImsExtUtils"

    sput-object v0, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowVideoCallsInLowBattery(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    const-string/jumbo v0, "allow_video_call_in_low_battery"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 203
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 204
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 205
    .local v4, "width":I
    const/4 v3, 0x1

    .line 207
    .local v3, "inSampleSize":I
    sget-object v5, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculateInSampleSize: reqWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " reqHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 208
    const-string/jumbo v7, " raw width = "

    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 208
    const-string/jumbo v7, " raw height = "

    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 211
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 212
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 216
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    .line 217
    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 218
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 221
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    sget-object v5, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculateInSampleSize: inSampleSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v3
.end method

.method public static decodeImage(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 285
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 287
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 292
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 293
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 296
    invoke-static {v1, p2, p3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 299
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p2, p3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 230
    if-nez p0, :cond_0

    .line 231
    return-object v2

    .line 234
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 236
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 241
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 242
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 245
    invoke-static {v1, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 248
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 249
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 147
    const-string/jumbo v1, "ims_call_deflect_number"

    .line 146
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "deflectcall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 154
    .end local v0    # "deflectcall":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getConfigForDefaultImsPhoneId(Landroid/content/Context;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getImsPhoneId()I

    move-result v0

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 430
    if-nez p0, :cond_0

    .line 431
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v4

    .line 436
    :cond_0
    const-string/jumbo v2, "carrier_config"

    .line 435
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 437
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_1

    .line 438
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId configManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v4

    .line 442
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 443
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId phoneId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v4

    .line 447
    :cond_2
    invoke-static {p0, p1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 448
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 449
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId subId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-object v4

    .line 453
    :cond_3
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    return-object v2
.end method

.method private static getImsPhoneId()I
    .locals 5

    .prologue
    .line 460
    const/4 v1, -0x1

    .line 462
    .local v1, "phoneId":I
    :try_start_0
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiImsExtManager;->getImsPhoneId()I
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 466
    :goto_0
    return v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImsPhoneId failed. Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStaticImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getStaticImageUriStr(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "uriStr":Ljava/lang/String;
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStaticImage: uriStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reqWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    const-string/jumbo v4, " reqHeight = "

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isValidUriStr(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    const-string/jumbo v3, "invalid file path"

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_0
    invoke-static {v1, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, "imageBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 324
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    const-string/jumbo v3, "image decoding error"

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_1
    return-object v0
.end method

.method public static getStaticImageUriStr(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 175
    const-string/jumbo v0, "ims_vt_call_static_image"

    .line 174
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, -0x1

    .line 473
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 474
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 475
    return v2

    .line 478
    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 480
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    .line 481
    return v2

    .line 483
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    return v2
.end method

.method public static isCallTransferEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    const-string/jumbo v0, "persist.radio.ims_call_transfer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "carrierConfig"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 402
    invoke-static {p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getConfigForDefaultImsPhoneId(Landroid/content/Context;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 404
    .local v0, "b":Landroid/os/PersistableBundle;
    if-nez v0, :cond_0

    .line 405
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCarrierConfigEnabled bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v3

    .line 409
    :cond_0
    invoke-virtual {v0, p1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isCarrierOneCallSettingsAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 490
    if-nez p0, :cond_0

    .line 491
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v4

    .line 495
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 496
    const-string/jumbo v2, "com.qualcomm.qti.callsettings"

    const/16 v3, 0x80

    .line 495
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    const/4 v1, 0x1

    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .prologue
    .line 393
    const-string/jumbo v0, "405854"

    .line 394
    const-string/jumbo v1, "persist.radio.atel.carrier"

    .line 393
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCsRetryConfigEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    const-string/jumbo v0, "config_carrier_cs_retry_available"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidUriStr(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 184
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method private static scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 255
    if-nez p0, :cond_0

    .line 256
    return-object v0

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 260
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 261
    .local v4, "h":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 262
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 263
    .local v8, "scaleHeight":F
    sget-object v0, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scaleImage bitmap w = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " bitmap h = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 267
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 269
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    move-object v0, p1

    .line 161
    .local v0, "deflectNum":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    const-string/jumbo v0, ""

    .line 166
    :cond_1
    const-string/jumbo v1, "ims_call_deflect_number"

    .line 165
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    return-void
.end method

.method public static shallCheckSupportForHighVideoQuality(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    const-string/jumbo v0, "check_support_for_high_video_quality"

    .line 350
    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallHidePreviewInVtConference(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    const-string/jumbo v0, "config_hide_preview_in_vt_confcall"

    .line 417
    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallRemoveModifyCallCapability(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    const-string/jumbo v0, "remove_modify_call_capability"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallShowStaticImageUi(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    const-string/jumbo v0, "show_static_image_ui"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallTransmitStaticImage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    const-string/jumbo v0, "transmit_static_image"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useCustomVideoUi(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    const-string/jumbo v0, "use_custom_video_ui"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useExt(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    const-string/jumbo v0, "video_call_use_ext"

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
