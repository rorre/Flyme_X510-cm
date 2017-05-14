.class public Lcom/mediatek/internal/telephony/dataconnection/FdManager;
.super Landroid/os/Handler;
.source "FdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;,
        Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;,
        Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x0

.field protected static final DBG:Z = true

.field private static final EVENT_FD_MODE_SET:I = 0x0

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "FdManager"

.field protected static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field protected static final PROPERTY_FD_ON_CHARGE:Ljava/lang/String; = "fd.on.charge"

.field protected static final PROPERTY_FD_SCREEN_OFF_ONLY:Ljava/lang/String; = "fd.screen.off.only"

.field protected static final PROPERTY_MTK_FD_SUPPORT:Ljava/lang/String; = "ro.mtk_fd_support"

.field protected static final PROPERTY_RIL_FD_MODE:Ljava/lang/String; = "ril.fd.mode"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.off.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_OFF_TIMER:Ljava/lang/String; = "persist.radio.fd.off.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_R8_TIMER:Ljava/lang/String; = "persist.radio.fd.r8.counter"

.field private static final STR_PROPERTY_FD_SCREEN_ON_TIMER:Ljava/lang/String; = "persist.radio.fd.counter"

.field private static final STR_SCREEN_OFF:Ljava/lang/String; = "SCREEN_OFF"

.field private static final STR_SCREEN_ON:Ljava/lang/String; = "SCREEN_ON"

.field private static numberOfSupportedTypes:I

.field private static final sFdManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mediatek/internal/telephony/dataconnection/FdManager;",
            ">;"
        }
    .end annotation
.end field

.field private static timerValue:[Ljava/lang/String;


# instance fields
.field private mChargingMode:Z

.field private mEnableFdOnCharing:I

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mIsTetheredMode:Z

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/dataconnection/FdManager;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/dataconnection/FdManager;ZII)V
    .locals 0
    .param p1, "isScreenOn"    # Z
    .param p2, "fdMdEnableMode"    # I
    .param p3, "fdSimId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->onScreenSwitch(ZII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/dataconnection/FdManager;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "50"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "150"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "50"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "150"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    .line 98
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    .line 99
    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    .line 100
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    .line 105
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/FdManager;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 251
    const-string/jumbo v1, "initial FastDormancyManager"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 261
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->initFdTimer()V

    .line 249
    return-void
.end method

.method private checkNeedTurnOn()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdScreenOffOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    :goto_0
    if-nez v0, :cond_0

    .line 418
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mEnableFdOnCharing:I

    if-nez v0, :cond_2

    .line 422
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 417
    goto :goto_0

    .line 419
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public static getFdTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    if-gez v1, :cond_0

    .line 228
    const-string/jumbo v1, "FdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]is invalid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v4

    .line 231
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .line 232
    .local v0, "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    if-nez v0, :cond_1

    .line 234
    if-eqz p0, :cond_2

    .line 235
    const-string/jumbo v1, "FdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FDMagager for phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    const-string/jumbo v3, " doesn\'t exist, create it"

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .end local v0    # "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 238
    .restart local v0    # "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    :cond_1
    :goto_0
    return-object v0

    .line 240
    :cond_2
    const-string/jumbo v1, "FdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FDMagager for phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    const-string/jumbo v3, " can\'t get phone to init!"

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0    # "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    :cond_3
    return-object v4
.end method

.method private static getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 440
    if-nez p0, :cond_0

    .line 441
    const-string/jumbo v0, "FdManager"

    const-string/jumbo v1, "getPhoneId fail! phone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, -0x1

    return v0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    return v0
.end method

.method private initFdTimer()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 275
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    .line 276
    .local v0, "timerStr":[Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.fd.off.counter"

    const-string/jumbo v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 277
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    .line 278
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    aput-object v3, v1, v2

    .line 279
    const-string/jumbo v1, "persist.radio.fd.counter"

    const-string/jumbo v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 280
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    .line 281
    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    aput-object v3, v1, v2

    .line 282
    const-string/jumbo v1, "persist.radio.fd.off.r8.counter"

    const-string/jumbo v2, "5"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 283
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    .line 284
    aget-object v3, v0, v10

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    aput-object v3, v1, v2

    .line 285
    const-string/jumbo v1, "persist.radio.fd.r8.counter"

    const-string/jumbo v2, "15"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    .line 286
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v2

    .line 287
    aget-object v3, v0, v11

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    aput-object v3, v1, v2

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Default FD timers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v10

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    const-string/jumbo v2, ","

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v2, v2, v11

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public static isFdScreenOffOnly()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    const-string/jumbo v0, "fd.screen.off.only"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 427
    return v2

    .line 429
    :cond_0
    return v1
.end method

.method public static isFdSupport()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 434
    const-string/jumbo v1, "ro.mtk_fd_support"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 435
    .local v0, "isFdSupport":Z
    :goto_0
    return v0

    .line 434
    .end local v0    # "isFdSupport":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isFdSupport":Z
    goto :goto_0
.end method

.method private onScreenSwitch(ZII)V
    .locals 8
    .param p1, "isScreenOn"    # Z
    .param p2, "fdMdEnableMode"    # I
    .param p3, "fdSimId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    .line 193
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    if-eqz v2, :cond_1

    const-string/jumbo v0, "SCREEN_ON"

    .line 194
    .local v0, "StrOnOff":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 195
    .local v1, "screenMode":I
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fdMdEnableMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", 3gSimID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    const-string/jumbo v3, ", when switching to "

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 198
    if-ne p2, v7, :cond_4

    .line 201
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->INFO_MD_SCREEN_STATUS:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v3

    .line 203
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 202
    const/4 v5, -0x1

    invoke-interface {v2, v3, v1, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 205
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdScreenOffOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    if-eqz p1, :cond_3

    .line 208
    const-string/jumbo v2, "Because FD_SCREEN_OFF_ONLY, disable fd when screen on."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    .line 191
    :cond_0
    :goto_2
    return-void

    .line 193
    .end local v0    # "StrOnOff":Ljava/lang/String;
    .end local v1    # "screenMode":I
    :cond_1
    const-string/jumbo v0, "SCREEN_OFF"

    .restart local v0    # "StrOnOff":Ljava/lang/String;
    goto :goto_0

    .line 194
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "screenMode":I
    goto :goto_1

    .line 211
    :cond_3
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const-string/jumbo v2, "Because FD_SCREEN_OFF_ONLY, enable fd when screen off."

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    goto :goto_2

    .line 220
    :cond_4
    const-string/jumbo v2, "Not Support AP-trigger FD now"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateFdMdEnableStatus(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 379
    const-string/jumbo v2, "ril.fd.mode"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "fdMdEnableMode":I
    const-string/jumbo v2, "gsm.3gswitch"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 381
    .local v1, "fdSimId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFdMdEnableStatus():enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",fdMdEnableMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 382
    const-string/jumbo v3, ", 3gSimID="

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 383
    if-ne v0, v6, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 384
    if-eqz p1, :cond_1

    .line 385
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ENABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v3

    .line 386
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 385
    invoke-interface {v2, v3, v5, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->DISABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v3

    .line 389
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 388
    invoke-interface {v2, v3, v5, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public disableFdWhenTethering()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 396
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 398
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    .line 402
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsTetheredMode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsTetheredMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "mChargingMode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mChargingMode:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->checkNeedTurnOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    .line 395
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    :cond_2
    move v1, v3

    .line 399
    goto :goto_0

    .line 406
    :cond_3
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->updateFdMdEnableStatus(Z)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v0, "FD.dispose"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 270
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->sFdManagers:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public getNumberOfSupportedTypes()I
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->SupportedTimerTypes:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 355
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 373
    const-string/jumbo v3, "FdManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unidentified event msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 359
    const-string/jumbo v3, "SET_FD_MODE ERROR"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string/jumbo v3, "EVENT_RADIO_AVAILABLE check screen on/off again"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v3, "ril.fd.mode"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 365
    .local v1, "fdMdEnableMode":I
    const-string/jumbo v3, "gsm.3gswitch"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 366
    .local v2, "fdSimId":I
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mIsScreenOn:Z

    if-eqz v3, :cond_1

    .line 367
    invoke-direct {p0, v5, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->onScreenSwitch(ZII)V

    goto :goto_0

    .line 369
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->onScreenSwitch(ZII)V

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string/jumbo v0, "FdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GDCT][phoneId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public setFdTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 11
    .param p1, "newTimerValue"    # [Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 303
    const-string/jumbo v3, "ril.fd.mode"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 304
    .local v0, "fdMdEnableMode":I
    const-string/jumbo v3, "gsm.3gswitch"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 305
    .local v1, "fdSimId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->isFdSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, v8, :cond_1

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getPhoneId(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 307
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 308
    sget-object v3, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v4, p1, v2

    aput-object v4, v3, v2

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    .line 311
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    .line 312
    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 310
    invoke-interface {v3, v4, v5, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 313
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    .line 314
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    .line 315
    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 313
    invoke-interface {v3, v4, v5, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 316
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    .line 317
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    .line 318
    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 316
    invoke-interface {v3, v4, v5, v6, v9}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 319
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ordinal()I

    move-result v4

    .line 320
    sget-object v5, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v5

    .line 321
    sget-object v6, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    sget-object v7, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 319
    invoke-interface {v3, v4, v5, v6, p2}, Lcom/android/internal/telephony/CommandsInterface;->setFDMode(IIILandroid/os/Message;)V

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set Default FD timers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    const-string/jumbo v4, ","

    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->timerValue:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    .line 325
    .end local v2    # "i":I
    :cond_1
    return v10
.end method

.method public setFdTimerValue([Ljava/lang/String;Landroid/os/Message;Lcom/android/internal/telephony/PhoneBase;)I
    .locals 2
    .param p1, "newTimerValue"    # [Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 335
    invoke-static {p3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    move-result-object v0

    .line 336
    .local v0, "fdMgr":Lcom/mediatek/internal/telephony/dataconnection/FdManager;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->setFdTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    .line 341
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 339
    :cond_0
    const-string/jumbo v1, "setFDTimerValue fail!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
