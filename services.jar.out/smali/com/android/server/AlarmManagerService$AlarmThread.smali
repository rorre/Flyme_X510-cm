.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2557
    const-string/jumbo v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2555
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2562
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2566
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->-wrap4(Lcom/android/server/AlarmManagerService;J)I

    move-result v14

    .line 2567
    .local v14, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->-set0(Lcom/android/server/AlarmManagerService;J)J

    .line 2569
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2572
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2574
    .local v4, "nowELAPSED":J
    const/high16 v2, 0x10000

    and-int/2addr v2, v14

    if-eqz v2, :cond_1

    .line 2579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2580
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v12, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 2582
    .local v12, "lastTimeChangeClockTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-wide/from16 v18, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v18, v4, v18

    .line 2581
    add-long v8, v12, v18

    .local v8, "expectedClockTime":J
    monitor-exit v15

    .line 2584
    const-wide/16 v18, 0x0

    cmp-long v2, v12, v18

    if-eqz v2, :cond_0

    const-wide/16 v18, 0x1f4

    sub-long v18, v8, v18

    cmp-long v2, v6, v18

    if-gez v2, :cond_3

    .line 2591
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v15}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v15}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2597
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 2598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 2599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v15

    .line 2601
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2602
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2608
    or-int/lit8 v14, v14, 0x25

    .line 2612
    .end local v8    # "expectedClockTime":J
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "lastTimeChangeClockTime":J
    :cond_1
    const/high16 v2, 0x10000

    if-eq v14, v2, :cond_7

    .line 2615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2636
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    move-result v10

    .line 2637
    .local v10, "hasWakeup":Z
    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 2642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v18

    const-wide/16 v20, 0x3

    mul-long v18, v18, v20

    const-wide/16 v20, 0x2

    div-long v18, v18, v20

    .line 2642
    add-long v18, v18, v4

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 2645
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move/from16 v18, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 2647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v10    # "hasWakeup":Z
    :goto_2
    monitor-exit v15

    goto/16 :goto_0

    .line 2579
    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    .line 2585
    .restart local v8    # "expectedClockTime":J
    .restart local v12    # "lastTimeChangeClockTime":J
    :cond_3
    const-wide/16 v18, 0x1f4

    add-long v18, v18, v8

    cmp-long v2, v6, v18

    if-lez v2, :cond_1

    goto/16 :goto_1

    .line 2596
    :catchall_1
    move-exception v2

    monitor-exit v15

    throw v2

    .line 2654
    .end local v8    # "expectedClockTime":J
    .end local v12    # "lastTimeChangeClockTime":J
    .restart local v10    # "hasWakeup":Z
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)V

    .line 2656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    move-wide/from16 v18, v0

    sub-long v16, v4, v18

    .line 2661
    .local v16, "thisDelayTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-wide/from16 v18, v0

    cmp-long v2, v18, v16

    if-gez v2, :cond_5

    .line 2663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2665
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2667
    .end local v16    # "thisDelayTime":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_2

    .line 2615
    .end local v10    # "hasWakeup":Z
    :catchall_2
    move-exception v2

    monitor-exit v15

    throw v2

    .line 2672
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2675
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_2

    .line 2672
    :catchall_3
    move-exception v2

    monitor-exit v15

    throw v2
.end method
