.class Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mContext:Landroid/content/Context;

.field private mPendingListenerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 249
    invoke-static {p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    .line 250
    iput-object p2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 255
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 270
    const-string/jumbo v2, "CallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p2

    .line 273
    check-cast v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 274
    .local v13, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v13, :cond_1

    .line 279
    const-string/jumbo v2, "CallerInfoAsyncQuery"

    const-string/jumbo v3, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz p3, :cond_0

    .line 281
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_0
    return-void

    .line 286
    :cond_1
    iget v2, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Runnable;

    .line 288
    .local v15, "r":Ljava/lang/Runnable;
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 290
    .end local v15    # "r":Ljava/lang/Runnable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->-wrap1(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V

    .line 293
    if-eqz p3, :cond_3

    .line 294
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_3
    return-void

    .line 301
    .end local v16    # "r$iterator":Ljava/util/Iterator;
    :cond_4
    iget v2, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_5

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 306
    :cond_5
    new-instance v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;)V

    .line 307
    .local v4, "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 308
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local v4    # "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v2, :cond_a

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v2, :cond_8

    .line 314
    :cond_7
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    .line 315
    const-string/jumbo v3, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    .line 314
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_8
    iget v2, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 326
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 364
    :cond_9
    :goto_1
    new-instance v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;)V

    .line 365
    .restart local v4    # "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 366
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v4    # "endMarker":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :cond_a
    iget-object v2, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v2, :cond_10

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mPendingListenerCallbacks:Ljava/util/List;

    new-instance v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v13, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :goto_2
    if-eqz p3, :cond_b

    .line 385
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_b
    return-void

    .line 327
    :cond_c
    iget v2, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 328
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget v3, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMail(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 330
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    iget-object v3, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 333
    invoke-static {v2, v3, v5}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v14

    .line 335
    .local v14, "newCallerInfo":Lcom/android/internal/telephony/CallerInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eq v14, v2, :cond_e

    .line 336
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 342
    :cond_e
    iget-object v2, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 344
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/telephony/CallerInfo;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-static {v3, v5, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 352
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 354
    const/4 v2, 0x6

    iput v2, v13, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 355
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object v7, v13

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void

    .line 381
    .end local v14    # "newCallerInfo":Lcom/android/internal/telephony/CallerInfo;
    :cond_10
    const-string/jumbo v2, "CallerInfoAsyncQuery"

    const-string/jumbo v3, "There is no listener to notify for this query."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
