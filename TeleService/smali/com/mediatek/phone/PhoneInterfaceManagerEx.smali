.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x0

    .line 419
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;-><init>()V

    .line 176
    iput-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    .line 179
    iput-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mSimAuthThread:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SimAuth;

    .line 182
    iput-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mOmhOperators:[Ljava/lang/String;

    .line 390
    iput-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mCallback:Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;

    .line 392
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mIsEccInProgress:Z

    .line 397
    iput-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMeids:[Ljava/lang/String;

    .line 463
    new-instance v2, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$1;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;)V

    iput-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 420
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 421
    iput-object p2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 422
    new-instance v2, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    invoke-direct {v2, p0, v4}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;-><init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;)V

    iput-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    .line 423
    invoke-virtual {p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getUserCustomizedEccList()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->updateUserCustomizedEccList(Landroid/os/Bundle;)Z

    .line 424
    const-string/jumbo v2, "appops"

    invoke-virtual {p1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mAppOps:Landroid/app/AppOpsManager;

    .line 425
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 426
    const-string/jumbo v2, "PhoneInterfaceManagerEx: registerForRadioAvailable"

    invoke-static {v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 427
    iget-object v0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 428
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/mediatek/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    const/4 v3, 0x6

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 429
    invoke-direct {p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->publish()V

    .line 431
    #invoke-direct {p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->omhInit()V

    .line 432
    new-instance v1, Landroid/content/IntentFilter;

    .line 433
    const-string/jumbo v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    .line 432
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    invoke-direct {p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->deviceIdHandlerInit()V

    .line 419
    return-void
.end method