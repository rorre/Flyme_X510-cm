.class public Lcom/android/server/notification/MzDoNotDisturbHelper;
.super Ljava/lang/Object;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/MzDoNotDisturbHelper$1;,
        Lcom/android/server/notification/MzDoNotDisturbHelper$2;,
        Lcom/android/server/notification/MzDoNotDisturbHelper$3;,
        Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final DND_BREATH_LIGHT_URI:Landroid/net/Uri;

.field private static final KEY_DND_BREATH_LIGHT:Ljava/lang/String; = "mz_do_not_disturb_wakeup_breath_light"

.field private static final KEY_DND_END_HOUR:Ljava/lang/String; = "mz_do_not_disturb_end_time_hour"

.field private static final KEY_DND_END_MINUTE:Ljava/lang/String; = "mz_do_not_disturb_end_time_minutes"

.field private static final KEY_DND_IS_WORKING:Ljava/lang/String; = "mz_do_not_disturb_is_working"

.field private static final KEY_DND_REPEAT_CALL:Ljava/lang/String; = "mz_do_not_disturb_remind_repeating_coming _call"

.field private static final KEY_DND_REPEAT_DAY:Ljava/lang/String; = "mz_do_not_disturb_repeat_days"

.field private static final KEY_DND_START_HOUR:Ljava/lang/String; = "mz_do_not_disturb_start_time_hour"

.field private static final KEY_DND_START_MINUTE:Ljava/lang/String; = "mz_do_not_disturb_start_time_minute"

.field private static final KEY_DND_STATUSBAR_BACKGROUND_COLOR:Ljava/lang/String; = "bgColor"

.field private static final KEY_DND_STATUSBAR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final KEY_DND_STATUSBAR_RESOURCES_ID:Ljava/lang/String; = "resId"

.field private static final KEY_DND_STATUSBAR_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_DND_STATUSBAR_TIPS:Ljava/lang/String; = "tips"

.field private static final KEY_DND_TIME_SWITCH:Ljava/lang/String; = "mz_do_not_disturb_time_switch"

.field private static final KEY_DND_WHITE_LIST:Ljava/lang/String; = "white_list_disturb_enable"

.field private static final KEY_NOTIFICATION_PAULSE_LIGHT:Ljava/lang/String; = "notification_light_pulse"

.field static final SCHEDULE_RULE_NAME_FOR_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"

.field private static final UPDATE_NOTIFICATION_DELAY:J = 0xc8L

.field private static final WEEK_DAYS_ARRAYS:[[I

.field private static final WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZEN_MODE_URI:Landroid/net/Uri;

.field private static mIfDndStatusBarCanShow:Z


# instance fields
.field private final KEY_DND_STATUSBAR_BG_COLOR_VALUE:I

.field private final MSG_DND_STATUSBAR_HIDE:I

.field private final MSG_DND_STATUSBAR_RESET:I

.field private final MSG_DND_STATUSBAR_SHOW:I

.field private mContext:Landroid/content/Context;

.field private mDndReceiverIsRegistered:Z

.field private mDndStatusBarIsShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

.field private mUpdateNotificationRunnable:Ljava/lang/Runnable;

.field private mZenMode:I


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 37
    const-string/jumbo v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 39
    const-string/jumbo v3, "mz_do_not_disturb_wakeup_breath_light"

    .line 38
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    .line 54
    new-instance v3, Landroid/content/ComponentName;

    .line 55
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.meizu.settings.MzSettingsActivity$DoNotDisturbActivity"

    .line 54
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 59
    const/4 v3, 0x7

    new-array v3, v3, [[I

    const/4 v4, 0x6

    filled-new-array {v4, v6}, [I

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x5

    const/4 v5, 0x7

    filled-new-array {v4, v5}, [I

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x6

    filled-new-array {v10, v4}, [I

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x5

    filled-new-array {v9, v4}, [I

    move-result-object v4

    aput-object v4, v3, v9

    filled-new-array {v8, v10}, [I

    move-result-object v4

    aput-object v4, v3, v10

    filled-new-array {v6, v9}, [I

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    filled-new-array {v7, v8}, [I

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 64
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    aget-object v3, v3, v1

    aget v0, v3, v7

    .line 65
    .local v0, "bitSetIndex":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    aget-object v3, v3, v1

    aget v2, v3, v6

    .line 66
    .local v2, "value":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "bitSetIndex":I
    .end local v2    # "value":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xd1ba7b

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->KEY_DND_STATUSBAR_BG_COLOR_VALUE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_SHOW:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_HIDE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_RESET:I

    iput v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$1;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$2;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper$3;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    .line 110
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 112
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 113
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    .line 114
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 115
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotification()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    return-void
.end method

.method public static binaryToRepeatDay(I)[I
    .locals 8
    .param p0, "binary"    # I

    .prologue
    const/4 v6, 0x0

    .line 283
    if-gez p0, :cond_0

    .line 284
    new-array v6, v6, [I

    return-object v6

    .line 287
    :cond_0
    const/4 v1, 0x0

    .line 290
    .local v1, "dayCount":I
    move v4, p0

    .line 291
    .local v4, "tmpBinary":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, "bitSetIndexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 288
    .local v2, "i":I
    :goto_0
    const/4 v6, 0x6

    .line 292
    if-gt v2, v6, :cond_2

    .line 293
    shr-int v6, v4, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_1
    move v4, p0

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [I

    .line 299
    .local v3, "repeatDays":[I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 300
    sget-object v6, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 301
    .local v5, "value":I
    aput v5, v3, v2

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    .end local v5    # "value":I
    :cond_3
    return-object v3
.end method

.method private clearDoNotDisturbNotification()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "clearDoNotDisturbNotification return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 129
    return-void
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_content:I

    .line 161
    .local v0, "strResId":I
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 162
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_priority_only_content:I

    .line 168
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_1
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 164
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_alarm_only_content:I

    goto :goto_0

    .line 165
    :cond_2
    iget v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 166
    sget v0, Lcom/flyme/internal/R$string;->do_not_disturb_notification_none_content:I

    goto :goto_0
.end method

.method public static importConfigFromOldDb(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 222
    .local v11, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v18, "mz_do_not_disturb_time_switch"

    .line 223
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 222
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 224
    .local v16, "timeSwitch":I
    const-string/jumbo v18, "mz_do_not_disturb_start_time_hour"

    .line 225
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 224
    const/16 v20, 0x17

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 226
    .local v14, "startHour":I
    const-string/jumbo v18, "mz_do_not_disturb_start_time_minute"

    .line 227
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 226
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 228
    .local v15, "startMinute":I
    const-string/jumbo v18, "mz_do_not_disturb_end_time_hour"

    .line 229
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 228
    const/16 v20, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .local v6, "endHour":I
    const-string v18, "mz_do_not_disturb_end_time_minutes"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .local v7, "endMinute":I
    const-string v18, "mz_do_not_disturb_repeat_days"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    const/16 v20, 0x7f

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 234
    .local v10, "repeatDay":I
    const-string/jumbo v18, "mz_do_not_disturb_remind_repeating_coming _call"

    .line 235
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 234
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 236
    .local v9, "repeatCall":I
    const-string/jumbo v18, "white_list_disturb_enable"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 237
    .local v17, "whiteListEnable":I
    const-string/jumbo v18, "mz_do_not_disturb_is_working"

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v19

    .line 237
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .local v5, "dndIsWorking":I
    new-instance v4, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .local v4, "dndConfig":Landroid/service/notification/ZenModeConfig;
    if-eqz v17, :cond_1

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v4, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eqz v9, :cond_2

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v5, :cond_0

    new-instance v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v8}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .local v8, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iput-object v8, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .end local v8    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    new-instance v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v12}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .local v12, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v10}, Lcom/android/server/notification/MzDoNotDisturbHelper;->binaryToRepeatDay(I)[I

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iput v14, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput v15, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iput v6, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput v7, v12, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    new-instance v13, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v13}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .local v13, "scheduleRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const-string v18, "com.android.settings"

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v12}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    sget-object v18, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    iget-object v0, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    iget-object v0, v13, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    .end local v12    # "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .end local v13    # "scheduleRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method private showDoNotDisturbNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 138
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v4, :cond_0

    .line 139
    const-string/jumbo v4, "ZenModeHelper"

    const-string/jumbo v5, "showDoNotDisturbNotification return"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 144
    sget v4, Lcom/flyme/internal/R$drawable;->do_not_disturb_status_bar_icon:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 145
    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 146
    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 147
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->getNotificationContent()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 148
    iget-object v4, v0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    .line 149
    sget v5, Lcom/flyme/internal/R$drawable;->do_not_disturb_notification_icon:I

    .line 148
    invoke-virtual {v4, v5}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 150
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 151
    sget-object v4, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v4}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v2, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 153
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 155
    .local v3, "n":Landroid/app/Notification;
    const/16 v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 156
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    sget v5, Lcom/flyme/internal/R$string;->do_not_disturb_notification_title:I

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 137
    return-void
.end method

.method private updateNotification()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->unRegisterDndReceiver()V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->clearDoNotDisturbNotification()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->registerDndReceiver()V

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbNotification()V

    goto :goto_0
.end method

.method private updateNotificationPulseLight()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 172
    iget v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "notification_light_pulse"

    .line 175
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 174
    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 178
    const-string/jumbo v3, "notification_light_pulse"

    .line 177
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "notificationPulseLightSwitch":I
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "breathLightSwitch":I
    if-eq v0, v1, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "notification_light_pulse"

    .line 182
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 181
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method static synthetic -get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/notification/MzDoNotDisturbHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/MzDoNotDisturbHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isShowDndStatusBar"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbStatusBar(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotification()V

    return-void
.end method

.method private registerDndReceiver()V
    .locals 3

    .prologue
    new-instance v1, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    return-void
.end method

.method public static repeatDayToBinary([I)I
    .locals 7
    .param p0, "repeatDays"    # [I

    .prologue
    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .local v0, "binay":I
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget v1, p0, v4

    .local v1, "day":I
    sget-object v3, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "index":I
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .end local v1    # "day":I
    .end local v2    # "index":I
    :cond_1
    return v0
.end method

.method private showDoNotDisturbStatusBar(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isShowDndStatusBar"    # Z

    .prologue
    const-string v3, "flyme_statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v2

    .local v2, "iFlymeStatusBarService":Lmeizu/statusbar/IFlymeStatusBarService;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "packageName"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tips"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/flyme/internal/R$string;->do_not_disturb_mode_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "textColor"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "bgColor"

    const v4, -0xd1ba7b

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "resId"

    sget v4, Lcom/flyme/internal/R$drawable;->do_not_disturb_status_bar_icon:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-interface {v2, v0}, Lmeizu/statusbar/IFlymeStatusBarService;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-interface {v2, p1}, Lmeizu/statusbar/IFlymeStatusBarService;->hideAlwaysTextAndIcon(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unRegisterDndReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbStatusBar(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    return-void
.end method
