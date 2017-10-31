.class public Lcom/android/server/notification/NotificationFirewallImpl;
.super Ljava/lang/Object;
.source "NotificationFirewallImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationFirewall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationFirewallImpl$H;
    }
.end annotation


# static fields
.field private static final DISTINGUISH_NOTIFICATION:I = 0x1

.field private static FILTER_ACTION_NAME:Ljava/lang/String;

.field public static final INTERCEPT_SYSTEM_APP_NOTIFICATION:Z

.field private static SYSTEM_UI_TOOLS:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final INTERCEPT_NOTIFICATION_TIME_OUT:I

.field private conn:Landroid/content/ServiceConnection;

.field public final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNotificationKey:Ljava/lang/String;

.field private mResult:Lmeizu/notification/FilterResult;

.field private remoteService:Lmeizu/notification/INotificationFilterService;

.method static synthetic -get1(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/NotificationFirewallImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "NotificationFirewall"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "com.meizu.notification.FILTER"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "com.flyme.systemuitools"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->INTERCEPT_NOTIFICATION_TIME_OUT:I

    return-void
.end method

.method private startService()V
    .locals 5

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public decreaseScore(Lmeizu/notification/RankingDaily;)F
    .locals 3
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1}, Lmeizu/notification/INotificationFilterService;->decreaseScore(Lmeizu/notification/RankingDaily;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public getRankingScoreBase(Ljava/lang/String;II)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notificationPriority"    # I
    .param p3, "categoryPriority"    # I

    .prologue
    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->getRankingScoreBase(Ljava/lang/String;II)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const/high16 v2, 0x42340000    # 45.0f

    return v2

    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public increaseScore(Lmeizu/notification/RankingDaily;)F
    .locals 3
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;

    .prologue
    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1}, Lmeizu/notification/INotificationFilterService;->increaseScore(Lmeizu/notification/RankingDaily;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/NotificationFirewallImpl$H;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationFirewallImpl$1;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    return-void
.end method

.method public interceptNotification(Landroid/service/notification/StatusBarNotification;ZZ)Z
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isSystemNotification"    # Z
    .param p3, "isSystemApp"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .local v1, "intercept":Z
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v7

    if-eqz v7, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/notification/CloudNotificationHelper;->getGreenChannelType(Landroid/app/Notification;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v6

    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v7, :cond_2

    if-eqz p2, :cond_3

    .end local v1    # "intercept":Z
    :cond_2
    :goto_0
    return v1

    .restart local v1    # "intercept":Z
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v8, 0x7d0

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    iget-object v7, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_5

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    .local v3, "result":Lmeizu/notification/FilterResult;
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->category:Ljava/lang/String;

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->categoryPriority:I

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->categoryPriority:I

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->notificationPriority:I

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->notificationPriority:I

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->tag:Ljava/lang/String;

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-object v6, v3, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->extras:Landroid/os/Bundle;

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->intercept:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->intercept:Z

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectRanking:Z

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v6, v3, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    iput-boolean v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->score:F

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    iget-object v5, p1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v6, v3, Lmeizu/notification/FilterResult;->score_scale:F

    iput v6, v5, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score_scale:F

    iget-boolean v1, v3, Lmeizu/notification/FilterResult;->intercept:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "intercept":Z
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "result":Lmeizu/notification/FilterResult;
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .restart local v1    # "intercept":Z
    :cond_5
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v4

    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v4    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method


# direct methods
.method static synthetic -get0(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/NotificationFirewallImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/FilterResult;)Lmeizu/notification/FilterResult;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object p1
.end method

.method public offsetScore(Lmeizu/notification/RankingDaily;J)F
    .locals 4
    .param p1, "preDaily"    # Lmeizu/notification/RankingDaily;
    .param p2, "postDate"    # J

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v2, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->offsetScore(Lmeizu/notification/RankingDaily;J)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget v2, p1, Lmeizu/notification/RankingDaily;->score:F

    return v2

    :catch_1
    move-exception v1

    .local v1, "throwable":Ljava/lang/Throwable;
    goto :goto_0
.end method
