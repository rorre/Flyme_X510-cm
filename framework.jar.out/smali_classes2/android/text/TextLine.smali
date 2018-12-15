.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    .line 45
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 61
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 60
    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 63
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 62
    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 65
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    .line 64
    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 45
    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z

    .prologue
    .line 453
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    .line 454
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    .line 455
    .local v13, "w":F
    add-float v7, p5, v13

    .line 456
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 455
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .line 457
    return v13

    .line 453
    .end local v13    # "w":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 461
    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    .line 460
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    return v1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    .prologue
    .line 1048
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    .line 1049
    sub-int v4, p4, p3

    .line 1050
    .local v4, "count":I
    sub-int v6, p6, p5

    .line 1051
    .local v6, "contextCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    .line 1052
    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    .line 1051
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1046
    .end local v4    # "count":I
    .end local v6    # "contextCount":I
    :goto_0
    return-void

    .line 1054
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v17, v0

    .line 1055
    .local v17, "delta":I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v9, v17, p3

    add-int v10, v17, p4

    .line 1056
    add-int v11, v17, p5

    add-int v12, v17, p6

    move/from16 v0, p9

    int-to-float v14, v0

    move-object/from16 v7, p1

    move/from16 v13, p8

    move/from16 v15, p7

    move-object/from16 v16, p2

    .line 1055
    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    .prologue
    .line 747
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 748
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 749
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 750
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 751
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 753
    .local v5, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    .line 755
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 746
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    .prologue
    .line 680
    if-ltz p1, :cond_0

    if-eqz p6, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    .line 684
    :cond_0
    if-eqz p6, :cond_2

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    .line 680
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 687
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    .line 690
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 691
    .local v2, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 693
    move/from16 v4, p2

    .line 695
    .local v4, "spanStart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_5

    .line 696
    move/from16 v20, p3

    .line 732
    .local v20, "spanLimit":I
    :cond_4
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    .line 733
    .local v6, "dir":I
    :goto_1
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    .line 734
    .local v8, "cursorOpt":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v3

    return v3

    .line 698
    .end local v6    # "dir":I
    .end local v8    # "cursorOpt":I
    .end local v20    # "spanLimit":I
    :cond_5
    if-eqz p6, :cond_6

    add-int/lit8 v22, p5, 0x1

    .line 699
    .local v22, "target":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    .line 701
    .local v17, "limit":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    .line 702
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    .line 701
    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 702
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 701
    sub-int v20, v3, v5

    .line 703
    .restart local v20    # "spanLimit":I
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 709
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    .line 710
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 709
    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 711
    .local v21, "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    .line 713
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_4

    .line 714
    const/16 v18, 0x0

    .line 715
    .local v18, "replacement":Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v16, "j":I
    :goto_5
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 716
    aget-object v19, v21, v16

    .line 717
    .local v19, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_8

    move-object/from16 v18, v19

    .line 718
    check-cast v18, Landroid/text/style/ReplacementSpan;

    .line 715
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 698
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .end local v20    # "spanLimit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_6
    move/from16 v22, p5

    .restart local v22    # "target":I
    goto :goto_3

    .line 706
    .restart local v17    # "limit":I
    .restart local v20    # "spanLimit":I
    :cond_7
    move/from16 v4, v20

    goto :goto_4

    .line 720
    .restart local v16    # "j":I
    .restart local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_6

    .line 724
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_9
    if-eqz v18, :cond_4

    .line 727
    if-eqz p6, :cond_a

    .end local v20    # "spanLimit":I
    :goto_7
    return v20

    .restart local v20    # "spanLimit":I
    :cond_a
    move/from16 v20, v4

    goto :goto_7

    .line 732
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "dir":I
    goto/16 :goto_1

    .line 733
    :cond_c
    const/4 v8, 0x2

    .restart local v8    # "cursorOpt":I
    goto/16 :goto_2

    .line 738
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    .line 739
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    .line 738
    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    .line 739
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    .line 738
    sub-int/2addr v3, v5

    return v3
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "needWidth"    # Z

    .prologue
    .line 883
    const/16 v23, 0x0

    .line 885
    .local v23, "ret":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 886
    .local v4, "textStart":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 888
    .local v5, "textLimit":I
    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    .line 889
    :cond_0
    const/4 v7, 0x0

    .line 890
    .local v7, "previousTop":I
    const/4 v8, 0x0

    .line 891
    .local v8, "previousAscent":I
    const/4 v9, 0x0

    .line 892
    .local v9, "previousDescent":I
    const/4 v10, 0x0

    .line 893
    .local v10, "previousBottom":I
    const/4 v11, 0x0

    .line 895
    .local v11, "previousLeading":I
    if-eqz p11, :cond_6

    const/16 v22, 0x1

    .line 897
    .local v22, "needUpdateMetrics":Z
    :goto_0
    if-eqz v22, :cond_1

    .line 898
    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 899
    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 900
    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 901
    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 902
    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 905
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 907
    if-eqz v22, :cond_2

    move-object/from16 v6, p11

    .line 908
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 913
    .end local v7    # "previousTop":I
    .end local v8    # "previousAscent":I
    .end local v9    # "previousDescent":I
    .end local v10    # "previousBottom":I
    .end local v11    # "previousLeading":I
    .end local v22    # "needUpdateMetrics":Z
    :cond_2
    if-eqz p6, :cond_4

    .line 914
    if-eqz p5, :cond_3

    .line 915
    sub-float p7, p7, v23

    .line 917
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 921
    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    .end local v23    # "ret":F
    :cond_5
    return v23

    .line 895
    .restart local v7    # "previousTop":I
    .restart local v8    # "previousAscent":I
    .restart local v9    # "previousDescent":I
    .restart local v10    # "previousBottom":I
    .restart local v11    # "previousLeading":I
    .restart local v23    # "ret":F
    :cond_6
    const/16 v22, 0x0

    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 29
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "x"    # F
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I
    .param p10, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p11, "needWidth"    # Z

    .prologue
    .line 948
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 950
    .local v3, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 951
    if-eqz p10, :cond_0

    .line 952
    move-object/from16 v0, p10

    invoke-static {v0, v3}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 954
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 957
    .end local v3    # "wp":Landroid/text/TextPaint;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v2, :cond_4

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 959
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 960
    move/from16 v8, p2

    .line 962
    .local v8, "mlimit":I
    if-nez p11, :cond_2

    move/from16 v0, p2

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    :cond_2
    const/4 v15, 0x1

    :goto_0
    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v16, p2

    .line 961
    invoke-direct/range {v2 .. v16}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F

    .end local v8    # "mlimit":I
    move-result v2

    return v2

    .line 962
    .restart local v8    # "mlimit":I
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 965
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v8    # "mlimit":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/TextLine;->mStart:I

    add-int v9, v9, p3

    invoke-virtual {v2, v4, v6, v9}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/TextLine;->mStart:I

    add-int v9, v9, p3

    invoke-virtual {v2, v4, v6, v9}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 973
    move/from16 v26, p6

    .line 974
    .local v26, "originalX":F
    move/from16 v7, p1

    .local v7, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v7, v0, :cond_13

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 976
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, p3

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    .line 979
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    .line 978
    sub-int v24, v2, v4

    .line 980
    .local v24, "inext":I
    move/from16 v0, v24

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 982
    .restart local v8    # "mlimit":I
    const/4 v5, 0x0

    .line 984
    .local v5, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v11, 0x0

    .end local v5    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v11, v2, :cond_8

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v8

    if-ge v2, v4, :cond_5

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v7

    if-gt v2, v4, :cond_6

    .line 984
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 989
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v28, v2, v11

    .line 990
    .local v28, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v28

    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    move-object/from16 v5, v28

    .line 991
    check-cast v5, Landroid/text/style/ReplacementSpan;

    .local v5, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_3

    .line 995
    .end local v5    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_7
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_3

    .line 999
    .end local v28    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v5, :cond_c

    .line 1001
    if-nez p11, :cond_9

    move/from16 v0, p2

    if-ge v8, v0, :cond_b

    :cond_9
    const/16 v16, 0x1

    :goto_4
    move-object/from16 v4, p0

    move-object v6, v3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    .line 1000
    invoke-direct/range {v4 .. v16}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    .end local v11    # "j":I
    move-result v2

    add-float p6, p6, v2

    .line 974
    :cond_a
    move/from16 v7, v24

    goto/16 :goto_1

    .line 1001
    .restart local v11    # "j":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_4

    .line 1005
    :cond_c
    move v11, v7

    :goto_5
    if-ge v11, v8, :cond_a

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int v6, v6, v24

    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v2

    .line 1007
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    .line 1006
    sub-int v12, v2, v4

    .line 1008
    .local v12, "jnext":I
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 1010
    .local v23, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1011
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v25

    if-ge v0, v2, :cond_f

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, v23

    if-ge v2, v4, :cond_d

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v11

    if-gt v2, v4, :cond_e

    .line 1011
    :cond_d
    :goto_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .line 1016
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v27, v2, v25

    .line 1017
    .local v27, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_7

    .line 1021
    .end local v27    # "span":Landroid/text/style/CharacterStyle;
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-ge v12, v2, :cond_10

    .line 1022
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 1025
    :cond_10
    if-nez p11, :cond_11

    move/from16 v0, p2

    if-ge v12, v0, :cond_12

    :cond_11
    const/16 v22, 0x1

    :goto_8
    move-object/from16 v9, p0

    move-object v10, v3

    move v13, v7

    move/from16 v14, v24

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    move/from16 v20, p9

    move-object/from16 v21, p10

    .line 1024
    invoke-direct/range {v9 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F

    move-result v2

    add-float p6, p6, v2

    .line 1005
    move v11, v12

    goto/16 :goto_5

    .line 1025
    :cond_12
    const/16 v22, 0x0

    goto :goto_8

    .line 1029
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v8    # "mlimit":I
    .end local v11    # "j":I
    .end local v12    # "jnext":I
    .end local v23    # "offset":I
    .end local v24    # "inext":I
    .end local v25    # "k":I
    :cond_13
    sub-float v2, p6, v26

    return v2
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F
    .locals 21
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z
    .param p14, "offset"    # I

    .prologue
    .line 793
    if-eqz p12, :cond_0

    .line 794
    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 797
    :cond_0
    sub-int v20, p3, p2

    .line 799
    .local v20, "runLen":I
    if-nez v20, :cond_1

    .line 800
    const/4 v2, 0x0

    return v2

    .line 803
    :cond_1
    const/16 v19, 0x0

    .line 805
    .local v19, "ret":F
    if-nez p13, :cond_2

    if-eqz p7, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_9

    .line 806
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_a

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p14

    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v19

    .line 816
    :cond_3
    :goto_1
    if-eqz p7, :cond_7

    .line 817
    if-eqz p6, :cond_4

    .line 818
    sub-float p8, p8, v19

    .line 821
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_5

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    .line 823
    .local v17, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 825
    .local v18, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 826
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 827
    move/from16 v0, p9

    int-to-float v4, v0

    add-float v5, p8, v19

    move/from16 v0, p11

    int-to-float v6, v0

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 829
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 830
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 833
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_6

    .line 835
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const v5, 0x3de38e39

    mul-float/2addr v3, v5

    add-float v4, v2, v3

    .line 837
    .local v4, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    .line 838
    .restart local v17    # "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 839
    .restart local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v16

    .line 841
    .local v16, "previousAntiAlias":Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 842
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 844
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 845
    add-float v5, p8, v19

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v6, v4, v2

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 847
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 848
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 849
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 853
    .end local v4    # "underlineTop":F
    .end local v16    # "previousAntiAlias":Z
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v14, p10, v2

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p8

    .line 852
    invoke-direct/range {v5 .. v14}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 856
    :cond_7
    if-eqz p6, :cond_8

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .end local v19    # "ret":F
    :cond_8
    return v19

    .line 805
    .restart local v19    # "ret":F
    :cond_9
    if-eqz p6, :cond_3

    goto/16 :goto_0

    .line 810
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mStart:I

    .line 811
    .local v15, "delta":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v4, v15, p2

    add-int v5, v15, p3

    .line 812
    add-int v6, v15, p4

    add-int v7, v15, p5

    add-int v9, v15, p14

    move-object/from16 v2, p1

    move/from16 v8, p6

    .line 811
    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v19

    goto/16 :goto_1
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 479
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 5

    .prologue
    .line 76
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v3

    .line 77
    :try_start_0
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 78
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 79
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    .line 80
    .local v1, "tl":Landroid/text/TextLine;
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 81
    return-object v1

    .end local v1    # "tl":Landroid/text/TextLine;
    :cond_1
    monitor-exit v3

    .line 85
    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    .line 89
    .restart local v1    # "tl":Landroid/text/TextLine;
    return-object v1

    .line 76
    .end local v1    # "tl":Landroid/text/TextLine;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .param p0, "tl"    # Landroid/text/TextLine;

    .prologue
    const/4 v3, 0x0

    .line 100
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 101
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 102
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 103
    iput-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 104
    iput-object v3, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 105
    iput-object v3, p0, Landroid/text/TextLine;->mChars:[C

    .line 107
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 108
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 109
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 111
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 113
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 114
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 119
    return-object v3

    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    .prologue
    .line 761
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 762
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 763
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 764
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 765
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 760
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 197
    return-void

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    .line 201
    return-void

    .line 205
    :cond_1
    const/4 v12, 0x0

    .line 206
    .local v12, "h":F
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    .line 208
    .local v17, "runs":[I
    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v14, v1, -0x2

    .line 209
    .local v14, "lastRunIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_c

    .line 210
    aget v16, v17, v13

    .line 211
    .local v16, "runStart":I
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    add-int v15, v16, v1

    .line 212
    .local v15, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v15, v1, :cond_2

    .line 213
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mLen:I

    .line 215
    :cond_2
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    .line 217
    .local v5, "runIsRtl":Z
    :goto_1
    move/from16 v3, v16

    .line 218
    .local v3, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_5

    move/from16 v4, v16

    .local v4, "j":I
    :goto_2
    if-gt v4, v15, :cond_b

    .line 219
    const/4 v11, 0x0

    .line 220
    .local v11, "codept":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    if-ge v4, v15, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v11, v1, v4

    .line 222
    const v1, 0xd800

    if-lt v11, v1, :cond_6

    const v1, 0xdc00

    if-ge v11, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v15, :cond_6

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    .line 224
    const v1, 0xffff

    if-le v11, v1, :cond_6

    .line 225
    add-int/lit8 v4, v4, 0x1

    .line 218
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 215
    .end local v3    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v11    # "codept":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "runIsRtl":Z
    goto :goto_1

    .line 218
    .restart local v3    # "segstart":I
    :cond_5
    move v4, v15

    .restart local v4    # "j":I
    goto :goto_2

    .line 231
    .restart local v11    # "codept":I
    :cond_6
    if-eq v4, v15, :cond_7

    const/16 v1, 0x9

    if-ne v11, v1, :cond_3

    .line 232
    :cond_7
    add-float v6, p2, v12

    .line 233
    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-eq v4, v1, :cond_a

    :cond_8
    const/4 v10, 0x1

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 232
    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v1

    add-float/2addr v12, v1

    .line 235
    const/16 v1, 0x9

    if-ne v11, v1, :cond_9

    .line 236
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float v12, v1, v2

    .line 238
    :cond_9
    add-int/lit8 v3, v4, 0x1

    goto :goto_3

    .line 233
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 209
    .end local v11    # "codept":I
    :cond_b
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_0

    .line 193
    .end local v3    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v15    # "runLimit":I
    .end local v16    # "runStart":I
    :cond_c
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 28
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    .line 514
    .local v16, "lineEnd":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v19, 0x1

    .line 515
    .local v19, "paraIsRtl":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v26, v0

    .line 517
    .local v26, "runs":[I
    const/16 v25, 0x0

    .line 512
    .local v25, "runLevel":I
    const/4 v4, 0x0

    .line 517
    .local v4, "runStart":I
    move/from16 v5, v16

    .local v5, "runLimit":I
    const/16 v17, -0x1

    .line 518
    .local v17, "newCaret":I
    const/16 v27, 0x0

    .line 520
    .local v27, "trailing":Z
    if-nez p1, :cond_3

    .line 521
    const/4 v3, -0x2

    .line 599
    .local v3, "runIndex":I
    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    .line 600
    .local v8, "advance":Z
    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    .line 601
    .local v10, "otherRunIndex":I
    if-ltz v10, :cond_18

    move-object/from16 v0, v26

    array-length v2, v0

    if-ge v10, v2, :cond_18

    .line 602
    aget v2, v26, v10

    add-int/lit8 v11, v2, 0x0

    .line 604
    .local v11, "otherRunStart":I
    add-int/lit8 v2, v10, 0x1

    aget v2, v26, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    .line 603
    add-int v12, v11, v2

    .line 605
    .local v12, "otherRunLimit":I
    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 606
    move/from16 v12, v16

    .line 608
    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v26, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v18, v2, 0x3f

    .line 610
    .local v18, "otherRunLevel":I
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    .line 612
    .local v13, "otherRunIsRtl":Z
    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    .line 613
    .local v8, "advance":Z
    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_15

    .line 616
    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    .line 614
    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v17

    .line 617
    if-eqz v8, :cond_14

    .end local v12    # "otherRunLimit":I
    :goto_7
    move/from16 v0, v17

    if-ne v0, v12, :cond_16

    .line 620
    move v3, v10

    .line 621
    move/from16 v25, v18

    .line 622
    goto :goto_1

    .line 514
    .end local v3    # "runIndex":I
    .end local v4    # "runStart":I
    .end local v5    # "runLimit":I
    .end local v8    # "advance":Z
    .end local v10    # "otherRunIndex":I
    .end local v11    # "otherRunStart":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v17    # "newCaret":I
    .end local v18    # "otherRunLevel":I
    .end local v19    # "paraIsRtl":Z
    .end local v25    # "runLevel":I
    .end local v26    # "runs":[I
    .end local v27    # "trailing":Z
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "paraIsRtl":Z
    goto :goto_0

    .line 522
    .restart local v4    # "runStart":I
    .restart local v5    # "runLimit":I
    .restart local v17    # "newCaret":I
    .restart local v25    # "runLevel":I
    .restart local v26    # "runs":[I
    .restart local v27    # "trailing":Z
    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 523
    move-object/from16 v0, v26

    array-length v3, v0

    .restart local v3    # "runIndex":I
    goto :goto_1

    .line 527
    .end local v3    # "runIndex":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "runIndex":I
    :goto_8
    move-object/from16 v0, v26

    array-length v2, v0

    if-ge v3, v2, :cond_7

    .line 528
    aget v2, v26, v3

    add-int/lit8 v4, v2, 0x0

    .line 529
    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    .line 530
    add-int/lit8 v2, v3, 0x1

    aget v2, v26, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    .line 531
    move/from16 v0, v16

    if-le v5, v0, :cond_5

    .line 532
    move/from16 v5, v16

    .line 534
    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    .line 535
    add-int/lit8 v2, v3, 0x1

    aget v2, v26, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v25, v2, 0x3f

    .line 537
    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 542
    add-int/lit8 v20, p1, -0x1

    .line 543
    .local v20, "pos":I
    const/16 v21, 0x0

    .local v21, "prevRunIndex":I
    :goto_9
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 544
    aget v2, v26, v21

    add-int/lit8 v24, v2, 0x0

    .line 545
    .local v24, "prevRunStart":I
    move/from16 v0, v20

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 547
    add-int/lit8 v2, v21, 0x1

    aget v2, v26, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    .line 546
    add-int v23, v24, v2

    .line 548
    .local v23, "prevRunLimit":I
    move/from16 v0, v23

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 549
    move/from16 v23, v16

    .line 551
    :cond_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 552
    add-int/lit8 v2, v21, 0x1

    aget v2, v26, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v22, v2, 0x3f

    .line 554
    .local v22, "prevRunLevel":I
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 556
    move/from16 v3, v21

    .line 557
    move/from16 v25, v22

    .line 558
    move/from16 v4, v24

    .line 559
    move/from16 v5, v23

    .line 560
    const/16 v27, 0x1

    .line 577
    .end local v20    # "pos":I
    .end local v21    # "prevRunIndex":I
    .end local v22    # "prevRunLevel":I
    .end local v23    # "prevRunLimit":I
    .end local v24    # "prevRunStart":I
    :cond_7
    move-object/from16 v0, v26

    array-length v2, v0

    if-eq v3, v2, :cond_0

    .line 578
    and-int/lit8 v2, v25, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    .line 579
    .local v6, "runIsRtl":Z
    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    .line 580
    .local v8, "advance":Z
    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v27

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    .line 582
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v17

    .line 586
    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    .line 587
    return v17

    .line 543
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    .restart local v20    # "pos":I
    .restart local v21    # "prevRunIndex":I
    .restart local v24    # "prevRunStart":I
    :cond_9
    add-int/lit8 v21, v21, 0x2

    goto :goto_9

    .line 527
    .end local v20    # "pos":I
    .end local v21    # "prevRunIndex":I
    .end local v24    # "prevRunStart":I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    .line 578
    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    .line 579
    .restart local v6    # "runIsRtl":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_b

    .restart local v8    # "advance":Z
    :cond_d
    move v2, v4

    .line 580
    goto :goto_c

    :cond_e
    move v2, v4

    .line 586
    goto :goto_d

    .line 599
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 600
    .restart local v8    # "advance":Z
    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    .line 610
    .restart local v10    # "otherRunIndex":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v18    # "otherRunLevel":I
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 612
    .restart local v13    # "otherRunIsRtl":Z
    :cond_12
    const/4 v8, 0x0

    .local v8, "advance":Z
    goto/16 :goto_5

    :cond_13
    move v14, v12

    .line 616
    goto/16 :goto_6

    :cond_14
    move v12, v11

    .line 617
    goto/16 :goto_7

    .line 628
    :cond_15
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    .line 630
    if-eqz v8, :cond_17

    move/from16 v17, v11

    .line 657
    .end local v8    # "advance":Z
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    :cond_16
    :goto_e
    return v17

    .line 630
    .restart local v8    # "advance":Z
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v13    # "otherRunIsRtl":Z
    .restart local v18    # "otherRunLevel":I
    :cond_17
    move/from16 v17, v12

    goto :goto_e

    .line 635
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    .local v8, "advance":Z
    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_1a

    .line 639
    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v17, v2, 0x1

    goto :goto_e

    :cond_19
    const/16 v17, -0x1

    goto :goto_e

    .line 651
    :cond_1a
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    .line 652
    if-eqz v8, :cond_1b

    move/from16 v17, v16

    goto :goto_e

    .line 512
    :cond_1b
    const/16 v17, 0x0

    .line 652
    goto :goto_e
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 18
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 268
    if-eqz p2, :cond_0

    add-int/lit8 v16, p1, -0x1

    .line 269
    .local v16, "target":I
    :goto_0
    if-gez v16, :cond_1

    .line 270
    const/4 v1, 0x0

    return v1

    .end local v16    # "target":I
    :cond_0
    move/from16 v16, p1

    .line 268
    goto :goto_0

    .line 273
    .restart local v16    # "target":I
    :cond_1
    const/4 v10, 0x0

    .line 275
    .local v10, "h":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    .line 279
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    .line 280
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    .line 284
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    .line 285
    .local v8, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v15, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 286
    .local v15, "runs":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v1, v15

    if-ge v11, v1, :cond_13

    .line 287
    aget v14, v15, v11

    .line 288
    .local v14, "runStart":I
    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v13, v14, v1

    .line 289
    .local v13, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v13, v1, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget v13, v0, Landroid/text/TextLine;->mLen:I

    .line 292
    :cond_4
    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    .line 294
    .local v5, "runIsRtl":Z
    :goto_2
    move v2, v14

    .line 295
    .local v2, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_7

    move v4, v14

    .local v4, "j":I
    :goto_3
    if-gt v4, v13, :cond_12

    .line 296
    const/4 v9, 0x0

    .line 297
    .local v9, "codept":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_8

    if-ge v4, v13, :cond_8

    .line 298
    aget-char v9, v8, v4

    .line 299
    const v1, 0xd800

    if-lt v9, v1, :cond_8

    const v1, 0xdc00

    if-ge v9, v1, :cond_8

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v13, :cond_8

    .line 300
    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v9

    .line 301
    const v1, 0xffff

    if-le v9, v1, :cond_8

    .line 302
    add-int/lit8 v4, v4, 0x1

    .line 295
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 292
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v9    # "codept":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "runIsRtl":Z
    goto :goto_2

    .line 295
    .restart local v2    # "segstart":I
    :cond_7
    move v4, v13

    .restart local v4    # "j":I
    goto :goto_3

    .line 308
    .restart local v9    # "codept":I
    :cond_8
    if-eq v4, v13, :cond_9

    const/16 v1, 0x9

    if-ne v9, v1, :cond_5

    .line 309
    :cond_9
    move/from16 v0, v16

    if-lt v0, v2, :cond_a

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    const/4 v12, 0x1

    .line 311
    .local v12, "inSegment":Z
    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x1

    :goto_6
    if-ne v1, v5, :cond_c

    const/4 v7, 0x1

    .line 312
    .local v7, "advance":Z
    :goto_7
    if-eqz v12, :cond_d

    if-eqz v7, :cond_d

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    .line 313
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    .line 309
    .end local v7    # "advance":Z
    .end local v12    # "inSegment":Z
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "inSegment":Z
    goto :goto_5

    .line 311
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "advance":Z
    goto :goto_7

    :cond_d
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    .line 316
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    .line 317
    .local v17, "w":F
    if-eqz v7, :cond_e

    .end local v17    # "w":F
    :goto_8
    add-float v10, v10, v17

    .line 319
    if-eqz v12, :cond_f

    .line 320
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    .line 317
    .restart local v17    # "w":F
    :cond_e
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    goto :goto_8

    .line 323
    .end local v17    # "w":F
    :cond_f
    const/16 v1, 0x9

    if-ne v9, v1, :cond_11

    .line 324
    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 325
    return v10

    .line 327
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v10, v1, v3

    .line 328
    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    .line 329
    return v10

    .line 333
    :cond_11
    add-int/lit8 v2, v4, 0x1

    goto :goto_4

    .line 286
    .end local v7    # "advance":Z
    .end local v9    # "codept":I
    .end local v12    # "inSegment":Z
    :cond_12
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_1

    .line 338
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v13    # "runLimit":I
    .end local v14    # "runStart":I
    :cond_13
    return v10
.end method

.method measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .locals 28
    .param p1, "trailing"    # [Z
    .param p2, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [F

    move-object/from16 v21, v0

    .line 348
    .local v21, "measurement":[F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v26, v0

    .line 349
    .local v26, "target":[I
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_0
    move-object/from16 v0, v26

    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 350
    aget-boolean v1, p1, v3

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, -0x1

    :goto_1
    aput v1, v26, v3

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 350
    goto :goto_1

    .line 352
    :cond_1
    const/4 v1, 0x0

    aget v1, v26, v1

    if-gez v1, :cond_2

    .line 353
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v21, v2

    .line 356
    :cond_2
    const/16 v19, 0x0

    .line 358
    .local v19, "h":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_6

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_4

    .line 360
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v3, v1, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    aput v1, v21, v3

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 363
    :cond_3
    return-object v21

    .line 365
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_6

    .line 366
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v3, v1, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    aput v1, v21, v3

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 369
    :cond_5
    return-object v21

    .line 373
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v17, v0

    .line 374
    .local v17, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v25, v0

    .line 375
    .local v25, "runs":[I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    move-object/from16 v0, v25

    array-length v1, v0

    move/from16 v0, v20

    if-ge v0, v1, :cond_17

    .line 376
    aget v24, v25, v20

    .line 377
    .local v24, "runStart":I
    add-int/lit8 v1, v20, 0x1

    aget v1, v25, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    add-int v23, v24, v1

    .line 378
    .local v23, "runLimit":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v23

    if-le v0, v1, :cond_7

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v23, v0

    .line 381
    :cond_7
    add-int/lit8 v1, v20, 0x1

    aget v1, v25, v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v8, 0x1

    .line 383
    .local v8, "runIsRtl":Z
    :goto_5
    move/from16 v5, v24

    .line 384
    .local v5, "segstart":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_a

    move/from16 v6, v24

    .local v6, "j":I
    :goto_6
    move/from16 v0, v23

    if-gt v6, v0, :cond_16

    .line 385
    const/16 v18, 0x0

    .line 386
    .local v18, "codept":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_b

    move/from16 v0, v23

    if-ge v6, v0, :cond_b

    .line 387
    aget-char v18, v17, v6

    .line 388
    const v1, 0xd800

    move/from16 v0, v18

    if-lt v0, v1, :cond_b

    const v1, 0xdc00

    move/from16 v0, v18

    if-ge v0, v1, :cond_b

    add-int/lit8 v1, v6, 0x1

    move/from16 v0, v23

    if-ge v1, v0, :cond_b

    .line 389
    move-object/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v18

    .line 390
    const v1, 0xffff

    move/from16 v0, v18

    if-le v0, v1, :cond_b

    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 384
    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 381
    .end local v5    # "segstart":I
    .end local v6    # "j":I
    .end local v8    # "runIsRtl":Z
    .end local v18    # "codept":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "runIsRtl":Z
    goto :goto_5

    .line 384
    .restart local v5    # "segstart":I
    :cond_a
    move/from16 v6, v23

    .restart local v6    # "j":I
    goto :goto_6

    .line 397
    .restart local v18    # "codept":I
    :cond_b
    move/from16 v0, v23

    if-eq v6, v0, :cond_c

    const/16 v1, 0x9

    move/from16 v0, v18

    if-ne v0, v1, :cond_8

    .line 398
    :cond_c
    move/from16 v22, v19

    .line 399
    .local v22, "oldh":F
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    :goto_8
    if-ne v1, v8, :cond_f

    const/4 v15, 0x1

    .local v15, "advance":Z
    :goto_9
    move-object/from16 v4, p0

    move v7, v6

    move-object/from16 v9, p2

    .line 400
    invoke-direct/range {v4 .. v9}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v27

    .line 401
    .local v27, "w":F
    if-eqz v15, :cond_10

    .end local v27    # "w":F
    :goto_a
    add-float v19, v19, v27

    .line 403
    if-eqz v15, :cond_11

    move/from16 v16, v22

    .line 404
    .local v16, "baseh":F
    :goto_b
    if-eqz v15, :cond_12

    move-object/from16 v14, p2

    .line 405
    :goto_c
    move v3, v5

    :goto_d
    if-gt v3, v6, :cond_13

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v3, v1, :cond_13

    .line 406
    aget v1, v26, v3

    if-lt v1, v5, :cond_d

    aget v1, v26, v3

    if-ge v1, v6, :cond_d

    move-object/from16 v9, p0

    move v10, v5

    move v11, v3

    move v12, v6

    move v13, v8

    .line 408
    invoke-direct/range {v9 .. v14}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float v1, v1, v16

    .line 407
    aput v1, v21, v3

    .line 405
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 399
    .end local v15    # "advance":Z
    .end local v16    # "baseh":F
    :cond_e
    const/4 v1, 0x0

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    .restart local v15    # "advance":Z
    goto :goto_9

    .line 401
    .restart local v27    # "w":F
    :cond_10
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    goto :goto_a

    .line 403
    .end local v27    # "w":F
    :cond_11
    move/from16 v16, v19

    .restart local v16    # "baseh":F
    goto :goto_b

    .line 404
    :cond_12
    const/4 v14, 0x0

    .local v14, "crtfmi":Landroid/graphics/Paint$FontMetricsInt;
    goto :goto_c

    .line 412
    .end local v14    # "crtfmi":Landroid/graphics/Paint$FontMetricsInt;
    :cond_13
    const/16 v1, 0x9

    move/from16 v0, v18

    if-ne v0, v1, :cond_15

    .line 413
    aget v1, v26, v6

    if-ne v1, v6, :cond_14

    .line 414
    aput v19, v21, v6

    .line 416
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float v19, v1, v2

    .line 417
    add-int/lit8 v1, v6, 0x1

    aget v1, v26, v1

    if-ne v1, v6, :cond_15

    .line 418
    add-int/lit8 v1, v6, 0x1

    aput v19, v21, v1

    .line 422
    :cond_15
    add-int/lit8 v5, v6, 0x1

    goto/16 :goto_7

    .line 375
    .end local v15    # "advance":Z
    .end local v16    # "baseh":F
    .end local v18    # "codept":I
    .end local v22    # "oldh":F
    :cond_16
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_4

    .line 426
    .end local v5    # "segstart":I
    .end local v6    # "j":I
    .end local v8    # "runIsRtl":Z
    .end local v23    # "runLimit":I
    .end local v24    # "runStart":I
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    aget v1, v26, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-ne v1, v2, :cond_18

    .line 427
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    aput v19, v21, v1

    .line 430
    :cond_18
    return-object v21
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 251
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1
    .param p1, "h"    # F

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    .line 1070
    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    return v0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;

    .prologue
    .line 136
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 137
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 138
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    .line 139
    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    .line 140
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    .line 141
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 142
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    .line 143
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    .line 146
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "hasReplacement":Z
    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 150
    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 151
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 152
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    .line 155
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    .line 157
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    .line 158
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    .line 159
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v7

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    .line 161
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 162
    if-eqz v3, :cond_8

    .line 168
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    .line 169
    .local v1, "chars":[C
    move v4, p3

    .local v4, "i":I
    :goto_2
    if-ge v4, p4, :cond_8

    .line 170
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    .line 171
    .local v5, "inext":I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 173
    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    .line 174
    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    .local v6, "j":I
    sub-int v2, v5, p3

    .local v2, "e":I
    :goto_3
    if-ge v6, v2, :cond_7

    .line 175
    const v7, 0xfeff

    aput-char v7, v1, v6

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 152
    .end local v1    # "chars":[C
    .end local v2    # "e":I
    .end local v4    # "i":I
    .end local v5    # "inext":I
    .end local v6    # "j":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 155
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 169
    .restart local v1    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "inext":I
    :cond_7
    move v4, v5

    goto :goto_2

    .line 181
    .end local v1    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "inext":I
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 135
    return-void
.end method
