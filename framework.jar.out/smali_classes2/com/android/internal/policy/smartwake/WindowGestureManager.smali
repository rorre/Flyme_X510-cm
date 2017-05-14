.class public Lcom/android/internal/policy/smartwake/WindowGestureManager;
.super Ljava/lang/Object;
.source "WindowGestureManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowGestureManager"

.field private static mGestureFileString:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWindowGestureView:Lcom/android/internal/policy/smartwake/WindowGestureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mContext:Landroid/content/Context;

    .line 20
    const-string/jumbo v0, "WindowGestureManager"

    const-string/jumbo v1, "init   -----WindowGestureManager----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0, p1}, Lcom/android/internal/policy/smartwake/WindowGestureManager;->searchGestureFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static getGestureFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    return-object v0
.end method

.method private searchGestureFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 28
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gesture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    aget-object v3, v1, v2

    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private writeOffScreenGestureState(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 64
    :try_start_0
    sget-object v3, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mGestureFileString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gesture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 70
    .local v2, "mWriter":Ljava/io/FileWriter;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 72
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v2, 0x0

    .line 62
    .end local v2    # "mWriter":Ljava/io/FileWriter;
    :cond_1
    return-void

    .line 75
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Can\'t open gesture device"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mWindowGestureView:Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-virtual {v0}, Lcom/android/internal/policy/smartwake/WindowGestureView;->hideView()V

    .line 43
    return-void
.end method

.method public initGestureView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/smartwake/WindowGestureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mWindowGestureView:Lcom/android/internal/policy/smartwake/WindowGestureView;

    .line 46
    return-void
.end method

.method public onSystemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const-string/jumbo v0, "WindowGestureManager"

    const-string/jumbo v1, "-----WindowGestureManager  onSystemReady----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/smartwake/WindowGestureManager;->initGestureView(Landroid/content/Context;)V

    .line 55
    const-string/jumbo v0, "persist.sys.smartwake_switch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 56
    invoke-direct {p0, v3}, Lcom/android/internal/policy/smartwake/WindowGestureManager;->writeOffScreenGestureState(I)V

    .line 51
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/smartwake/WindowGestureManager;->writeOffScreenGestureState(I)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 1
    .param p1, "gesture"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/WindowGestureManager;->mWindowGestureView:Lcom/android/internal/policy/smartwake/WindowGestureView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/smartwake/WindowGestureView;->showView(I)V

    .line 39
    return-void
.end method
