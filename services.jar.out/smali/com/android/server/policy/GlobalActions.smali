.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$1;,
        Lcom/android/server/policy/GlobalActions$2;,
        Lcom/android/server/policy/GlobalActions$3;,
        Lcom/android/server/policy/GlobalActions$4;,
        Lcom/android/server/policy/GlobalActions$5;,
        Lcom/android/server/policy/GlobalActions$Action;,
        Lcom/android/server/policy/GlobalActions$BugReportAction;,
        Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;,
        Lcom/android/server/policy/GlobalActions$LongPressAction;,
        Lcom/android/server/policy/GlobalActions$MyAdapter;,
        Lcom/android/server/policy/GlobalActions$PowerAction;,
        Lcom/android/server/policy/GlobalActions$RestartAction;,
        Lcom/android/server/policy/GlobalActions$ScreenshotAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;,
        Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/server/policy/GlobalActions$SinglePressAction;,
        Lcom/android/server/policy/GlobalActions$ToggleAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field mActions:Ljava/lang/String;

.field private mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

.field private mAirplaneModeBits:Ljava/util/BitSet;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeBits:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/GlobalActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/GlobalActions;)Lcom/android/internal/policy/EmergencyAffordanceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/GlobalActions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setupAirplaneModeListeners()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/GlobalActions;Z)V
    .locals 0
    .param p1, "partial"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions;->takeScreenshot(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 131
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 132
    sget-object v3, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 133
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    .line 788
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    .line 789
    iput-object v6, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 791
    new-instance v3, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 1326
    new-instance v3, Lcom/android/server/policy/GlobalActions$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$2;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1355
    new-instance v3, Lcom/android/server/policy/GlobalActions$3;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$3;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1364
    new-instance v3, Lcom/android/server/policy/GlobalActions$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v6}, Lcom/android/server/policy/GlobalActions$4;-><init>(Lcom/android/server/policy/GlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1376
    new-instance v3, Lcom/android/server/policy/GlobalActions$5;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$5;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 149
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 151
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 153
    const-string/jumbo v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 152
    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 156
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v3, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 165
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 168
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 169
    new-instance v6, Lcom/android/server/policy/GlobalActions$6;

    invoke-direct {v6, p0}, Lcom/android/server/policy/GlobalActions$6;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 168
    invoke-virtual {v3, v6}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->setupAirplaneModeListeners()V

    .line 177
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 178
    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 179
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 177
    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 181
    .local v2, "vibrator":Landroid/os/Vibrator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    .line 183
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 184
    const v6, 0x112008e

    .line 183
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    .line 186
    new-instance v3, Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->updatePowerMenuActions()V

    .line 148
    return-void

    :cond_0
    move v3, v4

    .line 181
    goto :goto_0

    :cond_1
    move v4, v5

    .line 183
    goto :goto_1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    const/4 v13, 0x0

    .line 736
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 737
    .local v10, "um":Landroid/os/UserManager;
    invoke-virtual {v10}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 738
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 739
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 740
    .local v7, "currentUser":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 741
    const v2, 0x1050007

    .line 740
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 742
    .local v6, "avatarSize":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 743
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    if-nez v7, :cond_4

    .line 745
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_3

    :goto_1
    const/4 v8, 0x1

    .line 746
    .local v8, "isCurrentUser":Z
    :goto_2
    const/4 v3, 0x0

    .line 747
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 748
    .local v9, "rawAvatar":Landroid/graphics/Bitmap;
    if-nez v9, :cond_1

    .line 750
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, -0x2710

    .line 749
    :goto_3
    invoke-static {v1, v13}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 752
    :cond_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 753
    invoke-static {v9, v6, v6}, Lcom/android/server/policy/GlobalActions;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 752
    invoke-direct {v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 755
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/server/policy/GlobalActions$15;

    .line 757
    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v4, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 756
    :goto_4
    const v2, 0x108037d

    move-object v1, p0

    .line 755
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$15;-><init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 774
    .local v0, "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    if-eqz v8, :cond_2

    .line 775
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 776
    const v2, 0x104001c

    .line 775
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->setStatus(Ljava/lang/CharSequence;)V

    .line 778
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    .end local v0    # "switchToUser":Lcom/android/server/policy/GlobalActions$SinglePressAction;
    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    .end local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "isCurrentUser":Z
    goto :goto_2

    .end local v8    # "isCurrentUser":Z
    :cond_4
    iget v1, v7, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 750
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "isCurrentUser":Z
    .restart local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    :cond_5
    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    goto :goto_3

    .line 757
    .local v3, "avatar":Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string/jumbo v4, "Primary"

    goto :goto_4

    .line 735
    .end local v3    # "avatar":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "avatarSize":I
    .end local v7    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v8    # "isCurrentUser":Z
    .end local v9    # "rawAvatar":Landroid/graphics/Bitmap;
    .end local v11    # "user$iterator":Ljava/util/Iterator;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 2

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1416
    const-string/jumbo v3, "airplane_mode_on"

    .line 1417
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1414
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1418
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1420
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1421
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1422
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1423
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1413
    :cond_0
    return-void

    .line 1417
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1423
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private static createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1436
    if-nez p0, :cond_0

    return-object v8

    .line 1438
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1439
    .local v3, "inWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1440
    .local v2, "inHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1441
    .local v5, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1442
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1443
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, p0, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1444
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1445
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v2

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1446
    .local v7, "srcRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    invoke-direct {v1, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1447
    .local v1, "dstRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1448
    .local v4, "m":Landroid/graphics/Matrix;
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v7, v1, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1449
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1450
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1451
    return-object v5
.end method

.method private createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    .locals 14

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$SilentModeToggleAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    .line 303
    :goto_0
    new-instance v0, Lcom/android/server/policy/GlobalActions$8;

    .line 304
    const v2, 0x108036e

    .line 305
    const v3, 0x1080370

    .line 306
    const v4, 0x10401b0

    .line 307
    const v5, 0x10401b1

    .line 308
    const v6, 0x10401b2

    move-object v1, p0

    .line 303
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$8;-><init>(Lcom/android/server/policy/GlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 344
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->onAirplaneModeChanged()V

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 349
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 351
    const v1, 0x1070049

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "actionsArray":[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$PowerAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$PowerAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$PowerAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 360
    .local v9, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    array-length v0, v8

    if-ge v11, v0, :cond_f

    .line 361
    aget-object v7, v8, v11

    .line 362
    .local v7, "actionKey":Ljava/lang/String;
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    :cond_0
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 301
    .end local v7    # "actionKey":Ljava/lang/String;
    .end local v8    # "actionsArray":[Ljava/lang/String;
    .end local v9    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "i":I
    :cond_1
    new-instance v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "actionsArray":[Ljava/lang/String;
    goto :goto_1

    .line 366
    .restart local v7    # "actionKey":Ljava/lang/String;
    .restart local v9    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    :cond_3
    const-string/jumbo v0, "power"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const-string/jumbo v0, "screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$ScreenshotAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$ScreenshotAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ScreenshotAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_4
    :goto_4
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 370
    :cond_5
    const-string/jumbo v0, "airplane"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 371
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 372
    :cond_6
    const-string/jumbo v0, "bugreport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    const-string/jumbo v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    .line 373
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->isCurrentUserOwner()Z

    move-result v0

    .line 373
    if-eqz v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$BugReportAction;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$BugReportAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 377
    :cond_7
    const-string/jumbo v0, "silent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 378
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 381
    :cond_8
    const-string/jumbo v0, "users"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 383
    const-string/jumbo v1, "user"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 384
    .local v13, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 385
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 387
    .end local v13    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 388
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 389
    :cond_a
    const-string/jumbo v0, "lockdown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 390
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 391
    :cond_b
    const-string/jumbo v0, "voiceassist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 392
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 393
    :cond_c
    const-string/jumbo v0, "assist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 394
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getAssistAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 395
    :cond_d
    const-string/jumbo v0, "restart"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 396
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/GlobalActions$RestartAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/GlobalActions$RestartAction;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RestartAction;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 398
    :cond_e
    const-string/jumbo v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid global action key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 404
    .end local v7    # "actionKey":Ljava/lang/String;
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mEmergencyAffordanceManager:Lcom/android/internal/policy/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 405
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_10
    new-instance v0, Lcom/android/server/policy/GlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$MyAdapter;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    .line 410
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 411
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 412
    iput-object p0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 415
    new-instance v10, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, v12}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 416
    .local v10, "dialog":Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 418
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 419
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 420
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 421
    new-instance v1, Lcom/android/server/policy/GlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$9;-><init>(Lcom/android/server/policy/GlobalActions;)V

    .line 420
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 432
    invoke-virtual {v10}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 434
    invoke-virtual {v10, p0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 436
    return-object v10
.end method

.method private getAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 653
    new-instance v0, Lcom/android/server/policy/GlobalActions$12;

    const v1, 0x10802e7

    .line 654
    const v2, 0x10401b4

    .line 653
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$12;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 724
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getEmergencyAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 633
    new-instance v0, Lcom/android/server/policy/GlobalActions$11;

    const v1, 0x1080299

    .line 634
    const v2, 0x10401a4

    .line 633
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$11;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getLockdownAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 697
    new-instance v0, Lcom/android/server/policy/GlobalActions$14;

    const v1, 0x108002f

    .line 698
    const v2, 0x10401b6

    .line 697
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$14;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 610
    new-instance v0, Lcom/android/server/policy/GlobalActions$10;

    const v1, 0x108037b

    .line 611
    const v2, 0x10401b3

    .line 610
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$10;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1398
    const-string/jumbo v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 1397
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1398
    const/4 v1, 0x1

    .line 1397
    if-ne v0, v1, :cond_0

    .line 1399
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1397
    :goto_0
    return-object v0

    .line 1399
    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method private getVoiceAssistAction()Lcom/android/server/policy/GlobalActions$Action;
    .locals 3

    .prologue
    .line 675
    new-instance v0, Lcom/android/server/policy/GlobalActions$13;

    const v1, 0x1080452

    .line 676
    const v2, 0x10401b5

    .line 675
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/GlobalActions$13;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 275
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->awakenIfNecessary()V

    .line 276
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->prepareDialog()V

    .line 279
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    .line 279
    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/policy/GlobalActions$LongPressAction;

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 285
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "GlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 287
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->show()V

    .line 288
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 274
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/GlobalActions$SinglePressAction;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 732
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    if-eqz v0, :cond_0

    return-void

    .line 1406
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1407
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 1402
    return-void
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V

    .line 872
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 873
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 874
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 875
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 876
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 882
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 885
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$Action;

    check-cast v1, Lcom/android/server/policy/GlobalActions$ToggleAction;

    .line 886
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 885
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 881
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 884
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "silentModeOn":Z
    goto :goto_0

    .line 886
    :cond_2
    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private setupAirplaneModeListeners()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 201
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 203
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    .line 204
    .local v2, "listener":Landroid/telephony/PhoneStateListener;
    invoke-virtual {v6, v2, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 206
    .end local v2    # "listener":Landroid/telephony/PhoneStateListener;
    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 208
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 210
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1

    .line 211
    iput-boolean v10, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 212
    new-instance v7, Ljava/util/BitSet;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneModeBits:Ljava/util/BitSet;

    .line 213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 214
    move v0, v1

    .line 215
    .local v0, "finalI":I
    new-instance v5, Lcom/android/server/policy/GlobalActions$7;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-direct {v5, p0, v7, v0}, Lcom/android/server/policy/GlobalActions$7;-><init>(Lcom/android/server/policy/GlobalActions;II)V

    .line 233
    .local v5, "subListener":Landroid/telephony/PhoneStateListener;
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions;->mPhoneStateListeners:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v6, v5, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "finalI":I
    .end local v1    # "i":I
    .end local v5    # "subListener":Landroid/telephony/PhoneStateListener;
    :cond_1
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->getUpdatedAirplaneToggleState()Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 199
    return-void
.end method

.method private takeScreenshot(Z)V
    .locals 8
    .param p1, "partial"    # Z

    .prologue
    .line 803
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 804
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 805
    return-void

    .line 807
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 808
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 807
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 810
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 811
    new-instance v1, Lcom/android/server/policy/GlobalActions$16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/GlobalActions$16;-><init>(Lcom/android/server/policy/GlobalActions;Z)V

    .line 863
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 865
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 802
    return-void

    .line 803
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/policy/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 905
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 903
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 892
    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 897
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v1, 0x0

    .line 248
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 249
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 250
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 252
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 253
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 255
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 258
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->handleShow()V

    goto :goto_0
.end method

.method protected updatePowerMenuActions()V
    .locals 3

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1352
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "power_menu_actions"

    const/4 v2, -0x2

    .line 1351
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/GlobalActions;->mActions:Ljava/lang/String;

    .line 1349
    return-void
.end method
