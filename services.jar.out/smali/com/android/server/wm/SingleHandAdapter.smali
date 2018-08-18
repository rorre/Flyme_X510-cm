.class final Lcom/android/server/wm/SingleHandAdapter;
.super Ljava/lang/Object;
.source "SingleHandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final INITIAL_SCALE:F = 0.75f

.field public static final KEY_SINGLE_HAND_SCREEN_ZOOM:Ljava/lang/String; = "single_hand_screen_zoom"

.field private static final MSG_CLEAR_WALLPAPER:I = 0x1

.field static final TAG:Ljava/lang/String; = "SingleHandAdapter"

.field private static isSingleHandEnabled:Z

.field static final mLock:Ljava/lang/Object;

.field static scaleWallpaper:Landroid/graphics/Bitmap;


# instance fields
.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mCurMode:Ljava/lang/String;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mHandler:Landroid/os/Handler;

.field private final mPaperHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSingleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/SingleHandAdapter;->isSingleHandEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/SingleHandAdapter;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/SingleHandAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/SingleHandAdapter;)Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/SingleHandAdapter;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/SingleHandAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wm/SingleHandAdapter;->isSingleHandEnabled:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/wm/SingleHandAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/SingleHandAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandAdapter;->updateBlur()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/SingleHandAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandAdapter;->updateScaleWallpaperForBlur()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/SingleHandAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandAdapter;->updateSingleHandMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/SingleHandAdapter;->mLock:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SingleHandAdapter;->isSingleHandEnabled:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mSingleHandlers:Ljava/util/ArrayList;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mCurMode:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 80
    iput-object p2, p0, Lcom/android/server/wm/SingleHandAdapter;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter;->mContext:Landroid/content/Context;

    .line 82
    iput-object p3, p0, Lcom/android/server/wm/SingleHandAdapter;->mUiHandler:Landroid/os/Handler;

    .line 83
    iput-object p4, p0, Lcom/android/server/wm/SingleHandAdapter;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 86
    new-instance v0, Lcom/android/server/wm/SingleHandAdapter$1;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandAdapter;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/SingleHandAdapter$1;-><init>(Lcom/android/server/wm/SingleHandAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mPaperHandler:Landroid/os/Handler;

    .line 99
    invoke-direct {p0}, Lcom/android/server/wm/SingleHandAdapter;->updateBlur()V

    .line 79
    return-void
.end method

.method private updateBlur()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method private updateScaleWallpaperForBlur()V
    .locals 21

    .prologue
    .line 242
    sget-object v20, Lcom/android/server/wm/SingleHandAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v20

    .line 244
    :try_start_0
    sget-object v2, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 245
    sget-object v2, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 250
    const-string/jumbo v2, "SingleHandAdapter"

    const-string/jumbo v3, "getBlurBitmap return null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v20

    .line 251
    return-void

    .line 253
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    float-to-int v10, v2

    .line 254
    .local v10, "wwidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    float-to-int v14, v2

    .line 255
    .local v14, "hheight":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    .line 256
    sget-object v2, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 257
    const-string/jumbo v2, "SingleHandAdapter"

    const-string/jumbo v3, "createBitmap return null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v20

    .line 258
    return-void

    .line 260
    :cond_2
    :try_start_2
    new-instance v1, Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 262
    .local v6, "p":Landroid/graphics/Paint;
    const/high16 v2, -0x6e000000

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/SingleHandAdapter;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 266
    mul-int v2, v10, v14

    new-array v8, v2, [I

    .line 267
    .local v8, "inPixels":[I
    sget-object v7, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 269
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v14, :cond_4

    .line 270
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v10, :cond_3

    .line 271
    mul-int v2, v19, v10

    add-int v15, v2, v18

    .line 272
    .local v15, "index":I
    aget v2, v8, v15

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    aput v2, v8, v15

    .line 270
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 269
    .end local v15    # "index":I
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 275
    .end local v18    # "x":I
    :cond_4
    sget-object v7, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SingleHandAdapter;->mSingleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/SingleHandAdapter;->mSingleHandlers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "overlay$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    .line 280
    .local v16, "overlay":Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->onBlurWallpaperChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 242
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "p":Landroid/graphics/Paint;
    .end local v8    # "inPixels":[I
    .end local v10    # "wwidth":I
    .end local v14    # "hheight":I
    .end local v16    # "overlay":Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
    .end local v17    # "overlay$iterator":Ljava/util/Iterator;
    .end local v19    # "y":I
    :catchall_0
    move-exception v2

    monitor-exit v20

    throw v2

    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v6    # "p":Landroid/graphics/Paint;
    .restart local v8    # "inPixels":[I
    .restart local v10    # "wwidth":I
    .restart local v14    # "hheight":I
    .restart local v19    # "y":I
    :cond_5
    monitor-exit v20

    .line 241
    return-void
.end method

.method private updateSingleHandMode()V
    .locals 7

    .prologue
    .line 148
    iget-object v4, p0, Lcom/android/server/wm/SingleHandAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 149
    const-string/jumbo v5, "single_hand_mode"

    .line 148
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "SingleHandAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSingleHandMode value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/SingleHandAdapter;->mCurMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez v3, :cond_0

    .line 152
    const-string/jumbo v3, ""

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SingleHandAdapter;->mCurMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    return-void

    .line 158
    :cond_1
    iput-object v3, p0, Lcom/android/server/wm/SingleHandAdapter;->mCurMode:Ljava/lang/String;

    .line 160
    sget-object v5, Lcom/android/server/wm/SingleHandAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 161
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/SingleHandAdapter;->mSingleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 162
    iget-object v4, p0, Lcom/android/server/wm/SingleHandAdapter;->mSingleHandlers:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "overlay$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    .line 163
    .local v1, "overlay":Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
    invoke-virtual {v1}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;->dismissLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    .end local v1    # "overlay":Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;
    .end local v2    # "overlay$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 165
    .restart local v2    # "overlay$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/SingleHandAdapter;->mSingleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 167
    .end local v2    # "overlay$iterator":Ljava/util/Iterator;
    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_1
    monitor-exit v5

    .line 147
    return-void

    .line 168
    :cond_5
    :try_start_2
    const-string/jumbo v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 169
    .local v0, "left":Z
    iget-object v4, p0, Lcom/android/server/wm/SingleHandAdapter;->mSingleHandlers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;

    invoke-direct {v6, p0, v0}, Lcom/android/server/wm/SingleHandAdapter$SingleHandHandle;-><init>(Lcom/android/server/wm/SingleHandAdapter;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public registerLocked()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "single_hand_mode"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/SingleHandAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SingleHandAdapter$2;-><init>(Lcom/android/server/wm/SingleHandAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method
