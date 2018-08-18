.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CameraManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFlashlightWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 78
    iput-object v4, p0, Landroid/hardware/camera2/CameraManager;->mFlashlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 87
    iget-object v4, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 88
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 91
    const v5, 0x11200dc

    .line 90
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 93
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v3, "power"

    .line 94
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 96
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v3, "CameraManager"

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/camera2/CameraManager;->mFlashlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    new-instance v2, Landroid/hardware/camera2/CameraManager$1;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/CameraManager$1;-><init>(Landroid/hardware/camera2/CameraManager;)V

    .line 119
    .local v2, "torchCallback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    .end local v2    # "torchCallback":Landroid/hardware/camera2/CameraManager$TorchCallback;
    :cond_0
    monitor-exit v4

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    if-nez v15, :cond_9

    .line 723
    const/4 v9, 0x0

    .line 724
    .local v9, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    .line 725
    .local v1, "cameraService":Landroid/hardware/ICameraService;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v2, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 729
    return-object v2

    .line 733
    :cond_0
    const/4 v15, 0x1

    :try_start_0
    invoke-interface {v1, v15}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I

    move-result v9

    .line 737
    const/4 v5, 0x1

    .line 738
    .local v5, "exposeAuxCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 739
    .local v11, "packageName":Ljava/lang/String;
    const-string/jumbo v15, "camera.auxdisable.packagelist"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 740
    .local v10, "packageList":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 741
    new-instance v12, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v15, 0x2c

    invoke-direct {v12, v15}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 742
    .local v12, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v12, v10}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 743
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "str$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 744
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_1

    .line 745
    const/4 v5, 0x0

    .line 750
    .end local v12    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    if-nez v5, :cond_3

    const/4 v15, 0x2

    if-le v9, v15, :cond_3

    .line 751
    const/4 v9, 0x2

    .line 760
    .end local v5    # "exposeAuxCamera":Z
    .end local v10    # "packageList":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v9, :cond_8

    .line 763
    const/4 v8, 0x0

    .line 765
    .local v8, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v1, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 766
    .local v7, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v15

    if-nez v15, :cond_5

    .line 767
    const/4 v8, 0x1

    .line 786
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_4
    :goto_2
    if-eqz v8, :cond_7

    .line 787
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 755
    .end local v6    # "i":I
    .end local v8    # "isDeviceSupported":Z
    :catch_0
    move-exception v3

    .line 757
    .local v3, "e":Landroid/os/RemoteException;
    return-object v2

    .line 753
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 754
    .local v4, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 769
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    .restart local v6    # "i":I
    .restart local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v8    # "isDeviceSupported":Z
    :cond_5
    :try_start_2
    new-instance v15, Ljava/lang/AssertionError;

    const-string/jumbo v16, "Expected to get non-empty characteristics"

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 771
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_2
    move-exception v4

    .line 776
    .restart local v4    # "e":Landroid/os/ServiceSpecificException;
    iget v15, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 777
    iget v15, v4, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 778
    :cond_6
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 780
    .end local v4    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v3

    .line 782
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 783
    return-object v2

    .line 789
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7
    const-string/jumbo v15, "CameraManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error querying camera device "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " for listing."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 793
    .end local v8    # "isDeviceSupported":Z
    :cond_8
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 795
    .end local v1    # "cameraService":Landroid/hardware/ICameraService;
    .end local v2    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v9    # "numCameras":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    return-object v15
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 333
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v7, 0x0

    .line 335
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 337
    const/4 v5, 0x0

    .line 340
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v8, v0, v1, v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 346
    .local v8, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 350
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 357
    .local v12, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 359
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v4

    .line 360
    .local v4, "cameraService":Landroid/hardware/ICameraService;
    if-nez v4, :cond_0

    .line 361
    new-instance v14, Landroid/os/ServiceSpecificException;

    .line 363
    const-string/jumbo v16, "Camera service is currently unavailable"

    .line 362
    const/16 v17, 0x4

    .line 361
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v10

    .line 373
    .local v10, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 374
    new-instance v14, Ljava/lang/AssertionError;

    const-string/jumbo v16, "Should\'ve gone down the shim path"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "e":Landroid/os/ServiceSpecificException;
    .end local v12    # "id":I
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 351
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catch_1
    move-exception v11

    .line 352
    .local v11, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Expected cameraId to be numeric, but it was: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 366
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v12    # "id":I
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    .line 365
    move/from16 v0, p4

    invoke-interface {v4, v3, v12, v14, v0}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 409
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v8, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 410
    move-object v7, v8

    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    monitor-exit v15

    .line 413
    return-object v8

    .line 369
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_7
    const-string/jumbo v14, "CameraManager"

    const-string/jumbo v16, "Using legacy camera HAL."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v3, v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 395
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v9

    .line 397
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_8
    new-instance v13, Landroid/os/ServiceSpecificException;

    .line 399
    const-string/jumbo v14, "Camera service is currently unavailable"

    .line 398
    const/16 v16, 0x4

    .line 397
    move/from16 v0, v16

    invoke-direct {v13, v0, v14}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 400
    .local v13, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v8, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 401
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 375
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v10    # "e":Landroid/os/ServiceSpecificException;
    :cond_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 376
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 383
    :cond_4
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 385
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    .line 386
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 389
    :cond_5
    :goto_1
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 377
    :cond_6
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 378
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 379
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 393
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 387
    :cond_7
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    goto :goto_1
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 805
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 816
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 827
    .local v2, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 829
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    return v4

    .line 831
    :cond_0
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 832
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 835
    .local v1, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 673
    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 674
    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 675
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, 0x3

    .line 676
    .local v2, "reason":I
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_0

    .line 700
    :pswitch_0
    const/4 v2, 0x3

    .line 702
    :goto_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 678
    :pswitch_1
    const/4 v2, 0x2

    .line 679
    goto :goto_0

    .line 681
    :pswitch_2
    const/4 v2, 0x1

    .line 682
    goto :goto_0

    .line 684
    :pswitch_3
    const/4 v2, 0x4

    .line 685
    goto :goto_0

    .line 687
    :pswitch_4
    const/4 v2, 0x5

    .line 688
    goto :goto_0

    .line 690
    :pswitch_5
    const/16 v2, 0x3e8

    .line 691
    goto :goto_0

    .line 694
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 696
    :pswitch_7
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 703
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "reason":I
    :cond_0
    instance-of v3, p0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1

    .line 704
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    .line 705
    const-string/jumbo v4, "Camera service has died unexpectedly"

    .line 704
    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 707
    :cond_1
    instance-of v3, p0, Landroid/os/RemoteException;

    if-eqz v3, :cond_2

    .line 708
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 710
    :cond_2
    instance-of v3, p0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 711
    check-cast v1, Ljava/lang/RuntimeException;

    .line 712
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 672
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v10, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 263
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 264
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Camera id %s does not match any currently connected camera device"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 265
    const/4 v13, 0x0

    aput-object p1, v12, v13

    .line 264
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 268
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 275
    .local v5, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 276
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    .line 277
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    .line 278
    const-string/jumbo v11, "Camera service is currently unavailable"

    .line 277
    const/4 v12, 0x2

    invoke-direct {v9, v12, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 284
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    .local v8, "parameters":Ljava/lang/String;
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v6

    .line 288
    .local v6, "info":Landroid/hardware/CameraInfo;
    invoke-static {v8, v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "info":Landroid/hardware/CameraInfo;
    .end local v8    # "parameters":Ljava/lang/String;
    :goto_0
    monitor-exit v10

    .line 303
    return-object v1

    .line 291
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_3
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 293
    .local v7, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v7}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v1, v2

    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    .line 297
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v3

    .line 299
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    .line 300
    const-string/jumbo v11, "Camera service is currently unavailable"

    .line 299
    const/4 v12, 0x2

    invoke-direct {v9, v12, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 295
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 296
    .local v4, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    .line 481
    return-void
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    if-nez p2, :cond_1

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    if-nez p3, :cond_2

    .line 511
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 512
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 519
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    .line 504
    return-void

    .line 514
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 515
    const-string/jumbo v1, "Handler argument is null, but no looper exists in the calling thread"

    .line 514
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 173
    if-nez p2, :cond_1

    .line 174
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 175
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 177
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 176
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 182
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 172
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 220
    if-nez p2, :cond_1

    .line 221
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 222
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 224
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 223
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 219
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 562
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 194
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 193
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 240
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 239
    return-void
.end method
