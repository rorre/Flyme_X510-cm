.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingHelper$Record;
    }
.end annotation


# static fields
.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SOUND_TIMEOUT:Ljava/lang/String; = "sound-timeout"

.field private static final ATT_TOPIC_ID:Ljava/lang/String; = "id"

.field private static final ATT_TOPIC_LABEL:Ljava/lang/String; = "label"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private mFlymeAuthorityWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

.field private mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p3, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p4, "extractorNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/server/notification/NotificationComparator;

    invoke-direct {v7}, Lcom/android/server/notification/NotificationComparator;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    new-instance v7, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v7}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->initFlymeExtraFields()V

    array-length v0, p4

    .local v0, "N":I
    new-array v7, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    aget-object v8, p4, v6

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 88
    .local v5, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 89
    .local v4, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v4, v7, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 90
    invoke-interface {v4, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 91
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v4, v7, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v4    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v5    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Problem accessing extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 94
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t instantiate extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 92
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    const/16 v8, -0x3e8

    .line 416
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 417
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 418
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 419
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 420
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    const-string/jumbo v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    const-string/jumbo v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_6

    const-string/jumbo v3, "UNKNOWN_UID"

    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 426
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-eq v3, v8, :cond_1

    .line 427
    const-string/jumbo v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    :cond_1
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_2

    .line 431
    const-string/jumbo v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    :cond_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v3, v8, :cond_3

    .line 435
    const-string/jumbo v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    :cond_3
    iget-wide v4, v2, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 439
    const-string/jumbo v3, " soundTimeout="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-wide v4, v2, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 441
    const-string/jumbo v3, "ms"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 417
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 424
    :cond_6
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 415
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_7
    return-void
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;

    .line 185
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    .line 186
    new-instance v1, Lcom/android/server/notification/RankingHelper$Record;

    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    invoke-direct {v1, v3}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    .line 187
    .restart local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iput-object p1, v1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    .line 188
    iput p2, v1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 189
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    return-object v1
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 306
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static tryParseBool(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 320
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 321
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    .line 313
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private updateConfig()V
    .locals 3

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 237
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v2}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 235
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 393
    if-nez p3, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 395
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v2, "mSignalExtractors.length = "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    if-nez p3, :cond_1

    .line 405
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    const-string/jumbo v2, "per-package config:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    :cond_1
    const-string/jumbo v2, "Records:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 410
    const-string/jumbo v2, "Restored without uid:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 392
    return-void
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 9
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 500
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 501
    .local v3, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v5

    .line 502
    .local v5, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ban$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 503
    .local v0, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 504
    .local v7, "userId":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 505
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 506
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 508
    .local v2, "banJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "userId"

    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    const-string/jumbo v8, "packageName"

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 510
    :catch_0
    move-exception v4

    .line 511
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 516
    .end local v0    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "banJson":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    :cond_2
    return-object v3
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 13
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    const/16 v12, -0x3e8

    .line 449
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 450
    .local v4, "ranking":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 452
    .local v6, "records":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v7, "noUid"

    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 456
    :goto_0
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 457
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 458
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 459
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p1, :cond_0

    iget-object v7, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 460
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 462
    .local v5, "record":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v7, "userId"

    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 463
    const-string/jumbo v7, "packageName"

    iget-object v8, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-eq v7, v12, :cond_1

    .line 465
    const-string/jumbo v7, "importance"

    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    :cond_1
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v7, :cond_2

    .line 468
    const-string/jumbo v7, "priority"

    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v8}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_2
    iget v7, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v7, v12, :cond_3

    .line 471
    const-string/jumbo v7, "visibility"

    iget v8, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    :cond_3
    iget-wide v8, v3, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 474
    const-string/jumbo v7, "soundTimeout"

    iget-wide v8, v3, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    :cond_4
    :goto_2
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 457
    .end local v5    # "record":Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 483
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_6
    :try_start_2
    const-string/jumbo v7, "records"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 487
    :goto_3
    return-object v4

    .line 484
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    goto :goto_3

    .line 476
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .restart local v5    # "record":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 453
    .end local v0    # "N":I
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v5    # "record":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Lorg/json/JSONException;
    goto/16 :goto_0
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 115
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v5

    .line 116
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v5, v2

    .line 119
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v3

    .line 120
    .local v3, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v3, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v5, v3}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v4

    .line 124
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "RankingHelper"

    const-string/jumbo v6, "NotificationSignalExtractor failed."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v3

    .line 105
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 106
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v3, v2

    .line 107
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    return-object v1

    .line 105
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    return v0
.end method

.method public getNotificationSoundTimeout(Ljava/lang/String;I)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    return-wide v0
.end method

.method public getPackageBans()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 521
    .local v0, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 522
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 523
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 524
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v4, :cond_0

    .line 525
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    return-object v2
.end method

.method public getPriority(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    return v0
.end method

.method public getVisibilityOverride(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    return v0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 10
    .param p1, "removingPackage"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 532
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 534
    :cond_0
    return-void

    .line 532
    :cond_1
    array-length v6, p2

    if-eqz v6, :cond_0

    .line 533
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    .line 532
    if-nez v6, :cond_0

    .line 536
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 537
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 538
    .local v4, "updated":Z
    array-length v6, p2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, p2, v5

    .line 539
    .local v1, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 540
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v3, :cond_2

    .line 543
    :try_start_0
    iget-object v7, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 544
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8, v9}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    const/4 v4, 0x1

    .line 538
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_3
    if-eqz v4, :cond_4

    .line 553
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 531
    :cond_4
    return-void

    .line 547
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 132
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 133
    .local v5, "type":I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v7, "ranking"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    return-void

    .line 136
    :cond_1
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 137
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 138
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_7

    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 140
    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    const-string/jumbo v7, "ranking"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 141
    return-void

    .line 143
    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 144
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    const-string/jumbo v7, "uid"

    sget v8, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    invoke-static {p1, v7, v8}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 146
    .local v6, "uid":I
    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 149
    if-eqz p2, :cond_4

    .line 152
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 157
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 158
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    sget v7, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v6, v7, :cond_6

    .line 159
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 160
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v3, :cond_5

    .line 161
    new-instance v3, Lcom/android/server/notification/RankingHelper$Record;

    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    .line 162
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_5
    :goto_2
    const-string/jumbo v7, "importance"

    const/16 v8, -0x3e8

    invoke-static {p1, v7, v8}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 168
    const-string/jumbo v7, "priority"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 169
    const-string/jumbo v7, "visibility"

    const/16 v8, -0x3e8

    invoke-static {p1, v7, v8}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const-string v7, "sound-timeout"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v3, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    goto/16 :goto_0

    .line 153
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 165
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_6
    invoke-direct {p0, v1, v6}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v3

    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    goto :goto_2

    .line 175
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v6    # "uid":I
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Failed to reach END_DOCUMENT"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 377
    .local v0, "wasEnabled":Z
    :goto_0
    if-ne v0, p3, :cond_1

    .line 378
    return-void

    .end local v0    # "wasEnabled":Z
    :cond_0
    move v0, v1

    .line 376
    goto :goto_0

    .line 380
    .restart local v0    # "wasEnabled":Z
    :cond_1
    if-eqz p3, :cond_2

    const/16 v1, -0x3e8

    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    .line 375
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 372
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 370
    return-void
.end method

.method public setNotificationSoundTimeout(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "timeout"    # J

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-wide p3, v0, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    .line 389
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 387
    return-void
.end method

.method public setPriority(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 338
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 336
    return-void
.end method

.method public setVisibilityOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 355
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 353
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 247
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 246
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 255
    add-int/lit8 v5, v0, -0x1

    :goto_1
    if-ltz v5, :cond_2

    .line 256
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 257
    .local v7, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 258
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 260
    .local v6, "isGroupSummary":Z
    if-nez v6, :cond_1

    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 255
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 261
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 253
    .end local v1    # "groupKey":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 266
    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_7

    .line 267
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 268
    .restart local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 269
    .local v2, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "groupSortKey":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 278
    const-string/jumbo v4, "nsk"

    .line 285
    .local v4, "groupSortKeyPortion":Ljava/lang/String;
    :goto_4
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 287
    .restart local v6    # "isGroupSummary":Z
    const-string/jumbo v10, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    .line 288
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x30

    :goto_5
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    .line 289
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v11, v12

    .line 290
    if-eqz v6, :cond_6

    const/16 v8, 0x30

    :goto_6
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v11, v12

    .line 291
    const/4 v8, 0x3

    aput-object v4, v11, v8

    .line 292
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v11, v12

    .line 287
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 286
    invoke-virtual {v7, v8}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 279
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    :cond_3
    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 280
    const-string/jumbo v4, "esk"

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    .line 282
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "gsk="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    .line 288
    .restart local v6    # "isGroupSummary":Z
    :cond_5
    const/16 v8, 0x31

    goto :goto_5

    .line 290
    :cond_6
    const/16 v8, 0x31

    goto :goto_6

    .line 294
    .end local v2    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "groupSortKey":Ljava/lang/String;
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 298
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const-string/jumbo v4, "ranking"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string/jumbo v4, "version"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 199
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_a

    .line 200
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 202
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_1

    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v5, -0x3e8

    if-ne v4, v5, :cond_2

    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v4, :cond_8

    :cond_2
    const/4 v1, 0x1

    .local v1, "hasNonDefaultSettings":Z
    :goto_2
    invoke-direct {p0, v3, v1}, Lcom/android/server/notification/RankingHelper;->isFlymeNonDefaultSettings(Lcom/android/server/notification/RankingHelper$Record;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v4, "package"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "name"

    iget-object v5, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v5, -0x3e8

    if-eq v4, v5, :cond_3

    .line 213
    const-string/jumbo v4, "importance"

    iget v5, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    :cond_3
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v4, :cond_4

    .line 216
    const-string/jumbo v4, "priority"

    iget v5, v3, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    :cond_4
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v5, -0x3e8

    if-eq v4, v5, :cond_5

    .line 219
    const-string/jumbo v4, "visibility"

    iget v5, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :cond_5
    iget-wide v4, v3, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 222
    const-string/jumbo v4, "sound-timeout"

    iget-wide v6, v3, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    if-nez p2, :cond_7

    const-string v4, "uid"

    iget v5, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    :cond_7
    const-string/jumbo v4, "package"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 207
    .end local v1    # "hasNonDefaultSettings":Z
    :cond_8
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v5, -0x3e8

    if-ne v4, v5, :cond_2

    .line 208
    iget-wide v4, v3, Lcom/android/server/notification/RankingHelper$Record;->soundTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 232
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_a
    const-string/jumbo v4, "ranking"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    return-void
.end method

.method private getDefaultHeadsUpVisibility(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string v2, "headsup"

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .local v0, "visibility":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    return v4

    :cond_1
    return v0
.end method

.method private initFlymeExtraFields()V
    .locals 4

    .prologue
    new-instance v1, Lcom/android/server/notification/ConfigCloud;

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/notification/ConfigCloud;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    new-instance v2, Lcom/android/server/notification/RankingControllerImpl;

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/android/server/notification/RankingControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeAuthorityWhiteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$array;->mz_notification_management_white_list:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "whiteList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeAuthorityWhiteList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private isFlymeNonDefaultSettings(Lcom/android/server/notification/RankingHelper$Record;Z)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .param p2, "hasNonDefaultSettings"    # Z

    .prologue
    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-boolean v1, p1, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFlymeExtraFields(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "r"    # Lcom/android/server/notification/RankingHelper$Record;

    .prologue
    const/4 v4, -0x1

    const-string v2, "remind"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/server/notification/RankingHelper;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "remindEnable":Z
    const-string v2, "headsup"

    invoke-static {p1, v2, v4}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .local v0, "headsUp":I
    if-nez v1, :cond_0

    iput-boolean v1, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    :cond_0
    if-eq v0, v4, :cond_1

    iput v0, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    :cond_1
    return-void
.end method

.method private static safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseBool(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private writeFlymeExtraFields(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    if-nez v0, :cond_0

    const-string v0, "remind"

    iget-boolean v1, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget v0, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "headsup"

    iget v1, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method


# virtual methods
.method public addPackageClickNumber(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v1, p1}, Lcom/flyme/server/notfication/RankingController;->notificationOnClick(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addPackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v1, p1}, Lcom/flyme/server/notfication/RankingController;->notificationOnCanceledByUser(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addPackageSendNumber(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->shouldAffectIntercept:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v1, p1}, Lcom/flyme/server/notfication/RankingController;->addNotification(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v1, p1}, Lcom/flyme/server/notfication/RankingController;->getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->mFlymeFilter:Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$FlymeNotificationFilter;->score:F

    return v1
.end method

.method public getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1, p2}, Lcom/flyme/server/notfication/RankingController;->getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPackageHeadsUpVisibility(Ljava/lang/String;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ConfigCloud;->isPackageCovered(Ljava/lang/String;)Z

    move-result v0

    .local v0, "covered":Z
    const/4 v2, -0x1

    .local v2, "visibility":I
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string v4, "headsup"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v6, :cond_0

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    :cond_1
    if-ne v2, v5, :cond_4

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;

    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    :cond_2
    if-gt v2, v6, :cond_3

    if-gez v2, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getDefaultHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v2

    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_4
    return v2
.end method

.method public getPackageRemindEnable(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPackageScore(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public hasLauncherActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "launcherapps"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, p2, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .end local v1    # "launcherApps":Landroid/content/pm/LauncherApps;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    :catch_0
    move-exception v0

    :cond_1
    return v3
.end method

.method public isAuthorityWhitePackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeAuthorityWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V
    .locals 1
    .param p1, "firewall"    # Lcom/android/server/notification/NotificationFirewall;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V

    return-void
.end method

.method public setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void
.end method

.method public setPackageRemindEnable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v0

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void
.end method
