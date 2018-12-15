.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$1;,
        Lcom/android/internal/widget/ViewPager$2;,
        Lcom/android/internal/widget/ViewPager$3;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$ItemInfo;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SCROLL_X:I = 0x1000000

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private final mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private final mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private final mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private final mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftIncr:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private final mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ViewPager;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 77
    const v1, 0x10100b3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 76
    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 98
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 105
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 205
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 333
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 338
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 113
    new-instance v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v2}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 119
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 120
    iput-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 121
    iput-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 134
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 139
    const v2, -0x800001

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 140
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 149
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 167
    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 191
    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 223
    new-instance v2, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 230
    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 340
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 341
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->setDescendantFocusability(I)V

    .line 342
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->setFocusable(Z)V

    .line 344
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 345
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 346
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 348
    .local v1, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 349
    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    .line 350
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    .line 351
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 352
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 354
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    .line 355
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    .line 356
    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 359
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->setImportantForAccessibility(I)V

    .line 337
    :cond_0
    return-void
.end method

.method private calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .prologue
    .line 1108
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 1109
    .local v1, "N":I
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v11

    .line 1110
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1113
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1114
    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1117
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1118
    const/4 v5, 0x0

    .line 1119
    .local v5, "itemIndex":I
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1120
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1121
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1122
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1123
    add-int/lit8 v5, v5, 0x1

    .line 1124
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_2

    .line 1110
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "marginOffset":F
    goto :goto_0

    .line 1127
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1130
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1131
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1134
    :cond_2
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1135
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1120
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1137
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1138
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1139
    .restart local v5    # "itemIndex":I
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1140
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1141
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1142
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1143
    add-int/lit8 v5, v5, -0x1

    .line 1144
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_5

    .line 1147
    :cond_4
    :goto_6
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1150
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1151
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1154
    :cond_5
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1155
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1140
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1161
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1162
    .local v4, "itemCount":I
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1163
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1164
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1165
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    .line 1166
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    .line 1165
    :goto_8
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1169
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1170
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1171
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1172
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1164
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1166
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1174
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1175
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1176
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1169
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1179
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1180
    iget v12, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1183
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1184
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1185
    .restart local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1186
    iget-object v12, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1188
    :cond_c
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1189
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1191
    :cond_d
    iput v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1192
    iget v12, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1183
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1107
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_e
    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2752
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1757
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1758
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1760
    invoke-direct {p0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1761
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1762
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v3

    .line 1763
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v4

    .line 1764
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1765
    .local v5, "x":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1766
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1767
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1770
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1771
    const/4 v0, 0x0

    .end local v2    # "needPopulate":Z
    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1772
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1773
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1774
    const/4 v2, 0x1

    .line 1775
    .local v2, "needPopulate":Z
    iput-boolean v7, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1771
    .end local v2    # "needPopulate":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    move v2, v7

    .line 1757
    goto :goto_0

    .line 1778
    .restart local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 1779
    if-eqz p1, :cond_6

    .line 1780
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1756
    :cond_5
    :goto_2
    return-void

    .line 1782
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 8
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    .line 2225
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    if-le v4, v6, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    if-le v4, v6, :cond_2

    .line 2226
    if-gez p3, :cond_1

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    :goto_0
    sub-int v2, p1, v4

    .line 2232
    .local v2, "targetPage":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2233
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2234
    .local v0, "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2237
    .local v1, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v4, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 2240
    .end local v0    # "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    return v2

    .end local v2    # "targetPage":I
    :cond_1
    move v4, v5

    .line 2226
    goto :goto_0

    .line 2228
    :cond_2
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2229
    .local v3, "truncator":F
    :goto_2
    int-to-float v4, p1

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    int-to-float v6, v6

    add-float v7, p2, v3

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_1

    .line 2228
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    .restart local v3    # "truncator":F
    goto :goto_2
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1793
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1794
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1795
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1794
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "layerType":I
    goto :goto_1

    .line 1791
    .end local v2    # "layerType":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2356
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2357
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2359
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2360
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2361
    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2355
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2532
    if-nez p1, :cond_0

    .line 2533
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2535
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_1

    .line 2536
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2537
    return-object p1

    .line 2539
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2540
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2541
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2542
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2544
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2545
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_2

    move-object v0, v1

    .line 2546
    check-cast v0, Landroid/view/ViewGroup;

    .line 2547
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2548
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2549
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2550
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2552
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2554
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_2
    return-object p1
.end method

.method private getLeftEdgeForItem(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 565
    .local v0, "info":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    .line 566
    const/4 v4, 0x0

    return v4

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v3

    .line 570
    .local v3, "width":I
    int-to-float v4, v3

    .line 571
    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 570
    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 573
    .local v2, "scaledOffset":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    int-to-float v4, v3

    iget v5, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 575
    .local v1, "itemWidth":I
    const/high16 v4, 0x1000000

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    return v4

    .line 577
    .end local v1    # "itemWidth":I
    :cond_1
    return v2
.end method

.method private getPaddedWidth()I
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollStart()I
    .locals 2

    .prologue
    .line 2209
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    const/high16 v1, 0x1000000

    sub-int v0, v1, v0

    return v0

    .line 2212
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    return v0
.end method

.method private infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 19

    .prologue
    .line 2162
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v15

    .line 2163
    .local v15, "startOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v16

    .line 2164
    .local v16, "width":I
    if-lez v16, :cond_3

    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 2165
    .local v13, "scrollOffset":F
    :goto_0
    if-lez v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 2167
    .local v11, "marginOffset":F
    :goto_1
    const/4 v9, -0x1

    .line 2168
    .local v9, "lastPos":I
    const/4 v8, 0x0

    .line 2169
    .local v8, "lastOffset":F
    const/4 v10, 0x0

    .line 2170
    .local v10, "lastWidth":F
    const/4 v4, 0x1

    .line 2171
    .local v4, "first":Z
    const/4 v7, 0x0

    .line 2173
    .local v7, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2174
    .local v2, "N":I
    const/4 v5, 0x0

    .end local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_7

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2178
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v4, :cond_0

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 2180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2181
    add-float v17, v8, v10

    add-float v17, v17, v11

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2182
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v17, v0

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2184
    add-int/lit8 v5, v5, -0x1

    .line 2187
    :cond_0
    iget v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2188
    .local v12, "offset":F
    move v14, v12

    .line 2189
    .local v14, "startBound":F
    if-nez v4, :cond_1

    cmpl-float v17, v13, v12

    if-ltz v17, :cond_5

    .line 2190
    :cond_1
    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v17, v0

    add-float v17, v17, v12

    add-float v3, v17, v11

    .line 2191
    .local v3, "endBound":F
    cmpg-float v17, v13, v3

    if-ltz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 2192
    :cond_2
    return-object v6

    .line 2164
    .end local v2    # "N":I
    .end local v3    # "endBound":F
    .end local v4    # "first":Z
    .end local v5    # "i":I
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v8    # "lastOffset":F
    .end local v9    # "lastPos":I
    .end local v10    # "lastWidth":F
    .end local v11    # "marginOffset":F
    .end local v12    # "offset":F
    .end local v13    # "scrollOffset":F
    .end local v14    # "startBound":F
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "scrollOffset":F
    goto/16 :goto_0

    .line 2165
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "marginOffset":F
    goto :goto_1

    .line 2195
    .restart local v2    # "N":I
    .restart local v4    # "first":Z
    .restart local v5    # "i":I
    .restart local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v8    # "lastOffset":F
    .restart local v9    # "lastPos":I
    .restart local v10    # "lastWidth":F
    .restart local v12    # "offset":F
    .restart local v14    # "startBound":F
    :cond_5
    return-object v7

    .line 2198
    .restart local v3    # "endBound":F
    :cond_6
    const/4 v4, 0x0

    .line 2199
    iget v9, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2200
    move v8, v12

    .line 2201
    iget v10, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2202
    move-object v7, v6

    .line 2174
    .local v7, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2205
    .end local v3    # "endBound":F
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "offset":F
    .end local v14    # "startBound":F
    :cond_7
    return-object v7
.end method

.method private isGutterDrag(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1788
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    cmpg-float v2, p2, v4

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 2341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2342
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2343
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 2346
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2347
    .local v0, "newPointerIndex":I
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2348
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2349
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 2350
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2340
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 11
    .param p1, "scrollX"    # I

    .prologue
    const/4 v10, 0x0

    .line 1643
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1644
    iput-boolean v10, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1645
    const/4 v8, 0x0

    invoke-virtual {p0, v10, v8, v10}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1646
    iget-boolean v8, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-nez v8, :cond_0

    .line 1647
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 1648
    const-string/jumbo v9, "onPageScrolled did not call superclass implementation"

    .line 1647
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1650
    :cond_0
    return v10

    .line 1655
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1656
    const/high16 v8, 0x1000000

    sub-int v5, v8, p1

    .line 1661
    .local v5, "scrollStart":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v1

    .line 1662
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v6

    .line 1663
    .local v6, "width":I
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    add-int v7, v6, v8

    .line 1664
    .local v7, "widthWithMargin":I
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float v2, v8, v9

    .line 1665
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1666
    .local v0, "currentPage":I
    int-to-float v8, v5

    int-to-float v9, v6

    div-float/2addr v8, v9

    iget v9, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    .line 1667
    iget v9, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    .line 1666
    div-float v4, v8, v9

    .line 1668
    .local v4, "pageOffset":F
    int-to-float v8, v7

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1670
    .local v3, "offsetPixels":I
    iput-boolean v10, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1671
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1672
    iget-boolean v8, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-nez v8, :cond_3

    .line 1673
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 1674
    const-string/jumbo v9, "onPageScrolled did not call superclass implementation"

    .line 1673
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1658
    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "scrollStart":I
    .end local v6    # "width":I
    .end local v7    # "widthWithMargin":I
    :cond_2
    move v5, p1

    .restart local v5    # "scrollStart":I
    goto :goto_0

    .line 1676
    .restart local v0    # "currentPage":I
    .restart local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v2    # "marginOffset":F
    .restart local v3    # "offsetPixels":I
    .restart local v4    # "pageOffset":F
    .restart local v6    # "width":I
    .restart local v7    # "widthWithMargin":I
    :cond_3
    const/4 v8, 0x1

    return v8
.end method

.method private performDrag(F)Z
    .locals 21
    .param p1, "x"    # F

    .prologue
    .line 2078
    const/4 v9, 0x0

    .line 2080
    .local v9, "needsInvalidate":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v18

    .line 2081
    .local v18, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v4, v19, p1

    .line 2082
    .local v4, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2086
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2087
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2088
    .local v15, "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2095
    .local v7, "endEdge":Landroid/widget/EdgeEffect;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v10, v19, v4

    .line 2097
    .local v10, "nextScrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2098
    const/high16 v19, 0x4b800000    # 1.6777216E7f

    sub-float v12, v19, v10

    .line 2104
    .local v12, "scrollStart":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2105
    .local v16, "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v13, 0x1

    .line 2106
    .local v13, "startAbsolute":Z
    :goto_2
    if-eqz v13, :cond_4

    .line 2107
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v14, v19, v20

    .line 2113
    .local v14, "startBound":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2114
    .local v8, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/4 v5, 0x1

    .line 2115
    .local v5, "endAbsolute":Z
    :goto_4
    if-eqz v5, :cond_6

    .line 2116
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v19, v20

    .line 2122
    .local v6, "endBound":F
    :goto_5
    cmpg-float v19, v12, v14

    if-gez v19, :cond_7

    .line 2123
    if-eqz v13, :cond_0

    .line 2124
    sub-float v11, v14, v12

    .line 2125
    .local v11, "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2126
    const/4 v9, 0x1

    .line 2128
    .end local v11    # "over":F
    :cond_0
    move v3, v14

    .line 2142
    .local v3, "clampedScrollStart":F
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2143
    const/high16 v19, 0x4b800000    # 1.6777216E7f

    sub-float v17, v19, v3

    .line 2149
    .local v17, "targetScrollX":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v17, v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2151
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 2152
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 2154
    return v9

    .line 2090
    .end local v3    # "clampedScrollStart":F
    .end local v5    # "endAbsolute":Z
    .end local v6    # "endBound":F
    .end local v7    # "endEdge":Landroid/widget/EdgeEffect;
    .end local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "nextScrollX":F
    .end local v12    # "scrollStart":F
    .end local v13    # "startAbsolute":Z
    .end local v14    # "startBound":F
    .end local v15    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "targetScrollX":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2091
    .restart local v15    # "startEdge":Landroid/widget/EdgeEffect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .restart local v7    # "endEdge":Landroid/widget/EdgeEffect;
    goto/16 :goto_0

    .line 2100
    .restart local v10    # "nextScrollX":F
    :cond_2
    move v12, v10

    .restart local v12    # "scrollStart":F
    goto/16 :goto_1

    .line 2105
    .restart local v16    # "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 2109
    .restart local v13    # "startAbsolute":Z
    :cond_4
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    move/from16 v20, v0

    mul-float v14, v19, v20

    .restart local v14    # "startBound":F
    goto/16 :goto_3

    .line 2114
    .restart local v8    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 2118
    .restart local v5    # "endAbsolute":Z
    :cond_6
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    move/from16 v20, v0

    mul-float v6, v19, v20

    .restart local v6    # "endBound":F
    goto/16 :goto_5

    .line 2129
    :cond_7
    cmpl-float v19, v12, v6

    if-lez v19, :cond_9

    .line 2130
    if-eqz v5, :cond_8

    .line 2131
    sub-float v11, v12, v6

    .line 2132
    .restart local v11    # "over":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2133
    const/4 v9, 0x1

    .line 2135
    .end local v11    # "over":F
    :cond_8
    move v3, v6

    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_6

    .line 2137
    .end local v3    # "clampedScrollStart":F
    :cond_9
    move v3, v12

    .restart local v3    # "clampedScrollStart":F
    goto/16 :goto_6

    .line 2145
    :cond_a
    move/from16 v17, v3

    .restart local v17    # "targetScrollX":F
    goto/16 :goto_7
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1466
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1483
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 1484
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_3

    iget v0, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1486
    .local v9, "scrollOffset":F
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 1485
    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1487
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_1

    .line 1488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1489
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1465
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_1
    :goto_1
    return-void

    .line 1467
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1468
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1470
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v13

    .line 1471
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1472
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1474
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1475
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1478
    .local v5, "newDuration":I
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1479
    .local v11, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1480
    iget v2, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v3, v2

    .line 1479
    const/4 v2, 0x0

    .line 1480
    const/4 v4, 0x0

    .line 1479
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 1484
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    .restart local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "scrollOffset":F
    goto :goto_0
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 437
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 439
    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 440
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->removeViewAt(I)V

    .line 441
    add-int/lit8 v1, v1, -0x1

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2071
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2072
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2073
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2070
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    move-result v0

    .line 540
    .local v0, "destX":I
    if-eqz p2, :cond_2

    .line 541
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 543
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 546
    :cond_0
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 550
    :cond_2
    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_3

    .line 551
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 553
    :cond_3
    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_4

    .line 554
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 557
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 558
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 559
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x0

    .line 370
    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    if-ne v1, p1, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 375
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v1, :cond_2

    .line 377
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 369
    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2366
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2367
    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2365
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1092
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1093
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1094
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1098
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1099
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1100
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1101
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1096
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1103
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1091
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2581
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2583
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2585
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2586
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2587
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2588
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2589
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2590
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2591
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2586
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2602
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    .line 2604
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 2607
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2608
    return-void

    .line 2610
    :cond_3
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 2611
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isInTouchMode()Z

    move-result v5

    .line 2610
    if-eqz v5, :cond_4

    .line 2611
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2614
    :cond_4
    if-eqz p1, :cond_5

    .line 2615
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    :cond_5
    return-void

    .line 2612
    :cond_6
    return-void
.end method

.method addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 807
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .line 808
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 809
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 810
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 811
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    :goto_0
    return-object v0

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2628
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2629
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2630
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2631
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2632
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2633
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2628
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2624
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1285
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1286
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1288
    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1289
    .local v0, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1290
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1291
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1292
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1294
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1295
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1284
    :goto_0
    return-void

    .line 1297
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2466
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2467
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2468
    const/4 v1, 0x0

    .line 2492
    .end local v1    # "currentFocused":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2494
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2496
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2497
    if-ne p1, v11, :cond_8

    .line 2500
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2501
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2502
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2503
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v2

    .line 2525
    .end local v0    # "currLeft":I
    .end local v2    # "handled":Z
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2526
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ViewPager;->playSoundEffect(I)V

    .line 2528
    :cond_2
    return v2

    .line 2469
    .end local v4    # "nextFocused":Landroid/view/View;
    .restart local v1    # "currentFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2470
    const/4 v3, 0x0

    .line 2471
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2473
    if-ne v6, p0, :cond_5

    .line 2474
    const/4 v3, 0x1

    .line 2478
    :cond_4
    if-nez v3, :cond_0

    .line 2480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2481
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2482
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2484
    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2483
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2472
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2486
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string/jumbo v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2487
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2486
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const/4 v1, 0x0

    .local v1, "currentFocused":Landroid/view/View;
    goto/16 :goto_0

    .line 2505
    .end local v1    # "currentFocused":Landroid/view/View;
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 2507
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2510
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2511
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2512
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2513
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2515
    .local v2, "handled":Z
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2518
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2520
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2521
    .local v2, "handled":Z
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2523
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2408
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2409
    check-cast v7, Landroid/view/ViewGroup;

    .line 2410
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2411
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2412
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2414
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2416
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2417
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2418
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2419
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v4, v0, v2

    .line 2420
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v5, v0, v2

    .line 2419
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 2417
    if-eqz v0, :cond_0

    .line 2421
    const/4 v0, 0x1

    return v0

    .line 2414
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2426
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2381
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez v4, :cond_0

    .line 2382
    return v3

    .line 2385
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 2386
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 2387
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    .line 2388
    int-to-float v4, v1

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 2389
    :cond_2
    if-lez p1, :cond_4

    .line 2390
    int-to-float v4, v1

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 2392
    :cond_4
    return v3
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2684
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1618
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1619
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1620
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1621
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1622
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1624
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1625
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1627
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1628
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1629
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1634
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 1635
    return-void

    .line 1639
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1617
    return-void
.end method

.method dataSetChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 822
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v10}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 823
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 824
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    if-ge v10, v11, :cond_2

    .line 825
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v10, v0, :cond_1

    const/4 v7, 0x1

    .line 826
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 828
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 829
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 830
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 831
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v11, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 833
    .local v9, "newPos":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 829
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 825
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "needPopulate":Z
    goto :goto_0

    .line 824
    .end local v7    # "needPopulate":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "needPopulate":Z
    goto :goto_0

    .line 837
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_3
    const/4 v10, -0x2

    if-ne v9, v10, :cond_5

    .line 838
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 839
    add-int/lit8 v3, v3, -0x1

    .line 841
    if-nez v5, :cond_4

    .line 842
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v10, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 843
    const/4 v5, 0x1

    .line 846
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v11, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v12, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 847
    const/4 v7, 0x1

    .line 849
    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v11, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_0

    .line 851
    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 852
    const/4 v7, 0x1

    goto :goto_2

    .line 857
    :cond_5
    iget v10, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-eq v10, v9, :cond_0

    .line 858
    iget v10, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_6

    .line 860
    move v8, v9

    .line 863
    :cond_6
    iput v9, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 864
    const/4 v7, 0x1

    goto :goto_2

    .line 868
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_7
    if-eqz v5, :cond_8

    .line 869
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v10, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 872
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 874
    if-eqz v7, :cond_b

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 877
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_a

    .line 878
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 879
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 880
    .local v6, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    .line 881
    const/4 v10, 0x0

    iput v10, v6, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 877
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 885
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v13, v10}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 819
    .end local v2    # "childCount":I
    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2432
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 743
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 744
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 745
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2245
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2246
    const/4 v1, 0x0

    .line 2248
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getOverScrollMode()I

    move-result v2

    .line 2249
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    .line 2250
    if-ne v2, v6, :cond_4

    .line 2251
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2252
    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2254
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2255
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2257
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2258
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2259
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2260
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 2261
    .local v1, "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2263
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2265
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2266
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2268
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2269
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2270
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v0, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2271
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2272
    .restart local v1    # "needsInvalidate":Z
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2279
    .end local v0    # "height":I
    .end local v1    # "needsInvalidate":Z
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2281
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2244
    :cond_3
    return-void

    .line 2275
    .local v1, "needsInvalidate":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 2276
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 730
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 732
    .local v0, "marginDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 732
    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 729
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2444
    const/4 v0, 0x0

    .line 2445
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2446
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2462
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v0

    .line 2448
    .restart local v0    # "handled":Z
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2451
    .local v0, "handled":Z
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2454
    .local v0, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2455
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2456
    .local v0, "handled":Z
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2457
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2446
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2674
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2689
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2679
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 618
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 619
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v1, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 620
    .local v1, "result":I
    return v1

    .line 618
    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1311
    .local v0, "itemInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1335
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 1336
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 1339
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1337
    :cond_0
    return-object v2

    .line 1341
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v1

    return-object v1
.end method

.method infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1325
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1326
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
    return-object v1

    .line 1324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1330
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1346
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1347
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1348
    return-object v1

    .line 1345
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1351
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1356
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1355
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 366
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 364
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2287
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2290
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v15, :cond_2

    .line 2291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v12

    .line 2292
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v13

    .line 2294
    .local v13, "width":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 2295
    .local v8, "marginOffset":F
    const/4 v4, 0x0

    .line 2296
    .local v4, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2297
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v9, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2299
    .local v9, "offset":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2300
    .local v3, "itemCount":I
    iget v1, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2301
    .local v1, "firstPos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v16, v3, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iget v6, v15, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2302
    .local v6, "lastPos":I
    move v10, v1

    .local v10, "pos":I
    :goto_0
    if-ge v10, v6, :cond_2

    .line 2303
    :goto_1
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v15, :cond_0

    if-ge v4, v3, :cond_0

    .line 2304
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_1

    .line 2309
    :cond_0
    iget v15, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v15, :cond_3

    .line 2310
    iget v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2311
    .local v5, "itemOffset":F
    iget v14, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2318
    .local v14, "widthFactor":F
    :goto_2
    int-to-float v15, v13

    mul-float v11, v5, v15

    .line 2319
    .local v11, "scaledOffset":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2320
    const/high16 v15, 0x4b800000    # 1.6777216E7f

    sub-float v7, v15, v11

    .line 2325
    .local v7, "left":F
    :goto_3
    add-float v15, v5, v14

    add-float v9, v15, v8

    .line 2327
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    int-to-float v0, v12

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1

    .line 2328
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v0, v7

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    move/from16 v17, v0

    .line 2329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v7

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    move/from16 v19, v0

    .line 2328
    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2333
    :cond_1
    add-int v15, v12, v13

    int-to-float v15, v15

    cmpl-float v15, v7, v15

    if-lez v15, :cond_5

    .line 2286
    .end local v1    # "firstPos":I
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v3    # "itemCount":I
    .end local v4    # "itemIndex":I
    .end local v5    # "itemOffset":F
    .end local v6    # "lastPos":I
    .end local v7    # "left":F
    .end local v8    # "marginOffset":F
    .end local v9    # "offset":F
    .end local v10    # "pos":I
    .end local v11    # "scaledOffset":F
    .end local v12    # "scrollX":I
    .end local v13    # "width":I
    .end local v14    # "widthFactor":F
    :cond_2
    return-void

    .line 2313
    .restart local v1    # "firstPos":I
    .restart local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v3    # "itemCount":I
    .restart local v4    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "pos":I
    .restart local v12    # "scrollX":I
    .restart local v13    # "width":I
    :cond_3
    move v5, v9

    .line 2314
    .restart local v5    # "itemOffset":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v15, v10}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v14

    .restart local v14    # "widthFactor":F
    goto :goto_2

    .line 2322
    .restart local v11    # "scaledOffset":F
    :cond_4
    int-to-float v15, v13

    mul-float/2addr v15, v14

    add-float v7, v11, v15

    .restart local v7    # "left":F
    goto :goto_3

    .line 2302
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2695
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2697
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2698
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2700
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2702
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2703
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2694
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2709
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2711
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2712
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2714
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2715
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2716
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2719
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2720
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2721
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2708
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1810
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1813
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1815
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1816
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1817
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1818
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1820
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1825
    :cond_2
    if-eqz v6, :cond_4

    .line 1826
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1828
    const/4 v0, 0x1

    return v0

    .line 1830
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1832
    const/4 v0, 0x0

    return v0

    .line 1836
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1931
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1932
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1934
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1940
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1847
    :sswitch_0
    iget v7, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1848
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1853
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1854
    .local v9, "pointerIndex":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1855
    .local v10, "x":F
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1856
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1857
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1858
    .local v12, "y":F
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1861
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1869
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_b

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1872
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1873
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1874
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1876
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1886
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1888
    invoke-direct {p0, v10}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1889
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 1862
    :cond_9
    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 1861
    if-eqz v0, :cond_7

    .line 1864
    iput v10, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1865
    iput v12, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1867
    const/4 v0, 0x0

    return v0

    .line 1875
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 1878
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    .line 1884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    goto :goto_2

    .line 1900
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1902
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1905
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1906
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1907
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1909
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1911
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1913
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1914
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    goto/16 :goto_0

    .line 1916
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 1927
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1836
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 31
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v10

    .line 1497
    .local v10, "count":I
    sub-int v25, p4, p2

    .line 1498
    .local v25, "width":I
    sub-int v12, p5, p3

    .line 1499
    .local v12, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v19

    .line 1500
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v21

    .line 1501
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v20

    .line 1502
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v18

    .line 1503
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v22

    .line 1505
    .local v22, "scrollX":I
    const/4 v11, 0x0

    .line 1509
    .local v11, "decorCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v10, :cond_1

    .line 1510
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1511
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 1512
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1513
    .local v17, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1514
    .local v6, "childLeft":I
    const/4 v8, 0x0

    .line 1515
    .local v8, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1516
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v14, v27, 0x7

    .line 1517
    .local v14, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v27, v0

    and-int/lit8 v24, v27, 0x70

    .line 1518
    .local v24, "vgrav":I
    packed-switch v14, :pswitch_data_0

    .line 1520
    :pswitch_0
    move/from16 v6, v19

    .line 1535
    :goto_1
    sparse-switch v24, :sswitch_data_0

    .line 1537
    move/from16 v8, v21

    .line 1552
    :goto_2
    add-int v6, v6, v22

    .line 1554
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v27, v27, v6

    .line 1555
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v8

    .line 1553
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1556
    add-int/lit8 v11, v11, 0x1

    .line 1509
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1523
    .restart local v6    # "childLeft":I
    .restart local v8    # "childTop":I
    .restart local v14    # "hgrav":I
    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v24    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1524
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v19, v19, v27

    .line 1525
    goto :goto_1

    .line 1527
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v27, v25, v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 1531
    :pswitch_3
    sub-int v27, v25, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v6, v27, v28

    .line 1532
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    add-int v20, v20, v27

    .line 1533
    goto :goto_1

    .line 1540
    :sswitch_0
    move/from16 v8, v21

    .line 1541
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v21, v21, v27

    .line 1542
    goto :goto_2

    .line 1544
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v27, v12, v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    .line 1548
    :sswitch_2
    sub-int v27, v12, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    sub-int v8, v27, v28

    .line 1549
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v18, v18, v27

    .line 1550
    goto :goto_2

    .line 1561
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    .end local v14    # "hgrav":I
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v24    # "vgrav":I
    :cond_1
    sub-int v27, v25, v19

    sub-int v9, v27, v20

    .line 1563
    .local v9, "childWidth":I
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v10, :cond_6

    .line 1564
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1565
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 1563
    :cond_2
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1569
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1570
    .restart local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_2

    .line 1574
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v16

    .line 1575
    .local v16, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v16, :cond_2

    .line 1579
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 1582
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1584
    int-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1585
    const/high16 v28, 0x40000000    # 2.0f

    .line 1583
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 1587
    .local v26, "widthSpec":I
    sub-int v27, v12, v21

    sub-int v27, v27, v18

    .line 1588
    const/high16 v28, 0x40000000    # 2.0f

    .line 1586
    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1589
    .local v13, "heightSpec":I
    move/from16 v0, v26

    invoke-virtual {v5, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1592
    .end local v13    # "heightSpec":I
    .end local v26    # "widthSpec":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1593
    .local v7, "childMeasuredWidth":I
    int-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1595
    .local v23, "startOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 1596
    const/high16 v27, 0x1000000

    sub-int v27, v27, v20

    sub-int v27, v27, v23

    sub-int v6, v27, v7

    .line 1601
    .restart local v6    # "childLeft":I
    :goto_5
    move/from16 v8, v21

    .line 1602
    .restart local v8    # "childTop":I
    add-int v27, v6, v7

    .line 1603
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v8

    .line 1602
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v6, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_4

    .line 1598
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    :cond_5
    add-int v6, v19, v23

    .restart local v6    # "childLeft":I
    goto :goto_5

    .line 1606
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childMeasuredWidth":I
    .end local v16    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v17    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v23    # "startOffset":I
    :cond_6
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .line 1607
    sub-int v27, v12, v18

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .line 1608
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    .line 1610
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 1613
    :cond_7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1495
    return-void

    .line 1518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1535
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1367
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v21

    .line 1368
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v22

    .line 1367
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1371
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1372
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1376
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1383
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v16

    .line 1384
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1385
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1386
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1387
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1388
    .local v13, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1389
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1390
    .local v11, "hgrav":I
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1391
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1392
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1393
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1394
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1396
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1397
    const/high16 v18, 0x40000000    # 2.0f

    .line 1402
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1403
    .local v19, "widthSize":I
    move v9, v4

    .line 1404
    .local v9, "heightSize":I
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1405
    const/high16 v18, 0x40000000    # 2.0f

    .line 1406
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1407
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1410
    :cond_3
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1411
    const/high16 v8, 0x40000000    # 2.0f

    .line 1412
    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1413
    iget v9, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    .line 1416
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1417
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1418
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1420
    if-eqz v7, :cond_9

    .line 1421
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1384
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1393
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "consumeVertical":Z
    goto :goto_1

    .line 1394
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "consumeHorizontal":Z
    goto :goto_2

    .line 1398
    :cond_8
    if-eqz v6, :cond_2

    .line 1399
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1422
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1423
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1429
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1430
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1433
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1435
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v16

    .line 1439
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1440
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1441
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 1445
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1446
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v13, :cond_c

    iget-boolean v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1439
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1448
    .restart local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_c
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    .line 1447
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1449
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1361
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1693
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v12

    .line 1695
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1696
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1697
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v14

    .line 1698
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v4

    .line 1699
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1700
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1701
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1702
    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1699
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1704
    :cond_1
    iget v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1705
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1706
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    .line 1708
    :pswitch_0
    move v5, v10

    .line 1723
    :goto_2
    add-int/2addr v5, v12

    .line 1725
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1726
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1727
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1711
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1712
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1713
    goto :goto_2

    .line 1715
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    .line 1719
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1720
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    .line 1721
    goto :goto_2

    .line 1732
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_3

    .line 1733
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1735
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1739
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v12

    .line 1741
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v4

    .line 1742
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    .line 1743
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1744
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1746
    .restart local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    .line 1742
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1748
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1749
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1753
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1691
    return-void

    .line 1706
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 2648
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 2649
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2650
    const/4 v6, 0x0

    .line 2651
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2652
    .local v5, "increment":I
    move v2, v1

    .line 2658
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2659
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2660
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2661
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2662
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2663
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2664
    const/4 v7, 0x1

    return v7

    .line 2654
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2655
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2656
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2658
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2669
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v9
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1265
    instance-of v1, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1266
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1267
    return-void

    :cond_0
    move-object v0, p1

    .line 1270
    check-cast v0, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 1271
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1273
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1275
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 1264
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 1278
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1279
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 2567
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2569
    if-nez p1, :cond_0

    .line 2570
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 2566
    :goto_0
    return-void

    .line 2572
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1254
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1255
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1256
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iput v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 1257
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1260
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1460
    if-eq p1, p3, :cond_0

    .line 1461
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1456
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1945
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_0

    .line 1948
    const/16 v24, 0x0

    return v24

    .line 1951
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_2

    .line 1953
    :cond_1
    const/16 v24, 0x0

    return v24

    .line 1956
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    .line 1957
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1959
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1962
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1964
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2064
    .end local v11    # "needsInvalidate":Z
    :cond_4
    :goto_0
    :pswitch_0
    if-eqz v11, :cond_5

    .line 2065
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2067
    :cond_5
    const/16 v24, 0x1

    return v24

    .line 1966
    .restart local v11    # "needsInvalidate":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1967
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1968
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1971
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1972
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1973
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    goto :goto_0

    .line 1977
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 1978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 1979
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 1980
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1981
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 1982
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1984
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_6

    cmpl-float v24, v21, v23

    if-lez v24, :cond_6

    .line 1986
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1987
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1988
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1990
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1991
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1992
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1995
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1996
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_6

    .line 1997
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2002
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 2004
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2005
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2006
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ViewPager;->performDrag(F)Z

    move-result v11

    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    .line 1989
    .end local v6    # "activePointerIndex":I
    .local v11, "needsInvalidate":Z
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_1

    .line 2010
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 2012
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2013
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2015
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 2017
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v16, v0

    .line 2018
    .local v16, "scrollStart":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v17, v16, v24

    .line 2019
    .local v17, "scrolledPages":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v8

    .line 2020
    .local v8, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v7, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2022
    .local v7, "currentPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 2023
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    sub-float v24, v24, v17

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2028
    .local v13, "nextPageOffset":F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2029
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2030
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2031
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v12

    .line 2033
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    .line 2035
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2036
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2039
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2025
    .end local v6    # "activePointerIndex":I
    .end local v12    # "nextPage":I
    .end local v13    # "nextPageOffset":F
    .end local v18    # "totalDelta":I
    .end local v20    # "x":F
    :cond_8
    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move/from16 v24, v0

    sub-float v24, v17, v24

    iget v0, v8, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .restart local v13    # "nextPageOffset":F
    goto :goto_2

    .line 2043
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v13    # "nextPageOffset":F
    .end local v16    # "scrollStart":F
    .end local v17    # "scrolledPages":F
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 2044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2045
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2046
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2049
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2053
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2054
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2055
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2056
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    goto/16 :goto_0

    .line 2060
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2061
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_0

    .line 1964
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 3

    .prologue
    .line 2558
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    .line 2562
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2727
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2728
    return v1

    .line 2731
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2748
    return v2

    .line 2734
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2735
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2736
    return v1

    .line 2738
    :cond_1
    return v2

    .line 2741
    :sswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2742
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2743
    return v1

    .line 2745
    :cond_2
    return v2

    .line 2731
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020039 -> :sswitch_1
        0x102003b -> :sswitch_0
    .end sparse-switch
.end method

.method public populate()V
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 890
    return-void
.end method

.method populate(I)V
    .locals 31
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 895
    const/16 v22, 0x0

    .line 896
    .local v22, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v15, 0x2

    .line 897
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    const/16 v15, 0x42

    .line 899
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v22

    .line 900
    .local v22, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 903
    .end local v22    # "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 905
    return-void

    .line 898
    .local v22, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    const/16 v15, 0x11

    goto :goto_0

    .line 912
    .end local v22    # "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 915
    return-void

    .line 921
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v28

    if-nez v28, :cond_4

    .line 922
    return-void

    .line 925
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    move/from16 v23, v0

    .line 928
    .local v23, "pageLimit":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v23

    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 929
    .local v27, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    .line 930
    .local v4, "N":I
    add-int/lit8 v28, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v29, v0

    add-int v29, v29, v23

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 932
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v4, v0, :cond_5

    .line 935
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 939
    .local v25, "resName":Ljava/lang/String;
    :goto_1
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    move/from16 v30, v0

    .line 939
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 941
    const-string/jumbo v30, ", found: "

    .line 939
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 942
    const-string/jumbo v30, " Pager id: "

    .line 939
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 943
    const-string/jumbo v30, " Pager class: "

    .line 939
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getClass()Ljava/lang/Class;

    move-result-object v30

    .line 939
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 944
    const-string/jumbo v30, " Problematic adapter: "

    .line 939
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/widget/PagerAdapter;->getClass()Ljava/lang/Class;

    move-result-object v30

    .line 939
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 936
    .end local v25    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 937
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "resName":Ljava/lang/String;
    goto :goto_1

    .line 948
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v25    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 949
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 950
    .local v9, "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_6

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 952
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_c

    .line 953
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v18

    .line 958
    .end local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v9

    .line 965
    :cond_7
    if-eqz v9, :cond_a

    .line 966
    const/4 v13, 0x0

    .line 967
    .local v13, "extraWidthLeft":F
    add-int/lit8 v19, v8, -0x1

    .line 968
    .local v19, "itemIndex":I
    if-ltz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 969
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v7

    .line 970
    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    const/16 v20, 0x0

    .line 972
    .local v20, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int/lit8 v24, v28, -0x1

    .local v24, "pos":I
    :goto_5
    if-ltz v24, :cond_8

    .line 973
    cmpl-float v28, v13, v20

    if-ltz v28, :cond_13

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 974
    if-nez v18, :cond_f

    .line 1000
    :cond_8
    iget v14, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1001
    .local v14, "extraWidthRight":F
    add-int/lit8 v19, v8, 0x1

    .line 1002
    const/high16 v28, 0x40000000    # 2.0f

    cmpg-float v28, v14, v28

    if-gez v28, :cond_9

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1004
    :goto_6
    if-gtz v7, :cond_18

    const/16 v26, 0x0

    .line 1006
    .local v26, "rightWidthNeeded":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int/lit8 v24, v28, 0x1

    :goto_8
    move/from16 v0, v24

    if-ge v0, v4, :cond_9

    .line 1007
    cmpl-float v28, v14, v26

    if-ltz v28, :cond_1d

    move/from16 v0, v24

    if-le v0, v12, :cond_1d

    .line 1008
    if-nez v18, :cond_19

    .line 1033
    .end local v26    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v9, v8, v1}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    .line 1043
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v19    # "itemIndex":I
    .end local v20    # "leftWidthNeeded":F
    .end local v24    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v30, v0

    if-eqz v9, :cond_21

    iget-object v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    :goto_9
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v6

    .line 1050
    .local v6, "childCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_a
    move/from16 v0, v17

    if-ge v0, v6, :cond_22

    .line 1051
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1052
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1053
    .local v21, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move/from16 v0, v17

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1054
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    move/from16 v28, v0

    if-nez v28, :cond_b

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-nez v28, :cond_b

    .line 1056
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v18

    .line 1057
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v18, :cond_b

    .line 1058
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1059
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    .line 1050
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 950
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v17    # "i":I
    .end local v21    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 968
    .end local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v19    # "itemIndex":I
    :cond_d
    const/16 v18, 0x0

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_3

    .line 971
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v7    # "clientWidth":I
    :cond_e
    iget v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    sub-float v28, v29, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    int-to-float v0, v7

    move/from16 v30, v0

    div-float v29, v29, v30

    add-float v20, v28, v29

    .restart local v20    # "leftWidthNeeded":F
    goto/16 :goto_4

    .line 977
    .restart local v24    # "pos":I
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 972
    :cond_10
    :goto_b
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_5

    .line 978
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 984
    add-int/lit8 v19, v19, -0x1

    .line 985
    add-int/lit8 v8, v8, -0x1

    .line 986
    if-ltz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_12
    const/16 v18, 0x0

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    .line 988
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_13
    if-eqz v18, :cond_15

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 989
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    add-float v13, v13, v28

    .line 990
    add-int/lit8 v19, v19, -0x1

    .line 991
    if-ltz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_14
    const/16 v18, 0x0

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_b

    .line 993
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_15
    add-int/lit8 v28, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v18

    .line 994
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    add-float v13, v13, v28

    .line 995
    add-int/lit8 v8, v8, 0x1

    .line 996
    if-ltz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_b

    :cond_16
    const/16 v18, 0x0

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_b

    .line 1003
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v14    # "extraWidthRight":F
    :cond_17
    const/16 v18, 0x0

    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_6

    .line 1005
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    add-float v26, v28, v29

    .restart local v26    # "rightWidthNeeded":F
    goto/16 :goto_7

    .line 1011
    :cond_19
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 1006
    :cond_1a
    :goto_c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_8

    .line 1012
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v24

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_c

    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1c
    const/16 v18, 0x0

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_c

    .line 1020
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1d
    if-eqz v18, :cond_1f

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    .line 1021
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    add-float v14, v14, v28

    .line 1022
    add-int/lit8 v19, v19, 0x1

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1e
    const/16 v18, 0x0

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    .line 1025
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v18

    .line 1026
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v19, v19, 0x1

    .line 1027
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    add-float v14, v14, v28

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    check-cast v18, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    :cond_20
    const/16 v18, 0x0

    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto/16 :goto_c

    .line 1043
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v19    # "itemIndex":I
    .end local v20    # "leftWidthNeeded":F
    .end local v24    # "pos":I
    .end local v26    # "rightWidthNeeded":F
    :cond_21
    const/16 v28, 0x0

    goto/16 :goto_9

    .line 1063
    .restart local v6    # "childCount":I
    .restart local v17    # "i":I
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->hasFocus()Z

    move-result v28

    if-eqz v28, :cond_24

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1067
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v18

    .line 1068
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_d
    if-eqz v18, :cond_23

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_24

    .line 1069
    :cond_23
    const/16 v17, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_24

    .line 1070
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1071
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v18

    .line 1072
    if-eqz v18, :cond_27

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 1074
    if-nez v10, :cond_26

    .line 1075
    const/16 v16, 0x0

    .line 1082
    :goto_f
    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v28

    if-eqz v28, :cond_27

    .line 894
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "currentFocused":Landroid/view/View;
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_24
    return-void

    .line 1067
    .restart local v10    # "currentFocused":Landroid/view/View;
    :cond_25
    const/16 v18, 0x0

    goto :goto_d

    .line 1077
    .restart local v5    # "child":Landroid/view/View;
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 1078
    .local v16, "focusRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ViewPager;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/ViewPager;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_f

    .line 1069
    .end local v16    # "focusRect":Landroid/graphics/Rect;
    :cond_27
    add-int/lit8 v17, v17, 0x1

    goto :goto_e
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1316
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1315
    :goto_0
    return-void

    .line 1319
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/android/internal/widget/PagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 390
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v4, :cond_1

    .line 391
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 392
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 395
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v5, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 398
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    .line 400
    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 401
    invoke-virtual {p0, v7, v7}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 404
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 405
    .local v2, "oldAdapter":Lcom/android/internal/widget/PagerAdapter;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 406
    iput v7, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 408
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v4, :cond_3

    .line 409
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 410
    new-instance v4, Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$PagerObserver;)V

    iput-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 412
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 413
    iput-boolean v7, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 414
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 415
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 416
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 417
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 418
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 419
    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 420
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 421
    iput-object v8, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 422
    iput-object v8, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 430
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 431
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    .line 389
    :cond_4
    return-void

    .line 423
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    goto :goto_1

    .line 426
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 471
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 472
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 470
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 483
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 481
    return-void
.end method

.method setCurrentItemInternal(IZZ)Z
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result v0

    return v0
.end method

.method setCurrentItemInternal(IZZI)Z
    .locals 6
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 495
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 496
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 497
    return v4

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 501
    if-nez p3, :cond_2

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    invoke-direct {p0, v4}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 503
    return v4

    .line 506
    :cond_2
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 507
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_3

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_4

    .line 511
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 512
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v5, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_7

    const/4 v0, 0x1

    .line 517
    .local v0, "dispatchSelected":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_8

    .line 520
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 521
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 522
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 524
    :cond_5
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_6

    .line 525
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 527
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 533
    :goto_2
    return v5

    .line 516
    .end local v0    # "dispatchSelected":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "dispatchSelected":Z
    goto :goto_1

    .line 529
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 530
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_2
.end method

.method setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 631
    .local v0, "oldListener":Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 632
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 664
    if-ge p1, v3, :cond_0

    .line 665
    const-string/jumbo v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 p1, 0x1

    .line 669
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 670
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 671
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 663
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 455
    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 587
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 684
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 685
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v1

    .line 688
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 683
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 709
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->refreshDrawableState()V

    .line 710
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 711
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->invalidate()V

    .line 707
    return-void

    .line 710
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .locals 5
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/internal/widget/ViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 604
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 605
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_3

    move v3, v2

    :goto_1
    if-eq v0, v3, :cond_4

    const/4 v1, 0x1

    .line 606
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 608
    if-eqz v0, :cond_5

    .line 609
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 613
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 603
    :cond_1
    return-void

    .line 604
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasTransformer":Z
    goto :goto_0

    :cond_3
    move v3, v4

    .line 605
    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "needsPopulate":Z
    goto :goto_2

    .line 611
    :cond_5
    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 754
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 768
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 769
    return-void

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 772
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    .line 773
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 774
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 775
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 776
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 778
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 779
    return-void

    .line 782
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 783
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 785
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v12

    .line 786
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 787
    .local v9, "halfWidth":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v1, v13

    int-to-float v13, v12

    div-float/2addr v1, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 788
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    .line 789
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    .line 788
    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 791
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 792
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 793
    if-lez p3, :cond_2

    .line 794
    move/from16 v0, p3

    int-to-float v1, v0

    div-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 800
    :goto_0
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 802
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 765
    return-void

    .line 796
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v14, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 797
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 798
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 725
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
