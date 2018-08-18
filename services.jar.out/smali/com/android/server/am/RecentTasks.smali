.class Lcom/android/server/am/RecentTasks;
.super Ljava/util/ArrayList;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RecentTasks$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final MAX_RECENT_BITMAPS:I = 0x3

.field private static final MOVE_AFFILIATED_TASKS_TO_FRONT:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static sTaskRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTaskPersister:Lcom/android/server/am/TaskPersister;

.field private final mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentTasks;->TAG_RECENTS:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentTasks;->TAG_TASKS:Ljava/lang/String;

    .line 734
    new-instance v0, Lcom/android/server/am/RecentTasks$1;

    invoke-direct {v0}, Lcom/android/server/am/RecentTasks$1;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "mStackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    const/4 v2, 0x5

    .line 93
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 90
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 94
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    .line 95
    .local v0, "systemDir":Ljava/io/File;
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 96
    new-instance v1, Lcom/android/server/am/TaskPersister;

    invoke-direct {v1, v0, p2, p1, p0}, Lcom/android/server/am/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V

    iput-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    .line 97
    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setRecentTasks(Lcom/android/server/am/RecentTasks;)V

    .line 93
    return-void
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loaded persisted task ids for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method private final moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 413
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v4

    .line 414
    .local v4, "recentsCount":I
    move-object v6, p1

    .line 415
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    move v7, p2

    .line 416
    .local v7, "topIndex":I
    :goto_0
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_0

    if-lez v7, :cond_0

    .line 417
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 418
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 423
    :cond_0
    iget v8, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v8, v9, :cond_5

    const/4 v5, 0x1

    .line 424
    .local v5, "sane":Z
    :goto_1
    move v1, v7

    .line 425
    .local v1, "endIndex":I
    move-object v3, v6

    .line 426
    .local v3, "prev":Lcom/android/server/am/TaskRecord;
    :cond_1
    if-ge v1, v4, :cond_3

    .line 427
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 430
    .local v0, "cur":Lcom/android/server/am/TaskRecord;
    if-ne v0, v6, :cond_6

    .line 432
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_2

    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v8, v10, :cond_8

    .line 433
    :cond_2
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 434
    const-string/jumbo v10, ": first task has next affiliate: "

    .line 433
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v5, 0x0

    .line 489
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 490
    if-ge v1, p2, :cond_4

    .line 491
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 492
    const-string/jumbo v10, ": did not extend to task "

    .line 491
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 492
    const-string/jumbo v10, " @"

    .line 491
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v5, 0x0

    .line 496
    :cond_4
    if-eqz v5, :cond_d

    .line 499
    move v2, v7

    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_c

    .line 502
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 503
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    sub-int v8, v2, v7

    invoke-virtual {p0, v8, v0}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 423
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v5    # "sane":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "sane":Z
    goto/16 :goto_1

    .line 440
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "endIndex":I
    .restart local v3    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v8, v3, :cond_7

    .line 441
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v9, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v8, v9, :cond_8

    .line 442
    :cond_7
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 443
    const-string/jumbo v10, ": middle task "

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 443
    const-string/jumbo v10, " @"

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 444
    const-string/jumbo v10, " has bad next affiliate "

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 445
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 445
    const-string/jumbo v10, " id "

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 445
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 446
    const-string/jumbo v10, ", expected "

    .line 442
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v5, 0x0

    .line 448
    goto/16 :goto_2

    .line 451
    :cond_8
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v8, v10, :cond_9

    .line 453
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_3

    .line 454
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 455
    const-string/jumbo v10, ": last task "

    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 455
    const-string/jumbo v10, " has previous affiliate "

    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 456
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 463
    :cond_9
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_a

    .line 464
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 465
    const-string/jumbo v10, ": task "

    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 465
    const-string/jumbo v10, " has previous affiliate "

    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 466
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 466
    const-string/jumbo v10, " but should be id "

    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 467
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 464
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v5, 0x0

    .line 469
    goto/16 :goto_2

    .line 472
    :cond_a
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v8, v9, :cond_b

    .line 473
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 474
    const-string/jumbo v10, ": task "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 474
    const-string/jumbo v10, " has affiliated id "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 475
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 475
    const-string/jumbo v10, " but should be "

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 476
    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 473
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v5, 0x0

    .line 478
    goto/16 :goto_2

    .line 480
    :cond_b
    move-object v3, v0

    .line 481
    add-int/lit8 v1, v1, 0x1

    .line 482
    if-lt v1, v4, :cond_1

    .line 483
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad chain ran off index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 484
    const-string/jumbo v10, ": last task "

    .line 483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v5, 0x0

    .line 486
    goto/16 :goto_2

    .line 507
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "i":I
    :cond_c
    const/4 v8, 0x1

    return v8

    .line 511
    .end local v2    # "i":I
    :cond_d
    return v11
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 12
    .param p1, "start"    # I

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 744
    .local v6, "startTask":Lcom/android/server/am/TaskRecord;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 747
    .local v0, "affiliateId":I
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, v0, :cond_0

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    .line 748
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    .line 752
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 753
    add-int/lit8 v9, p1, 0x1

    return v9

    .line 757
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_2

    .line 759
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 760
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v9, v0, :cond_1

    .line 761
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 762
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 768
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v10, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 772
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 773
    .local v1, "first":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 774
    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_3

    .line 775
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Link error 1 first.next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 777
    const/4 v9, 0x0

    invoke-virtual {p0, v1, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 780
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 781
    .local v8, "tmpSize":I
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_6

    .line 782
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 783
    .local v4, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 784
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v5, :cond_4

    .line 785
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Link error 2 next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 786
    const-string/jumbo v11, " setting prev="

    .line 785
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 788
    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 790
    :cond_4
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v4, :cond_5

    .line 791
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Link error 3 prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 792
    const-string/jumbo v11, " setting next="

    .line 791
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 794
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 796
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 799
    .end local v4    # "next":Lcom/android/server/am/TaskRecord;
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 800
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_7

    .line 801
    sget-object v9, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Link error 4 last.prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 803
    const/4 v9, 0x0

    invoke-virtual {p0, v3, v9}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 807
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/am/RecentTasks;->addAll(ILjava/util/Collection;)Z

    .line 808
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 811
    add-int v9, p1, v8

    return v9
.end method

.method private syncPersistentTaskIdsLocked()V
    .locals 6

    .prologue
    .line 142
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 144
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 142
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    .end local v2    # "userId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 152
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, v1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 155
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 156
    sget-object v3, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No task ids found for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    const-string/jumbo v5, " mPersistedTaskIds="

    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 141
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return-void
.end method

.method private unloadUserRecentsLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unloading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->removeTasksForUserLocked(I)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method final addLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v12, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 515
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, v9, :cond_0

    .line 516
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v8, v10, :cond_1

    .line 515
    :cond_0
    const/4 v0, 0x1

    .line 519
    .local v0, "isAffiliated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 523
    .local v5, "recentsCount":I
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_3

    .line 526
    return-void

    .line 517
    .end local v0    # "isAffiliated":Z
    .end local v5    # "recentsCount":I
    :cond_1
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v8, v10, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "isAffiliated":Z
    goto :goto_0

    .end local v0    # "isAffiliated":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isAffiliated":Z
    goto :goto_0

    .line 529
    .restart local v5    # "recentsCount":I
    :cond_3
    if-nez v0, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {p0, v11}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_4

    .line 531
    return-void

    .line 535
    :cond_4
    if-eqz v0, :cond_5

    if-lez v5, :cond_5

    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_5

    .line 536
    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v11}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v9, v8, :cond_5

    .line 539
    return-void

    .line 542
    :cond_5
    const/4 v2, 0x0

    .line 546
    .local v2, "needAffiliationFix":Z
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_8

    .line 547
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 548
    .local v6, "taskIndex":I
    if-ltz v6, :cond_9

    .line 549
    if-eqz v0, :cond_6

    .line 559
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 561
    return-void

    .line 551
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 552
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 553
    invoke-virtual {p0, p1, v11}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 556
    return-void

    .line 566
    :cond_7
    const/4 v2, 0x1

    .line 575
    .end local v6    # "taskIndex":I
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, v12}, Lcom/android/server/am/RecentTasks;->trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I

    .line 577
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 578
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    .line 579
    .local v1, "maxRecents":I
    :goto_2
    if-lt v5, v1, :cond_a

    .line 580
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 581
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 582
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 569
    .end local v1    # "maxRecents":I
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskIndex":I
    :cond_9
    sget-object v8, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Task with inRecent not in recents: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v2, 0x1

    goto :goto_1

    .line 584
    .end local v6    # "taskIndex":I
    .restart local v1    # "maxRecents":I
    :cond_a
    iput-boolean v12, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 585
    if-eqz v0, :cond_b

    if-eqz v2, :cond_e

    .line 588
    :cond_b
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 636
    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    .line 638
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 514
    :cond_d
    return-void

    .line 590
    :cond_e
    if-eqz v0, :cond_c

    .line 593
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 594
    .local v3, "other":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_f

    .line 595
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 597
    :cond_f
    if-eqz v3, :cond_13

    .line 598
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 599
    .local v4, "otherIndex":I
    if-ltz v4, :cond_12

    .line 602
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v3, v8, :cond_10

    .line 605
    add-int/lit8 v6, v4, 0x1

    .line 613
    .restart local v6    # "taskIndex":I
    :goto_4
    invoke-virtual {p0, v6, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 616
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 618
    return-void

    .line 609
    .end local v6    # "taskIndex":I
    :cond_10
    move v6, v4

    .restart local v6    # "taskIndex":I
    goto :goto_4

    .line 623
    :cond_11
    const/4 v2, 0x1

    goto :goto_3

    .line 627
    .end local v6    # "taskIndex":I
    :cond_12
    const/4 v2, 0x1

    goto :goto_3

    .line 632
    .end local v4    # "otherIndex":I
    :cond_13
    const/4 v2, 0x1

    goto :goto_3
.end method

.method cleanupLocked(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    const/high16 v11, 0x800000

    const/4 v10, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 311
    .local v5, "recentsCount":I
    if-nez v5, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 318
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_d

    .line 319
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 320
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    iget v7, v6, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v7, p1, :cond_2

    .line 318
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 324
    :cond_2
    iget-boolean v7, v6, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_3

    .line 326
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 327
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 328
    sget-object v7, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing auto-remove without activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    :cond_3
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    .line 333
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 334
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_5

    .line 339
    :try_start_0
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 340
    const/high16 v8, 0x10000000

    .line 339
    invoke-interface {v4, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 345
    if-nez v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpActivityInfo:Landroid/content/pm/ActivityInfo;

    if-ne v0, v7, :cond_a

    .line 354
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    .line 355
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 354
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 356
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_7

    .line 358
    :try_start_1
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 359
    const/16 v8, 0x2000

    .line 358
    invoke-interface {v4, v7, v8, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 364
    if-nez v1, :cond_6

    .line 365
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 367
    :cond_6
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/RecentTasks;->mTmpAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eq v1, v7, :cond_8

    .line 370
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v11

    if-nez v7, :cond_9

    .line 372
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 373
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 374
    sget-object v7, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing no longer valid recent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 380
    :cond_9
    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_1

    .line 383
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_a
    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v7, :cond_b

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_b

    .line 384
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v11

    if-nez v7, :cond_c

    .line 393
    :cond_b
    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_1

    .line 397
    :cond_c
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_1

    .line 404
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 406
    :goto_2
    if-ge v3, v5, :cond_e

    .line 407
    invoke-direct {p0, v3}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_2

    .line 309
    :cond_e
    return-void

    .line 360
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 341
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method cleanupProtectedComponentTasksLocked(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, -0x1

    .line 279
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v3

    .line 280
    .local v3, "recentsCount":I
    if-nez v3, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 287
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 289
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-eq p1, v8, :cond_2

    iget v5, v4, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v5, p1, :cond_2

    .line 287
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 294
    :cond_2
    :try_start_0
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    .line 295
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface {v2, v6, v7, v5, p1}, Landroid/content/pm/IPackageManager;->isComponentProtected(Ljava/lang/String;ILandroid/content/ComponentName;I)Z

    move-result v5

    .line 294
    if-eqz v5, :cond_1

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 297
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method flush()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 185
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 184
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 187
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->flush()V

    .line 183
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method loadUserRecentsLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 110
    sget-object v0, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " into memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->cleanupProtectedComponentTasksLocked(I)V

    .line 114
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 106
    :cond_0
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/RecentTasks;->syncPersistentTaskIdsLocked()V

    .line 138
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    .line 132
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 261
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 262
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 264
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 264
    if-eqz v3, :cond_0

    .line 266
    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v3, p3, :cond_0

    .line 267
    iget-boolean v3, v2, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    if-eq v3, p2, :cond_0

    .line 268
    iput-boolean p2, v2, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 269
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 262
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 260
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method onSystemReadyLocked()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister;->startPersisting()V

    .line 166
    return-void
.end method

.method removeTasksForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 244
    if-gtz p1, :cond_0

    .line 245
    sget-object v2, Lcom/android/server/am/RecentTasks;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t remove recent task on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 251
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_1

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 255
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 249
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 243
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    .line 233
    .local v1, "recentsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 235
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    .line 236
    return-object v2

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method taskIdTakenForUserLocked(II)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 128
    invoke-direct {p0, p2}, Lcom/android/server/am/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    .line 129
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I
    .locals 17
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "doTrim"    # Z

    .prologue
    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v8

    .line 648
    .local v8, "recentsCount":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 649
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    move-result v2

    .line 650
    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    add-int/lit8 v6, v15, -0x1

    .line 651
    .local v6, "maxRecents":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_11

    .line 652
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    .line 653
    .local v12, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    if-eq v0, v12, :cond_6

    .line 654
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v15, :cond_2

    iget-object v15, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v15, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 651
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 649
    .end local v4    # "i":I
    .end local v6    # "maxRecents":I
    .end local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    .local v2, "document":Z
    goto :goto_0

    .line 657
    .end local v2    # "document":Z
    .restart local v4    # "i":I
    .restart local v6    # "maxRecents":I
    .restart local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v0, v12, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 660
    const/4 v15, 0x3

    if-le v4, v15, :cond_3

    .line 661
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    .line 663
    :cond_3
    iget-object v13, v12, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 665
    .local v13, "trIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v15, :cond_7

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 666
    :goto_3
    if-eqz v5, :cond_8

    invoke-virtual {v5, v13}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v11

    .line 667
    :goto_4
    const/4 v7, 0x0

    .line 668
    .local v7, "multiTasksAllowed":Z
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 669
    .local v3, "flags":I
    const/high16 v15, 0x10080000

    and-int/2addr v15, v3

    if-eqz v15, :cond_4

    .line 670
    const/high16 v15, 0x8000000

    and-int/2addr v15, v3

    if-eqz v15, :cond_4

    .line 671
    const/4 v7, 0x1

    .line 673
    :cond_4
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    .line 674
    :goto_5
    if-eqz v2, :cond_a

    move v1, v14

    .line 675
    :goto_6
    if-nez v10, :cond_5

    if-eqz v11, :cond_b

    .line 679
    :cond_5
    :goto_7
    if-eqz v1, :cond_d

    .line 681
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_c

    .line 682
    iget-object v15, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_c

    .line 683
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 686
    .local v9, "sameActivity":Z
    :goto_8
    if-eqz v9, :cond_0

    .line 689
    if-lez v6, :cond_6

    .line 690
    add-int/lit8 v6, v6, -0x1

    .line 691
    if-eqz p2, :cond_0

    if-eqz v11, :cond_0

    if-nez v7, :cond_0

    .line 706
    .end local v3    # "flags":I
    .end local v7    # "multiTasksAllowed":Z
    .end local v9    # "sameActivity":Z
    .end local v13    # "trIntent":Landroid/content/Intent;
    :cond_6
    if-nez p2, :cond_e

    .line 709
    return v4

    .line 665
    .restart local v13    # "trIntent":Landroid/content/Intent;
    :cond_7
    const/4 v10, 0x0

    .local v10, "sameAffinity":Z
    goto :goto_3

    .line 666
    .end local v10    # "sameAffinity":Z
    :cond_8
    const/4 v11, 0x0

    .local v11, "sameIntentFilter":Z
    goto :goto_4

    .line 673
    .end local v11    # "sameIntentFilter":Z
    .restart local v3    # "flags":I
    .restart local v7    # "multiTasksAllowed":Z
    :cond_9
    const/4 v14, 0x0

    .local v14, "trIsDocument":Z
    goto :goto_5

    .line 674
    .end local v14    # "trIsDocument":Z
    :cond_a
    const/4 v1, 0x0

    .local v1, "bothDocuments":Z
    goto :goto_6

    .line 675
    .end local v1    # "bothDocuments":Z
    :cond_b
    if-eqz v1, :cond_0

    goto :goto_7

    .line 681
    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    .line 700
    :cond_d
    if-nez v2, :cond_0

    if-eqz v14, :cond_6

    goto/16 :goto_2

    .line 715
    .end local v3    # "flags":I
    .end local v7    # "multiTasksAllowed":Z
    .end local v13    # "trIntent":Landroid/content/Intent;
    :cond_e
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 716
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 717
    move-object/from16 v0, p1

    if-eq v0, v12, :cond_f

    .line 718
    invoke-virtual {v12}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 720
    :cond_f
    add-int/lit8 v4, v4, -0x1

    .line 721
    add-int/lit8 v8, v8, -0x1

    .line 722
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v15, :cond_10

    .line 725
    move-object/from16 p1, v12

    .line 727
    :cond_10
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15}, Lcom/android/server/am/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto/16 :goto_2

    .line 730
    .end local v12    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_11
    const/4 v15, -0x1

    return v15
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentTasks;->unloadUserRecentsLocked(I)V

    .line 227
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 228
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskPersister;->unloadUserDataFromMemory(I)V

    .line 225
    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .locals 6

    .prologue
    .line 196
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 197
    .local v4, "usersWithRecentsLoaded":[I
    const/4 v1, 0x0

    .line 198
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 199
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 200
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/am/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "len":I
    .local v2, "len":I
    aput v3, v4, v1

    move v1, v2

    .line 198
    .end local v2    # "len":I
    .restart local v1    # "len":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v3    # "userId":I
    :cond_1
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 206
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    return-object v5

    .line 208
    :cond_2
    return-object v4
.end method
