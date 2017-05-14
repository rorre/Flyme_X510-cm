.class Lcom/android/server/HallSwitchObserver;
.super Landroid/os/UEventObserver;
.source "HallSwitchObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HallSwitchObserver$1;
    }
.end annotation


# static fields
.field private static final HALL_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hall/state"

.field private static final HALL_SWITCH_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hall"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHallState:I

.field private mHandler:Landroid/os/Handler;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mPmg:Landroid/os/PowerManager;

.field mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/server/HallSwitchObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I

    .line 41
    new-instance v0, Lcom/android/server/HallSwitchObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/HallSwitchObserver$1;-><init>(Lcom/android/server/HallSwitchObserver;)V

    iput-object v0, p0, Lcom/android/server/HallSwitchObserver;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/HallSwitchObserver;->mPmg:Landroid/os/PowerManager;

    .line 59
    iget-object v0, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/HallSwitchObserver;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 60
    const-string/jumbo v0, "DEVPATH=/devices/virtual/switch/hall"

    invoke-virtual {p0, v0}, Lcom/android/server/HallSwitchObserver;->startObserving(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/android/server/HallSwitchObserver;->init()V

    .line 54
    return-void
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/HallSwitchObserver;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 149
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 150
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HallSwitchObserver;->mIWindowManager:Landroid/view/IWindowManager;

    .line 152
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/HallSwitchObserver;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private final declared-synchronized init()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 77
    const/16 v6, 0x8

    :try_start_0
    new-array v0, v6, [C

    .line 79
    .local v0, "buffer":[C
    iget v5, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .local v5, "newState":I
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v6, "/sys/class/switch/hall/state"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "file":Ljava/io/FileReader;
    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 83
    .local v4, "len":I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 84
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 91
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v4    # "len":I
    :goto_0
    :try_start_2
    invoke-direct {p0, v5}, Lcom/android/server/HallSwitchObserver;->update(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 76
    return-void

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "buffer":[C
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "newState":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 85
    .restart local v0    # "buffer":[C
    .restart local v5    # "newState":I
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    sget-object v6, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "This kernel does not have hall switch support"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private final declared-synchronized update(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HallSwitchObserver;->isNormalBoot()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_1

    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/android/server/HallSwitchObserver;->mHallState:I

    .line 138
    iget-object v1, p0, Lcom/android/server/HallSwitchObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 139
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez p1, :cond_2

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    .line 94
    return-void

    .line 142
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method isNormalBoot()Z
    .locals 5

    .prologue
    .line 158
    const-string/jumbo v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "bootReason":Ljava/lang/String;
    const-string/jumbo v2, "HallSwitchObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNormalBoot() bootReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v0, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 161
    .local v1, "ret":Z
    :goto_0
    const-string/jumbo v2, "HallSwitchObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNormalBoot() ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v1

    .line 160
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 67
    sget-object v1, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hall Switch UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    const-string/jumbo v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/HallSwitchObserver;->update(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/server/HallSwitchObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
