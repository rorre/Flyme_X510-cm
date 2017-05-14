.class public Lcom/android/internal/policy/smartwake/DrawGestureView;
.super Landroid/view/View;
.source "DrawGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/smartwake/DrawGestureView$OnGestureDrawDoneListener;,
        Lcom/android/internal/policy/smartwake/DrawGestureView$1;
    }
.end annotation


# static fields
.field public static final GESTURE_C:I = 0x2

.field public static final GESTURE_E:I = 0x3

.field public static final GESTURE_M:I = 0x4

.field public static final GESTURE_O:I = 0x0

.field public static final GESTURE_W:I = 0x1


# instance fields
.field private final CLEAN:I

.field private final DRAW:I

.field private final SHOW:I

.field private listX:Ljava/lang/String;

.field private listY:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDst:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field mListener:Lcom/android/internal/policy/smartwake/DrawGestureView$OnGestureDrawDoneListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field private mRectIndex:I

.field private mSrc:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/smartwake/DrawGestureView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mRectIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/smartwake/DrawGestureView;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mRectIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/smartwake/DrawGestureView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x12c

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    iput v2, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->SHOW:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->DRAW:I

    .line 34
    iput v3, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->CLEAN:I

    .line 42
    iput-object v5, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mSrc:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mTempRect:Landroid/graphics/Rect;

    .line 48
    iput-object v5, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mRectIndex:I

    .line 143
    new-instance v0, Lcom/android/internal/policy/smartwake/DrawGestureView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/smartwake/DrawGestureView$1;-><init>(Lcom/android/internal/policy/smartwake/DrawGestureView;)V

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    return-void
.end method

.method private calcDstRect()V
    .locals 14

    .prologue
    .line 71
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/android/internal/policy/smartwake/DrawGestureView;->readPoint(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->listX:Ljava/lang/String;

    .line 72
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/internal/policy/smartwake/DrawGestureView;->readPoint(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->listY:Ljava/lang/String;

    .line 73
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->listX:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->listY:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 74
    const/16 v6, 0x438

    .line 75
    .local v6, "minX":I
    const/16 v7, 0x780

    .line 76
    .local v7, "minY":I
    const/4 v4, 0x0

    .line 77
    .local v4, "maxX":I
    const/4 v5, 0x0

    .line 80
    .local v5, "maxY":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->listX:Ljava/lang/String;

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x2

    if-ge v3, v12, :cond_4

    .line 81
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->listX:Ljava/lang/String;

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 82
    .local v8, "tempPointX":I
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->listY:Ljava/lang/String;

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 83
    .local v9, "tempPointY":I
    if-le v6, v8, :cond_0

    move v6, v8

    .line 84
    :cond_0
    if-le v7, v9, :cond_1

    move v7, v9

    .line 85
    :cond_1
    if-ge v4, v8, :cond_2

    move v4, v8

    .line 86
    :cond_2
    if-ge v5, v9, :cond_3

    move v5, v9

    .line 80
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v8    # "tempPointX":I
    .end local v9    # "tempPointY":I
    :cond_4
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iput v6, v12, Landroid/graphics/Rect;->left:I

    .line 89
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iput v7, v12, Landroid/graphics/Rect;->top:I

    .line 90
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iput v4, v12, Landroid/graphics/Rect;->right:I

    .line 91
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 70
    .end local v3    # "i":I
    .end local v4    # "maxX":I
    .end local v5    # "maxY":I
    .end local v6    # "minX":I
    .end local v7    # "minY":I
    :goto_1
    return-void

    .line 93
    :cond_5
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 94
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 95
    .local v11, "wm":Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    .local v10, "width":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 98
    .local v2, "height":I
    div-int/lit8 v12, v2, 0x10

    mul-int/lit8 v1, v12, 0x5

    .line 99
    .local v1, "drawSize":I
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    sub-int v13, v10, v1

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 100
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    sub-int v13, v2, v1

    div-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 101
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v1

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 102
    iget-object v12, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v1

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private getClipRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "paramInt"    # I
    .param p2, "paramRect"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    rem-int/lit8 v0, p1, 0x4

    .line 128
    .local v0, "i":I
    div-int/lit8 v1, p1, 0x4

    .line 129
    .local v1, "j":I
    mul-int/lit16 v2, v0, 0x12c

    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 130
    mul-int/lit16 v2, v1, 0x12c

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 131
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/lit16 v2, v2, 0x12c

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 132
    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/lit16 v2, v2, 0x12c

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 133
    return-object p2
.end method

.method private static getString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 217
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "charset may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method private static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 237
    if-nez p0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initBitmap(I)V
    .locals 2
    .param p1, "gesture"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080607

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108060a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080605

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 118
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080606

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 121
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080604

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readPoint(I)Ljava/lang/String;
    .locals 10
    .param p1, "xy"    # I

    .prologue
    const/4 v9, 0x0

    .line 245
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/smartwake/WindowGestureManager;->getGestureFile()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "fileString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 247
    return-object v9

    .line 251
    :cond_0
    if-nez p1, :cond_1

    .line 252
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "coordinate_x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v5, "points":Ljava/io/File;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 258
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 259
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 260
    .local v4, "length":I
    new-array v0, v4, [B

    .line 261
    .local v0, "buffer":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 263
    const-string/jumbo v7, "UTF-8"

    invoke-static {v0, v7}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "res":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 266
    return-object v6

    .line 254
    .end local v0    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    .end local v5    # "points":Ljava/io/File;
    .end local v6    # "res":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "coordinate_y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "points":Ljava/io/File;
    goto :goto_0

    .line 268
    :cond_2
    return-object v9

    .line 270
    .end local v2    # "fileString":Ljava/lang/String;
    .end local v5    # "points":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Can\'t open gesture device"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    iput-object v1, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 175
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mRectIndex:I

    iget-object v1, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/smartwake/DrawGestureView;->getClipRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mSrc:Landroid/graphics/Rect;

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mDst:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 173
    :cond_0
    return-void
.end method

.method public setOnGestureDrawDoneListener(Lcom/android/internal/policy/smartwake/DrawGestureView$OnGestureDrawDoneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/policy/smartwake/DrawGestureView$OnGestureDrawDoneListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mListener:Lcom/android/internal/policy/smartwake/DrawGestureView$OnGestureDrawDoneListener;

    .line 188
    return-void
.end method

.method public showView(I)V
    .locals 4
    .param p1, "gesture"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/policy/smartwake/DrawGestureView;->initBitmap(I)V

    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/smartwake/DrawGestureView;->calcDstRect()V

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/smartwake/DrawGestureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    return-void
.end method
