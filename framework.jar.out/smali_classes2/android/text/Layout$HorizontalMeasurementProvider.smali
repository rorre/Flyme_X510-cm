.class Landroid/text/Layout$HorizontalMeasurementProvider;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalMeasurementProvider"
.end annotation


# instance fields
.field private mHorizontals:[F

.field private final mLine:I

.field private mLineStartOffset:I

.field private final mPrimary:Z

.field final synthetic this$0:Landroid/text/Layout;


# direct methods
.method constructor <init>(Landroid/text/Layout;IZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "primary"    # Z

    .prologue
    .line 1376
    iput-object p1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1377
    iput p2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    .line 1378
    iput-boolean p3, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    .line 1379
    invoke-direct {p0}, Landroid/text/Layout$HorizontalMeasurementProvider;->init()V

    .line 1376
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 1383
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 1384
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_0

    .line 1385
    return-void

    .line 1388
    :cond_0
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    iget-boolean v3, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/text/Layout;->-wrap0(Landroid/text/Layout;IZZ)[F

    move-result-object v1

    iput-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    .line 1389
    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget v2, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLine:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    iput v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    .line 1382
    return-void
.end method


# virtual methods
.method get(I)F
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1393
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    if-ge p1, v0, :cond_1

    .line 1395
    :cond_0
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->this$0:Landroid/text/Layout;

    iget-boolean v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mPrimary:Z

    invoke-static {v0, p1, v1}, Landroid/text/Layout;->-wrap1(Landroid/text/Layout;IZ)F

    move-result v0

    return v0

    .line 1394
    :cond_1
    iget v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    iget-object v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    array-length v1, v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 1397
    iget-object v0, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mHorizontals:[F

    iget v1, p0, Landroid/text/Layout$HorizontalMeasurementProvider;->mLineStartOffset:I

    sub-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method
