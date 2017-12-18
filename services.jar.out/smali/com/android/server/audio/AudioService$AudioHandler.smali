.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 4553
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4844
    if-eqz p1, :cond_0

    .line 4846
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4847
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4843
    :cond_0
    :goto_0
    return-void

    .line 4848
    :catch_0
    move-exception v0

    .line 4849
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onLoadSoundEffects()Z
    .locals 18

    .prologue
    .line 4626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 4627
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 4628
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "onLoadSoundEffects() called before boot complete"

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4629
    const/4 v13, 0x0

    monitor-exit v14

    return v13

    .line 4632
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    if-eqz v13, :cond_1

    .line 4633
    const/4 v13, 0x1

    monitor-exit v14

    return v13

    .line 4636
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;)V

    .line 4638
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v15, Landroid/media/SoundPool$Builder;

    invoke-direct {v15}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 4639
    const/16 v16, 0x4

    .line 4638
    invoke-virtual/range {v15 .. v16}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v15

    .line 4640
    new-instance v16, Landroid/media/AudioAttributes$Builder;

    invoke-direct/range {v16 .. v16}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4641
    const/16 v17, 0xd

    .line 4640
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v16

    .line 4642
    const/16 v17, 0x4

    .line 4640
    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v16

    .line 4638
    invoke-virtual/range {v15 .. v16}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 4646
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v15, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 4648
    const/4 v2, 0x3

    .local v2, "attempts":I
    move v3, v2

    .line 4649
    .end local v2    # "attempts":I
    .local v3, "attempts":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    if-nez v13, :cond_2

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    if-lez v3, :cond_3

    .line 4652
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move v3, v2

    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    goto :goto_0

    :cond_2
    move v2, v3

    .line 4658
    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    if-nez v13, :cond_5

    .line 4659
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 4661
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 4662
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4664
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/SoundPool;->release()V

    .line 4666
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4667
    const/4 v13, 0x0

    monitor-exit v14

    return v13

    .line 4653
    :catch_0
    move-exception v4

    .line 4654
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "Interrupted while waiting sound pool listener thread."

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 4626
    .end local v2    # "attempts":I
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 4675
    .restart local v2    # "attempts":I
    :cond_5
    :try_start_6
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v9, v13, [I

    .line 4676
    .local v9, "poolId":[I
    const/4 v6, 0x0

    .local v6, "fileIdx":I
    :goto_2
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_6

    .line 4677
    const/4 v13, -0x1

    aput v13, v9, v6

    .line 4676
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4685
    :cond_6
    const/4 v8, 0x0

    .line 4686
    .local v8, "numSamples":I
    const/4 v5, 0x0

    .local v5, "effect":I
    :goto_3
    const/16 v13, 0xa

    if-ge v5, v13, :cond_b

    .line 4688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aget v13, v13, v15

    if-nez v13, :cond_7

    .line 4686
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4691
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x0

    aget v13, v13, v15

    aget v13, v9, v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_a

    .line 4692
    const-string/jumbo v7, ""

    .line 4693
    .local v7, "filePath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/data/system/theme/audio/ui/"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4694
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v16

    aget-object v16, v16, v5

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4693
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4695
    .local v12, "theme_file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 4696
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 4702
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v10

    .line 4703
    .local v10, "sampleId":I
    if-gtz v10, :cond_9

    .line 4704
    const-string/jumbo v13, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Soundpool could not load file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4698
    .end local v10    # "sampleId":I
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4699
    const-string/jumbo v15, "/media/audio/ui/"

    .line 4698
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4700
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v16

    aget-object v16, v16, v5

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4698
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 4706
    .restart local v10    # "sampleId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aput v10, v13, v15

    .line 4707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x0

    aget v13, v13, v15

    aput v10, v9, v13

    .line 4708
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 4711
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v10    # "sampleId":I
    .end local v12    # "theme_file":Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    .line 4712
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v15}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v15

    aget-object v15, v15, v5

    const/16 v16, 0x0

    aget v15, v15, v16

    aget v15, v9, v15

    .line 4711
    const/16 v16, 0x1

    aput v15, v13, v16

    goto/16 :goto_4

    .line 4716
    :cond_b
    if-lez v8, :cond_10

    .line 4717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4719
    const/4 v2, 0x3

    .line 4720
    const/4 v11, 0x1

    .local v11, "status":I
    move v3, v2

    .line 4721
    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    :goto_6
    const/4 v13, 0x1

    if-ne v11, v13, :cond_c

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    if-lez v3, :cond_d

    .line 4723
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v13

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 4724
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v11

    :goto_7
    move v3, v2

    .end local v2    # "attempts":I
    .restart local v3    # "attempts":I
    goto :goto_6

    :cond_c
    move v2, v3

    .line 4733
    .end local v3    # "attempts":I
    .restart local v2    # "attempts":I
    :cond_d
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    if-eqz v13, :cond_e

    .line 4734
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .line 4735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4737
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 4738
    if-eqz v11, :cond_12

    .line 4739
    const-string/jumbo v13, "AudioService"

    .line 4740
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onLoadSoundEffects(), Error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " while loading samples"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4739
    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    const/4 v5, 0x0

    :goto_9
    const/16 v13, 0xa

    if-ge v5, v13, :cond_11

    .line 4742
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, 0x1

    aget v13, v13, v15

    if-lez v13, :cond_f

    .line 4743
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v5

    const/4 v15, -0x1

    const/16 v16, 0x1

    aput v15, v13, v16

    .line 4741
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 4725
    :catch_1
    move-exception v4

    .line 4726
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v13, "AudioService"

    const-string/jumbo v15, "Interrupted while waiting sound pool callback."

    invoke-static {v13, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4730
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "status":I
    :cond_10
    const/4 v11, -0x1

    .restart local v11    # "status":I
    goto :goto_8

    .line 4747
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/SoundPool;->release()V

    .line 4748
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v15, 0x0

    invoke-static {v13, v15}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_12
    monitor-exit v14

    .line 4751
    if-nez v11, :cond_13

    const/4 v13, 0x1

    :goto_a
    return v13

    :cond_13
    const/4 v13, 0x0

    goto :goto_a
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4861
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4862
    const-string/jumbo v1, "audio_safe_volume_state"

    .line 4861
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4860
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 16
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 4788
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 4790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v15

    .line 4791
    return-void

    .line 4795
    :cond_0
    if-gez p2, :cond_1

    .line 4796
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :try_start_1
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get46()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v4, v2

    .line 4801
    .local v4, "volFloat":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_2

    .line 4802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v5, 0x1

    aget v3, v3, v5

    .line 4803
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v4

    .line 4802
    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v15

    .line 4785
    return-void

    .line 4798
    .end local v4    # "volFloat":F
    :cond_1
    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v4, v2, v3

    .restart local v4    # "volFloat":F
    goto :goto_0

    .line 4805
    :cond_2
    :try_start_2
    new-instance v13, Landroid/media/MediaPlayer;

    invoke-direct {v13}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4807
    .local v13, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_3
    const-string/jumbo v12, ""

    .line 4808
    .local v12, "filePath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/system/theme/audio/ui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4809
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4808
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4810
    .local v14, "theme_file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4811
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 4816
    :goto_2
    invoke-virtual {v13, v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4817
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4818
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->prepare()V

    .line 4819
    invoke-virtual {v13, v4}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4820
    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4825
    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v13, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4831
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4832
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v14    # "theme_file":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 4833
    .local v9, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IOException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 4786
    .end local v4    # "volFloat":F
    .end local v9    # "ex":Ljava/io/IOException;
    .end local v13    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    .line 4813
    .restart local v4    # "volFloat":F
    .restart local v12    # "filePath":Ljava/lang/String;
    .restart local v13    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v14    # "theme_file":Ljava/io/File;
    :cond_3
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/media/audio/ui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4814
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, p1

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4813
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    goto :goto_2

    .line 4836
    .end local v12    # "filePath":Ljava/lang/String;
    .end local v14    # "theme_file":Ljava/io/File;
    :catch_1
    move-exception v11

    .line 4837
    .local v11, "ex":Ljava/lang/IllegalStateException;
    :try_start_6
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IllegalStateException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4834
    .end local v11    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v10

    .line 4835
    .local v10, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .prologue
    .line 4760
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4761
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 4762
    return-void

    .line 4765
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 4766
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_0
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4767
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 4766
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4770
    :cond_1
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    .line 4771
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 4770
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4774
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 4775
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4776
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, -0x1

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 4777
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 4760
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4780
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4781
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 4759
    return-void
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 4617
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4618
    return-void

    .line 4620
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4616
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4604
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4605
    return-void

    .line 4607
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4608
    return-void

    .line 4610
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4611
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    .line 4612
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    .line 4613
    const/4 v3, -0x2

    .line 4610
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4603
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 4591
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4594
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4595
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4596
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4597
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4598
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4595
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4588
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 10
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    const/4 v4, 0x0

    .line 4557
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 4559
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4562
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 4563
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_0
    if-ltz v9, :cond_2

    .line 4564
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_1

    .line 4565
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 4568
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    .line 4569
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4570
    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_0

    .line 4571
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 4573
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4563
    .end local v8    # "streamDevice":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    .line 4578
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    .line 4579
    const/4 v1, 0x1

    .line 4580
    const/4 v2, 0x2

    .line 4584
    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    .line 4578
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap36(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4555
    return-void

    .line 4557
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setForceUse(II)V
    .locals 2
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 4855
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 4856
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4854
    return-void

    .line 4855
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 4868
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 4867
    :cond_0
    :goto_0
    return-void

    .line 4871
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4875
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto :goto_0

    .line 4879
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4885
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_0

    .line 4889
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    goto :goto_0

    .line 4893
    :sswitch_5
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto :goto_0

    .line 4899
    :sswitch_6
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v9

    .line 4900
    .local v9, "loaded":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 4901
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 4902
    .local v12, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v12

    .line 4903
    if-eqz v9, :cond_1

    :goto_1
    :try_start_0
    iput v1, v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 4904
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4903
    goto :goto_1

    .line 4902
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    .line 4910
    .end local v9    # "loaded":Z
    .end local v12    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :sswitch_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4911
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v1, "Stream muted, skip playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4913
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto :goto_0

    .line 4919
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 4920
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap19(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    goto :goto_0

    .line 4919
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4926
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    .line 4930
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 4935
    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    .line 4936
    .local v7, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v2, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    .line 4937
    iget-object v3, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 4936
    invoke-static/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->-wrap28(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4938
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4943
    .end local v7    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    :sswitch_c
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap27(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4944
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4948
    :sswitch_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap26(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4949
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4953
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 4954
    .local v6, "N":I
    if-lez v6, :cond_3

    .line 4956
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 4957
    :try_start_2
    new-instance v13, Landroid/media/AudioRoutesInfo;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v13, v0}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .local v13, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v1

    .line 4959
    :goto_2
    if-lez v6, :cond_3

    .line 4960
    add-int/lit8 v6, v6, -0x1

    .line 4961
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/media/IAudioRoutesObserver;

    .line 4963
    .local v11, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_3
    invoke-interface {v11, v13}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 4964
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 4956
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v11    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v13    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4968
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4969
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap20(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 4974
    .end local v6    # "N":I
    :sswitch_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap22(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4978
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap25(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 4983
    :sswitch_11
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_4

    move v1, v0

    .line 4984
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4983
    invoke-static {v2, v1, v0}, Lcom/android/server/audio/AudioService;->-wrap23(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 4987
    :sswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_0

    .line 4991
    :sswitch_13
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap21(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 4995
    :sswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_0

    .line 4999
    :sswitch_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_0

    .line 5003
    :sswitch_16
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 5004
    .local v10, "musicActiveMs":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5005
    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    .line 5006
    const/4 v2, -0x2

    .line 5004
    invoke-static {v0, v1, v10, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 5010
    .end local v10    # "musicActiveMs":I
    :sswitch_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-wrap29(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_0

    .line 5014
    :sswitch_18
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 4868
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_6
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_1
        0xc -> :sswitch_e
        0xd -> :sswitch_9
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_5
        0x15 -> :sswitch_14
        0x16 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_15
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
    .end sparse-switch
.end method
