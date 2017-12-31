.class public final Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;
.super Landroid/os/Handler;
.source "SimPhoneBookAdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;
    }
.end annotation


# static fields
.field static final ACTION_ADN_INIT_DONE:Ljava/lang/String; = "android.intent.action.ACTION_ADN_INIT_DONE"

.field private static final DBG:Z = true

.field static final EVENT_INIT_ADN_DONE:I = 0x1

.field static final EVENT_LOAD_ADN_RECORD_DONE:I = 0x3

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x4

.field static final EVENT_QUERY_ADN_RECORD_DONE:I = 0x2

.field static final EVENT_SIM_REFRESH:I = 0x6

.field static final EVENT_UPDATE_ADN_RECORD_DONE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "SimPhoneBookAdnRecordCache"


# instance fields
.field extRecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAddNumCount:I

.field private mAdnCount:I

.field mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mAdnUpdatingWaiter:Landroid/os/Message;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mEmailCount:I

.field private mLock:Ljava/lang/Object;

.field protected mPhoneId:I

.field private mRecCount:I

.field private mRefreshAdnCache:Z

.field private mSimPbRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mValidAddNumCount:I

.field private mValidAdnCount:I

.field private mValidEmailCount:I

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 66
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 68
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 69
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 70
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 71
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 72
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 73
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 76
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    .line 82
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 85
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->extRecList:Landroid/util/SparseArray;

    .line 266
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;-><init>(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 101
    iput p2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mContext:Landroid/content/Context;

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAdnInitDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method private clearUpdatingWriter()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const-string/jumbo v1, "SimPhoneBookAdnRecordCache reset"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 119
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 468
    const-string/jumbo v0, "SimPhoneBookAdnRecordCache"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method private notifyAndClearWaiters()V
    .locals 5

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 141
    .local v1, "response":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 142
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 143
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 138
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "response":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void
.end method

.method private refreshAdnCache()V
    .locals 1

    .prologue
    .line 477
    const-string/jumbo v0, "refreshAdnCache"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->queryAdnRecord()V

    .line 476
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 128
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdnCount()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    return v0
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    return v0
.end method

.method public getUsedAdnCount()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    return v0
.end method

.method public getUsedAnrCount()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    return v0
.end method

.method public getUsedEmailCount()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 290
    .local v12, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v12    # "ar":Landroid/os/AsyncResult;
    check-cast v12, Landroid/os/AsyncResult;

    .line 293
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    .line 296
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_ADN_INIT_DONE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v16, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcast intent ACTION_ADN_INIT_DONE for mPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 302
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init ADN done Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_1
    const-string/jumbo v2, "Querying ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 309
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 311
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "response$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Message;

    .line 315
    .local v19, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query adn record failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v19    # "response":Landroid/os/Message;
    .end local v20    # "response$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 317
    .restart local v20    # "response$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 320
    .end local v20    # "response$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 321
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 322
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 323
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 324
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x4

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 325
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x5

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max ADN count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    const-string/jumbo v3, ", Valid ADN count is: "

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 328
    const-string/jumbo v3, ", Email count is: "

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 328
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 329
    const-string/jumbo v3, ", Valid Email count is: "

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 329
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    const-string/jumbo v3, ", Add number count is: "

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    const-string/jumbo v3, ", Valid Add number count is: "

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 331
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_0

    .line 334
    :cond_4
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 339
    :pswitch_2
    const-string/jumbo v2, "Loading ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 340
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 344
    iget-object v9, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;

    .line 345
    .local v9, "AdnRecordsGroup":[Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v2, v9

    if-ge v14, v2, :cond_6

    .line 346
    aget-object v2, v9, v14

    if-eqz v2, :cond_5

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 348
    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getRecordIndex()I

    move-result v4

    .line 349
    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    .line 350
    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 351
    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 352
    aget-object v3, v9, v14

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 347
    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 345
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 357
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_0

    .line 358
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 363
    .end local v9    # "AdnRecordsGroup":[Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    .end local v14    # "i":I
    :pswitch_3
    const-string/jumbo v2, "Loading all ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 365
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V

    goto/16 :goto_0

    .line 364
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 372
    :pswitch_4
    const-string/jumbo v2, "Update ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 373
    const/4 v13, 0x0

    .line 375
    .local v13, "e":Ljava/lang/Exception;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b

    .line 376
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 377
    .local v15, "index":I
    iget-object v10, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 378
    .local v10, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v17, v2, v3

    .line 380
    .local v17, "recordIndex":I
    if-nez v15, :cond_7

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for added ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 383
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 414
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "index":I
    .end local v17    # "recordIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 417
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    goto/16 :goto_0

    .line 386
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "index":I
    .restart local v17    # "recordIndex":I
    :cond_7
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v15, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    .line 389
    .local v11, "adnRecordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for deleted ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 390
    move/from16 v0, v17

    if-ne v0, v11, :cond_8

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v15, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    goto :goto_3

    .line 394
    :cond_8
    new-instance v13, Ljava/lang/RuntimeException;

    .line 395
    .end local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "The index for deleted ADN record did not match"

    .line 394
    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v13, "e":Ljava/lang/Exception;
    goto :goto_3

    .line 399
    .end local v11    # "adnRecordIndex":I
    .local v13, "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v15, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    .line 400
    .restart local v11    # "adnRecordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for changed ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 401
    move/from16 v0, v17

    if-ne v0, v11, :cond_a

    .line 402
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v15, -0x1

    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 405
    :cond_a
    new-instance v13, Ljava/lang/RuntimeException;

    .line 406
    .end local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "The index for changed ADN record did not match"

    .line 405
    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v13, "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 410
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "adnRecordIndex":I
    .end local v15    # "index":I
    .end local v17    # "recordIndex":I
    .local v13, "e":Ljava/lang/Exception;
    :cond_b
    new-instance v13, Ljava/lang/RuntimeException;

    .end local v13    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Update adn record failed"

    .line 411
    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 410
    invoke-direct {v13, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v13, "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 422
    .end local v13    # "e":Ljava/lang/Exception;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v12    # "ar":Landroid/os/AsyncResult;
    check-cast v12, Landroid/os/AsyncResult;

    .line 423
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "SIM REFRESH occurred"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 424
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 425
    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 426
    .local v18, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    if-nez v18, :cond_c

    .line 427
    const-string/jumbo v2, "IccRefreshResponse received is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    :cond_c
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v2, :cond_d

    .line 432
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 433
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    goto/16 :goto_0

    .line 436
    .end local v18    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SIM refresh Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public invalidateAdnCache()V
    .locals 1

    .prologue
    .line 472
    const-string/jumbo v0, "invalidateAdnCache"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 471
    return-void
.end method

.method public queryAdnRecord()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 153
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 154
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 155
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 157
    const-string/jumbo v1, "start to queryAdnRecord"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getAdnRecord(Landroid/os/Message;)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAdnRecordsInfo(Landroid/os/Handler;)V

    .line 150
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SimPhoneBookAdnRecordCache"

    const-string/jumbo v2, "Interrupted Exception in queryAdnRecord"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestLoadAllAdnLike(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    const-string/jumbo v0, "ADN cache has already filled in"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 188
    return-void

    .line 185
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 191
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 173
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->clearUpdatingWriter()V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 116
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 110
    return-void
.end method

.method public updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .locals 9
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 196
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 198
    .local v3, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 199
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 200
    const-string/jumbo v6, "ADN cache has already filled in"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 201
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v6, :cond_0

    .line 202
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v7

    .line 210
    if-nez v3, :cond_2

    .line 211
    const-string/jumbo v6, "Sim PhoneBook Adn list not exist"

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 212
    return-void

    .line 206
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 215
    :cond_2
    const/4 v1, -0x1

    .line 216
    .local v1, "index":I
    const/4 v0, 0x1

    .line 217
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 222
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 224
    move v1, v0

    .line 230
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    :goto_2
    const/4 v6, -0x1

    if-ne v1, v6, :cond_7

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sim PhoneBook Adn record don\'t exist for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 232
    return-void

    .line 219
    :cond_5
    const/4 v1, 0x0

    .line 217
    goto :goto_2

    .line 227
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_7
    if-nez v1, :cond_8

    iget v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    if-ne v6, v7, :cond_8

    .line 236
    const-string/jumbo v6, "Sim PhoneBook Adn record is full"

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 237
    return-void

    .line 240
    :cond_8
    if-nez v1, :cond_b

    const/4 v4, 0x0

    .line 242
    .local v4, "recordIndex":I
    :goto_3
    new-instance v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;-><init>()V

    .line 243
    .local v5, "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    iput v4, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mRecordIndex:I

    .line 244
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 245
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    .line 246
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 247
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 248
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmailCount:I

    .line 250
    :cond_9
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 251
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    .line 252
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumCount:I

    .line 255
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v6, :cond_c

    .line 256
    const-string/jumbo v6, "Have pending update for Sim PhoneBook Adn"

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 257
    return-void

    .line 240
    .end local v4    # "recordIndex":I
    .end local v5    # "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    :cond_b
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v4

    .restart local v4    # "recordIndex":I
    goto :goto_3

    .line 260
    .restart local v5    # "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    :cond_c
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 262
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 263
    const/4 v7, 0x5

    invoke-virtual {p0, v7, v1, v8, p2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 262
    invoke-interface {v6, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->updateAdnRecord(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;Landroid/os/Message;)V

    .line 195
    return-void
.end method
