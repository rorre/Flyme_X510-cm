.class public Lcom/android/internal/telephony/PhoneSwitcher;
.super Landroid/os/Handler;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSwitcher$1;,
        Lcom/android/internal/telephony/PhoneSwitcher$2;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
    }
.end annotation


# static fields
.field protected static final EVENT_ALLOW_DATA_RESPONSE:I = 0x6b

.field protected static final EVENT_DATA_RAT_CHANGED:I = 0x6d

.field protected static final EVENT_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x65

.field private static final EVENT_EMERGENCY_TOGGLE:I = 0x69

.field protected static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x6f

.field private static final EVENT_RELEASE_NETWORK:I = 0x68

.field protected static final EVENT_REQUEST_NETWORK:I = 0x67

.field private static final EVENT_RESEND_DATA_ALLOWED:I = 0x6a

.field protected static final EVENT_SUBSCRIPTION_CHANGED:I = 0x66

.field protected static final EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED:I = 0x6e

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x6c

.field protected static final LOG_TAG:Ljava/lang/String; = "PhoneSwitcher"

.field private static final MAX_LOCAL_LOG_LINES:I = 0x1e

.field private static final REQUESTS_CHANGED:Z = true

.field protected static final REQUESTS_UNCHANGED:Z

.field protected static final VDBG:Z


# instance fields
.field protected final mActivePhoneRegistrants:[Landroid/os/RegistrantList;

.field protected final mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field protected mDefaultDataSubscription:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field protected mMaxActivePhones:I

.field protected final mNumPhones:I

.field protected final mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

.field protected final mPhoneSubscriptions:[I

.field protected final mPhones:[Lcom/android/internal/telephony/Phone;

.field protected final mPrioritizedDcRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DcRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 9
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "subscriptionController"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 112
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    .line 167
    new-instance v5, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v5, Lcom/android/internal/telephony/PhoneSwitcher$2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    .line 175
    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 113
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 114
    iput p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    .line 115
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 116
    new-array v5, p2, [I

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 117
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    .line 118
    new-instance v5, Landroid/util/LocalLog;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    .line 120
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 122
    new-array v5, p2, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    .line 123
    new-array v5, p2, [Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    iput-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    .line 124
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v2

    .line 126
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    new-instance v6, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;-><init>()V

    aput-object v6, v5, v2

    .line 127
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v2

    const/16 v6, 0x69

    const/4 v7, 0x0

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 135
    :try_start_0
    const-string/jumbo v5, "PhoneSwitcher"

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p6, v5, v6}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 143
    .local v3, "netCap":Landroid/net/NetworkCapabilities;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 144
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 145
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 146
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 147
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 148
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 149
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 150
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 151
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 152
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 153
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 154
    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 155
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 156
    const-string/jumbo v5, "*"

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 158
    new-instance v4, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;

    invoke-direct {v4, p5, p3, v3, p0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V

    .line 161
    .local v4, "networkFactory":Landroid/net/NetworkFactory;
    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 162
    invoke-virtual {v4}, Landroid/net/NetworkFactory;->register()V

    .line 164
    const-string/jumbo v5, "PhoneSwitcher started"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 111
    return-void

    .line 136
    .end local v3    # "netCap":Landroid/net/NetworkCapabilities;
    .end local v4    # "networkFactory":Landroid/net/NetworkFactory;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    .line 175
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 97
    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    .line 98
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 99
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 100
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 101
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    .line 103
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 104
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    .line 105
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    .line 106
    iput v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    .line 95
    return-void
.end method

.method private onReleaseNetwork(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 257
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    .line 259
    .local v0, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string/jumbo v1, "netReleased"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method private onRequestNetwork(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 248
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    .line 249
    .local v0, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 252
    const-string/jumbo v1, "netRequest"

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method private validatePhoneId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 414
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-lt p1, v0, :cond_1

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid PhoneId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    return-void
.end method


# virtual methods
.method protected activate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v1, p1

    .line 353
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-eqz v1, :cond_0

    return-void

    .line 354
    :cond_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "activate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 351
    return-void
.end method

.method protected deactivate(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v1, p1

    .line 343
    .local v0, "state":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-nez v1, :cond_0

    return-void

    .line 344
    :cond_0
    iput-boolean v4, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 341
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 425
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 426
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v4, "PhoneSwitcher:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 428
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v4, :cond_1

    .line 429
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v2, v4, v1

    .line 430
    .local v2, "ps":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    iget-wide v4, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PhoneId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", lastRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 432
    iget-wide v6, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    const-string/jumbo v4, "never"

    .line 431
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    const-string/jumbo v4, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    aput-object v0, v6, v7

    const/4 v7, 0x5

    aput-object v0, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 435
    .end local v2    # "ps":Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 436
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v4, p1, v3, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 437
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 424
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const-string/jumbo v0, "subChanged"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_1
    const-string/jumbo v0, "defaultChanged"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onRequestNetwork(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 200
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onReleaseNetwork(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 204
    :pswitch_4
    const-string/jumbo v0, "emergencyToggle"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onResendDataAllowed(Landroid/os/Message;)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected isEmergency()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 216
    .local v0, "p":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_1

    .line 215
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    const/4 v1, 0x1

    return v1

    .line 219
    .end local v0    # "p":Lcom/android/internal/telephony/Phone;
    :cond_3
    return v2
.end method

.method public isPhoneActive(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string/jumbo v0, "PhoneSwitcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method protected onEvaluate(ZLjava/lang/String;)V
    .locals 13
    .param p1, "requestsChanged"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->isEmergency()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 278
    const-string/jumbo v11, "onEvalute aborted due to Emergency"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 279
    return-void

    .line 282
    :cond_0
    move v3, p1

    .line 283
    .local v3, "diffDetected":Z
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 284
    .local v0, "dataSub":I
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    if-eq v0, v11, :cond_1

    .line 285
    const-string/jumbo v11, " default "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    .line 287
    const/4 v3, 0x1

    .line 291
    .end local v3    # "diffDetected":Z
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v4, v11, :cond_3

    .line 292
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v11, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v10

    .line 293
    .local v10, "sub":I
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v11, v11, v4

    if-eq v10, v11, :cond_2

    .line 294
    const-string/jumbo v11, " phone["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    const-string/jumbo v11, "->"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aput v10, v11, v4

    .line 297
    const/4 v3, 0x1

    .line 291
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    .end local v10    # "sub":I
    :cond_3
    if-eqz v3, :cond_8

    .line 302
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "evaluating due to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 304
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v5, "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dcRequest$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 307
    .local v1, "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    iget-object v11, v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v8

    .line 308
    .local v8, "phoneIdForRequest":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    .line 309
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 310
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    iget v12, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    if-lt v11, v12, :cond_4

    .line 323
    .end local v1    # "dcRequest":Lcom/android/internal/telephony/dataconnection/DcRequest;
    .end local v8    # "phoneIdForRequest":I
    :cond_5
    const/4 v6, 0x0

    .local v6, "phoneId":I
    :goto_1
    iget v11, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v6, v11, :cond_7

    .line 324
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 325
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->deactivate(I)V

    .line 323
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 330
    :cond_7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "phoneId$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 331
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->activate(I)V

    goto :goto_2

    .line 275
    .end local v2    # "dcRequest$iterator":Ljava/util/Iterator;
    .end local v5    # "newActivePhones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "phoneId":I
    .end local v7    # "phoneId$iterator":Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method protected onResendDataAllowed(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 372
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 370
    return-void
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;)I
    .locals 5
    .param p1, "netRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 376
    iget-object v4, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "specifier":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataSubscription:I

    .line 384
    .local v3, "subId":I
    :goto_0
    const/4 v1, -0x1

    .line 385
    .local v1, "phoneId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v1

    .line 382
    .end local v1    # "phoneId":I
    .end local v3    # "subId":I
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "subId":I
    goto :goto_0

    .line 387
    .restart local v1    # "phoneId":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v0, v4, :cond_2

    .line 388
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v4, v4, v0

    if-ne v4, v3, :cond_3

    .line 389
    move v1, v0

    .line 393
    :cond_2
    return v1

    .line 387
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public registerForActivePhoneSwitch(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "o"    # Ljava/lang/Object;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 403
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 404
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 405
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 401
    return-void
.end method

.method public resendDataAllowed(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 365
    const/16 v1, 0x6a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 366
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 367
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 363
    return-void
.end method

.method public unregisterForActivePhoneSwitch(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 408
    return-void
.end method
