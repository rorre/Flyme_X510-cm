.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$PermissionEntry;
    }
.end annotation


# static fields
.field private static final ALLOW_ALL:I = -0x1

.field private static final ALLOW_APP_CONFIGS:I = 0x8

.field private static final ALLOW_FEATURES:I = 0x1

.field private static final ALLOW_LIBS:I = 0x2

.field private static final ALLOW_PERMISSIONS:I = 0x4

.field static final TAG:Ljava/lang/String; = "SystemConfig"

.field static sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field final mAllowInDataUsageSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackupTransportWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultVrComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mGlobalGids:[I

.field final mLinkedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSignatureAllowances:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mSystemUserBlacklistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemUserWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUnavailableFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 75
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 79
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 83
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 98
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 103
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    .line 107
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 111
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    .line 115
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 118
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    .line 121
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    .line 124
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 127
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    .line 132
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 131
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 135
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 134
    iput-object v1, p0, Lcom/android/server/SystemConfig;->mSignatureAllowances:Landroid/util/ArrayMap;

    .line 210
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .line 209
    new-array v2, v6, [Ljava/lang/String;

    .line 210
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sysconfig"

    aput-object v3, v2, v4

    .line 209
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 213
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .line 212
    new-array v2, v6, [Ljava/lang/String;

    .line 213
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "permissions"

    aput-object v3, v2, v4

    .line 212
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v7}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 215
    const/16 v0, 0xb

    .line 217
    .local v0, "odmPermissionFlag":I
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .line 216
    new-array v2, v6, [Ljava/lang/String;

    .line 217
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sysconfig"

    aput-object v3, v2, v4

    .line 216
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 219
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .line 218
    new-array v2, v6, [Ljava/lang/String;

    .line 219
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "permissions"

    aput-object v3, v2, v4

    .line 218
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 222
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .line 221
    new-array v2, v6, [Ljava/lang/String;

    .line 222
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sysconfig"

    aput-object v3, v2, v4

    .line 221
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 224
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .line 223
    new-array v2, v6, [Ljava/lang/String;

    .line 224
    const-string/jumbo v3, "etc"

    aput-object v3, v2, v5

    const-string/jumbo v3, "permissions"

    aput-object v3, v2, v4

    .line 223
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;I)V

    .line 226
    const-string/jumbo v1, "persist.graphics.vulkan.disable"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string/jumbo v1, "android.hardware.vulkan.level"

    invoke-direct {p0, v1}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "android.hardware.vulkan.version"

    invoke-direct {p0, v1}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method private addFeature(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/FeatureInfo;

    .line 590
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    if-nez v0, :cond_0

    .line 591
    new-instance v0, Landroid/content/pm/FeatureInfo;

    .end local v0    # "fi":Landroid/content/pm/FeatureInfo;
    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 592
    .restart local v0    # "fi":Landroid/content/pm/FeatureInfo;
    iput-object p1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 593
    iput p2, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 594
    iget-object v1, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :goto_0
    return-void

    .line 596
    :cond_0
    iget v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/FeatureInfo;->version:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .locals 2

    .prologue
    .line 138
    const-class v1, Lcom/android/server/SystemConfig;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/server/SystemConfig;

    invoke-direct {v0}, Lcom/android/server/SystemConfig;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 142
    :cond_0
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;I)V
    .locals 43
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "permissionFlag"    # I

    .prologue
    .line 273
    const/16 v30, 0x0

    .line 275
    .local v30, "permReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v30, Ljava/io/FileReader;

    .end local v30    # "permReader":Ljava/io/FileReader;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    .local v30, "permReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v25

    .line 284
    .local v25, "lowRam":Z
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    .line 285
    .local v28, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 288
    :cond_0
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v37

    .local v37, "type":I
    const/16 v40, 0x2

    move/from16 v0, v37

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    .line 289
    const/16 v40, 0x1

    move/from16 v0, v37

    move/from16 v1, v40

    if-ne v0, v1, :cond_0

    .line 293
    :cond_1
    const/16 v40, 0x2

    move/from16 v0, v37

    move/from16 v1, v40

    if-eq v0, v1, :cond_3

    .line 294
    new-instance v40, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v41, "No start tag found"

    invoke-direct/range {v40 .. v41}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v40
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v37    # "type":I
    :catch_0
    move-exception v16

    .line 569
    .local v16, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v40, "SystemConfig"

    const-string/jumbo v41, "Got exception parsing permissions."

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 578
    .end local v16    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v40

    if-eqz v40, :cond_2

    .line 579
    const-string/jumbo v40, "android.software.file_based_encryption"

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 580
    const-string/jumbo v40, "android.software.securely_removes_users"

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    .line 583
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "featureName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_3a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 584
    .local v17, "featureName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/SystemConfig;->removeFeature(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    .end local v17    # "featureName":Ljava/lang/String;
    .end local v18    # "featureName$iterator":Ljava/util/Iterator;
    .end local v25    # "lowRam":Z
    .end local v30    # "permReader":Ljava/io/FileReader;
    :catch_1
    move-exception v13

    .line 277
    .local v13, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 297
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .restart local v25    # "lowRam":Z
    .restart local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "permReader":Ljava/io/FileReader;
    .restart local v37    # "type":I
    :cond_3
    :try_start_3
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "permissions"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_4

    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "config"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 302
    :cond_4
    const/16 v40, -0x1

    move/from16 v0, p2

    move/from16 v1, v40

    if-ne v0, v1, :cond_6

    const/4 v3, 0x1

    .line 303
    .local v3, "allowAll":Z
    :goto_2
    and-int/lit8 v40, p2, 0x2

    if-eqz v40, :cond_7

    const/4 v6, 0x1

    .line 304
    .local v6, "allowLibs":Z
    :goto_3
    and-int/lit8 v40, p2, 0x1

    if-eqz v40, :cond_8

    const/4 v5, 0x1

    .line 305
    .local v5, "allowFeatures":Z
    :goto_4
    and-int/lit8 v40, p2, 0x4

    if-eqz v40, :cond_9

    const/4 v7, 0x1

    .line 306
    .local v7, "allowPermissions":Z
    :goto_5
    and-int/lit8 v40, p2, 0x8

    if-eqz v40, :cond_a

    const/4 v4, 0x1

    .line 308
    .local v4, "allowAppConfigs":Z
    :goto_6
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 309
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_b

    .line 573
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 298
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    :cond_5
    :try_start_4
    new-instance v40, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Unexpected start tag in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 299
    const-string/jumbo v42, ": found "

    .line 298
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 299
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 298
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 299
    const-string/jumbo v42, ", expected \'permissions\' or \'config\'"

    .line 298
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v40
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 570
    .end local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v37    # "type":I
    :catch_2
    move-exception v14

    .line 571
    .local v14, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v40, "SystemConfig"

    const-string/jumbo v41, "Got exception parsing permissions."

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 573
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 302
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v37    # "type":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "allowAll":Z
    goto :goto_2

    .line 303
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "allowLibs":Z
    goto :goto_3

    .line 304
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "allowFeatures":Z
    goto :goto_4

    .line 305
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "allowPermissions":Z
    goto :goto_5

    .line 306
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "allowAppConfigs":Z
    goto :goto_6

    .line 313
    :cond_b
    :try_start_6
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 314
    .local v26, "name":Ljava/lang/String;
    const-string/jumbo v40, "group"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_d

    if-eqz v3, :cond_d

    .line 315
    const-string/jumbo v40, "gid"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 316
    .local v22, "gidStr":Ljava/lang/String;
    if-eqz v22, :cond_c

    .line 317
    invoke-static/range {v22 .. v22}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v21

    .line 318
    .local v21, "gid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 324
    .end local v21    # "gid":I
    :goto_7
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 572
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v22    # "gidStr":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v37    # "type":I
    :catchall_0
    move-exception v40

    .line 573
    invoke-static/range {v30 .. v30}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 572
    throw v40

    .line 320
    .restart local v3    # "allowAll":Z
    .restart local v4    # "allowAppConfigs":Z
    .restart local v5    # "allowFeatures":Z
    .restart local v6    # "allowLibs":Z
    .restart local v7    # "allowPermissions":Z
    .restart local v22    # "gidStr":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v37    # "type":I
    :cond_c
    :try_start_7
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<group> without gid in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 321
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 320
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 327
    .end local v22    # "gidStr":Ljava/lang/String;
    :cond_d
    const-string/jumbo v40, "allow-permission"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 328
    const-string/jumbo v40, "name"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 329
    .local v29, "perm":Ljava/lang/String;
    if-nez v29, :cond_e

    .line 330
    const-string/jumbo v40, "SystemConfig"

    .line 331
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<allow-permission> without name at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 332
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 331
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 330
    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 336
    :cond_e
    const-string/jumbo v40, "signature"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 337
    .local v36, "signature":Ljava/lang/String;
    if-nez v36, :cond_f

    .line 338
    const-string/jumbo v40, "SystemConfig"

    .line 339
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<allow-permission> without signature at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 340
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 339
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 338
    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 344
    :cond_f
    const/16 v34, 0x0

    .line 346
    .local v34, "sig":Landroid/content/pm/Signature;
    :try_start_8
    new-instance v35, Landroid/content/pm/Signature;

    invoke-direct/range {v35 .. v36}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v34    # "sig":Landroid/content/pm/Signature;
    .local v35, "sig":Landroid/content/pm/Signature;
    move-object/from16 v34, v35

    .line 350
    .end local v35    # "sig":Landroid/content/pm/Signature;
    :goto_8
    if-eqz v34, :cond_11

    .line 351
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSignatureAllowances:Landroid/util/ArrayMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/util/ArraySet;

    .line 352
    .local v31, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v31, :cond_10

    .line 353
    new-instance v31, Landroid/util/ArraySet;

    .end local v31    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v31 .. v31}, Landroid/util/ArraySet;-><init>()V

    .line 354
    .restart local v31    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSignatureAllowances:Landroid/util/ArrayMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_10
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v31    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_9
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 358
    :cond_11
    const-string/jumbo v40, "SystemConfig"

    .line 359
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<allow-permission> with bad signature at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 360
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 359
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 358
    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 364
    .end local v29    # "perm":Ljava/lang/String;
    .end local v36    # "signature":Ljava/lang/String;
    :cond_12
    const-string/jumbo v40, "permission"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_14

    if-eqz v7, :cond_14

    .line 365
    const-string/jumbo v40, "name"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 366
    .restart local v29    # "perm":Ljava/lang/String;
    if-nez v29, :cond_13

    .line 367
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<permission> without name in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 368
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 367
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 372
    :cond_13
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v29

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 375
    .end local v29    # "perm":Ljava/lang/String;
    :cond_14
    const-string/jumbo v40, "assign-permission"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_19

    if-eqz v7, :cond_19

    .line 376
    const-string/jumbo v40, "name"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 377
    .restart local v29    # "perm":Ljava/lang/String;
    if-nez v29, :cond_15

    .line 378
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<assign-permission> without name in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 379
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 378
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 383
    :cond_15
    const-string/jumbo v40, "uid"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 384
    .local v39, "uidStr":Ljava/lang/String;
    if-nez v39, :cond_16

    .line 385
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<assign-permission> without uid in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 386
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 385
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 390
    :cond_16
    invoke-static/range {v39 .. v39}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v38

    .line 391
    .local v38, "uid":I
    if-gez v38, :cond_17

    .line 392
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 393
    const-string/jumbo v42, "  in "

    .line 392
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 393
    const-string/jumbo v42, " at "

    .line 392
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 394
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 392
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 398
    :cond_17
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v29

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/util/ArraySet;

    .line 400
    .restart local v31    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v31, :cond_18

    .line 401
    new-instance v31, Landroid/util/ArraySet;

    .end local v31    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v31 .. v31}, Landroid/util/ArraySet;-><init>()V

    .line 402
    .restart local v31    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v38

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    :cond_18
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 407
    .end local v29    # "perm":Ljava/lang/String;
    .end local v31    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v38    # "uid":I
    .end local v39    # "uidStr":Ljava/lang/String;
    :cond_19
    const-string/jumbo v40, "library"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1c

    if-eqz v6, :cond_1c

    .line 408
    const-string/jumbo v40, "name"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 409
    .local v24, "lname":Ljava/lang/String;
    const-string/jumbo v40, "file"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 410
    .local v23, "lfile":Ljava/lang/String;
    if-nez v24, :cond_1a

    .line 411
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<library> without name in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 412
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 411
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_a
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 413
    :cond_1a
    if-nez v23, :cond_1b

    .line 414
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<library> without file in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 415
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 414
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 418
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 423
    .end local v23    # "lfile":Ljava/lang/String;
    .end local v24    # "lname":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v40, "feature"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_21

    if-eqz v5, :cond_21

    .line 424
    const-string/jumbo v40, "name"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 425
    .local v19, "fname":Ljava/lang/String;
    const-string/jumbo v40, "version"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    .line 427
    .local v20, "fversion":I
    if-nez v25, :cond_1e

    .line 428
    const/4 v8, 0x1

    .line 433
    .local v8, "allowed":Z
    :goto_b
    if-nez v19, :cond_20

    .line 434
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<feature> without name in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 435
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 434
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1d
    :goto_c
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 430
    .end local v8    # "allowed":Z
    :cond_1e
    const-string/jumbo v40, "notLowRam"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 431
    .local v27, "notLowRam":Ljava/lang/String;
    const-string/jumbo v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1f

    const/4 v8, 0x0

    .restart local v8    # "allowed":Z
    goto :goto_b

    .end local v8    # "allowed":Z
    :cond_1f
    const/4 v8, 0x1

    .restart local v8    # "allowed":Z
    goto :goto_b

    .line 436
    .end local v27    # "notLowRam":Ljava/lang/String;
    :cond_20
    if-eqz v8, :cond_1d

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemConfig;->addFeature(Ljava/lang/String;I)V

    goto :goto_c

    .line 442
    .end local v8    # "allowed":Z
    .end local v19    # "fname":Ljava/lang/String;
    .end local v20    # "fversion":I
    :cond_21
    const-string/jumbo v40, "unavailable-feature"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_23

    if-eqz v5, :cond_23

    .line 443
    const-string/jumbo v40, "name"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 444
    .restart local v19    # "fname":Ljava/lang/String;
    if-nez v19, :cond_22

    .line 445
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<unavailable-feature> without name in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 446
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 445
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_d
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 448
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 453
    .end local v19    # "fname":Ljava/lang/String;
    :cond_23
    const-string/jumbo v40, "allow-in-power-save-except-idle"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_25

    if-eqz v3, :cond_25

    .line 454
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 455
    .local v32, "pkgname":Ljava/lang/String;
    if-nez v32, :cond_24

    .line 456
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<allow-in-power-save-except-idle> without package in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 457
    const-string/jumbo v42, " at "

    .line 456
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 457
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 456
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_e
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 459
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 464
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_25
    const-string/jumbo v40, "allow-in-power-save"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_27

    if-eqz v3, :cond_27

    .line 465
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 466
    .restart local v32    # "pkgname":Ljava/lang/String;
    if-nez v32, :cond_26

    .line 467
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<allow-in-power-save> without package in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 468
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 467
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_f
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 470
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 475
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_27
    const-string/jumbo v40, "allow-in-data-usage-save"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_29

    if-eqz v3, :cond_29

    .line 476
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 477
    .restart local v32    # "pkgname":Ljava/lang/String;
    if-nez v32, :cond_28

    .line 478
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<allow-in-data-usage-save> without package in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 479
    const-string/jumbo v42, " at "

    .line 478
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 479
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 478
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_10
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 481
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 486
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_29
    const-string/jumbo v40, "app-link"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2b

    if-eqz v4, :cond_2b

    .line 487
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 488
    .restart local v32    # "pkgname":Ljava/lang/String;
    if-nez v32, :cond_2a

    .line 489
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<app-link> without package in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " at "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 490
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 489
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_11
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 492
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 495
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v40, "system-user-whitelisted-app"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2d

    if-eqz v4, :cond_2d

    .line 496
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 497
    .restart local v32    # "pkgname":Ljava/lang/String;
    if-nez v32, :cond_2c

    .line 498
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<system-user-whitelisted-app> without package in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 499
    const-string/jumbo v42, " at "

    .line 498
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 499
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 498
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_12
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 501
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 504
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v40, "system-user-blacklisted-app"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2f

    if-eqz v4, :cond_2f

    .line 505
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 506
    .restart local v32    # "pkgname":Ljava/lang/String;
    if-nez v32, :cond_2e

    .line 507
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<system-user-blacklisted-app without package in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 508
    const-string/jumbo v42, " at "

    .line 507
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 508
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 507
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_13
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 510
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 513
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v40, "default-enabled-vr-app"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_32

    if-eqz v4, :cond_32

    .line 514
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 515
    .restart local v32    # "pkgname":Ljava/lang/String;
    const-string/jumbo v40, "class"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 516
    .local v11, "clsname":Ljava/lang/String;
    if-nez v32, :cond_30

    .line 517
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<default-enabled-vr-app without package in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 518
    const-string/jumbo v42, " at "

    .line 517
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 518
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 517
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_14
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 519
    :cond_30
    if-nez v11, :cond_31

    .line 520
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<default-enabled-vr-app without class in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 521
    const-string/jumbo v42, " at "

    .line 520
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 521
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 520
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 523
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    new-instance v41, Landroid/content/ComponentName;

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v41}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 526
    .end local v11    # "clsname":Ljava/lang/String;
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_32
    const-string/jumbo v40, "backup-transport-whitelisted-service"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_35

    if-eqz v5, :cond_35

    .line 527
    const-string/jumbo v40, "service"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 528
    .local v33, "serviceName":Ljava/lang/String;
    if-nez v33, :cond_33

    .line 529
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<backup-transport-whitelisted-service> without service in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 530
    const-string/jumbo v42, " at "

    .line 529
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 530
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 529
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_15
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 532
    :cond_33
    invoke-static/range {v33 .. v33}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 533
    .local v12, "cn":Landroid/content/ComponentName;
    if-nez v12, :cond_34

    .line 534
    const-string/jumbo v40, "SystemConfig"

    .line 535
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<backup-transport-whitelisted-service> with invalid service name "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 536
    const-string/jumbo v42, " in "

    .line 535
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 537
    const-string/jumbo v42, " at "

    .line 535
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 537
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 535
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 534
    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 539
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 543
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v33    # "serviceName":Ljava/lang/String;
    :cond_35
    const-string/jumbo v40, "disabled-until-used-preinstalled-carrier-associated-app"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_39

    if-eqz v4, :cond_39

    .line 545
    const-string/jumbo v40, "package"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 546
    .restart local v32    # "pkgname":Ljava/lang/String;
    const-string/jumbo v40, "carrierAppPackage"

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 547
    .local v10, "carrierPkgname":Ljava/lang/String;
    if-eqz v32, :cond_36

    if-nez v10, :cond_37

    .line 548
    :cond_36
    const-string/jumbo v40, "SystemConfig"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "<disabled-until-used-preinstalled-carrier-associated-app without package or carrierAppPackage in "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 549
    const-string/jumbo v42, " at "

    .line 548
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 550
    invoke-interface/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v42

    .line 548
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_16
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 553
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 555
    .local v9, "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_38

    .line 556
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .restart local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_38
    move-object/from16 v0, v32

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 564
    .end local v9    # "associatedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "carrierPkgname":Ljava/lang/String;
    .end local v32    # "pkgname":Ljava/lang/String;
    :cond_39
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    .line 272
    .end local v3    # "allowAll":Z
    .end local v4    # "allowAppConfigs":Z
    .end local v5    # "allowFeatures":Z
    .end local v6    # "allowLibs":Z
    .end local v7    # "allowPermissions":Z
    .end local v26    # "name":Ljava/lang/String;
    .end local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v37    # "type":I
    .restart local v18    # "featureName$iterator":Ljava/util/Iterator;
    :cond_3a
    return-void

    .line 347
    .end local v18    # "featureName$iterator":Ljava/util/Iterator;
    .restart local v3    # "allowAll":Z
    .restart local v4    # "allowAppConfigs":Z
    .restart local v5    # "allowFeatures":Z
    .restart local v6    # "allowLibs":Z
    .restart local v7    # "allowPermissions":Z
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v28    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29    # "perm":Ljava/lang/String;
    .restart local v34    # "sig":Landroid/content/pm/Signature;
    .restart local v36    # "signature":Ljava/lang/String;
    .restart local v37    # "type":I
    :catch_3
    move-exception v15

    .local v15, "e":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_8
.end method

.method private removeFeature(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    const-string/jumbo v0, "SystemConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removed unavailable feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllowInDataUsageSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInDataUsageSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAllowInPowerSave()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSaveExceptIdle:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAvailableFeatures()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getBackupTransportWhitelist()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mBackupTransportWhitelist:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getDefaultVrComponents()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getGlobalGids()[I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    return-object v0
.end method

.method public getLinkedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPermissions()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSharedLibraries()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSignatureAllowances()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSignatureAllowances:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSystemPermissions()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSystemUserBlacklistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemUserBlacklistedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getSystemUserWhitelistedApps()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemUserWhitelistedApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 608
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 609
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Duplicate permission definition for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 612
    :cond_0
    const-string/jumbo v7, "perUser"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    .line 613
    .local v3, "perUser":Z
    new-instance v4, Lcom/android/server/SystemConfig$PermissionEntry;

    invoke-direct {v4, p2, v3}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;Z)V

    .line 614
    .local v4, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v7, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 618
    .local v2, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 619
    if-ne v6, v10, :cond_2

    .line 620
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_5

    .line 621
    :cond_2
    if-eq v6, v10, :cond_1

    .line 622
    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    .line 626
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 628
    const-string/jumbo v7, "gid"

    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 630
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    .line 631
    .local v0, "gid":I
    iget-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    invoke-static {v7, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 637
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 633
    .restart local v1    # "gidStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "SystemConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<group> without gid at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 634
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    .line 633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 607
    .end local v1    # "gidStr":Ljava/lang/String;
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method readPermissions(Ljava/io/File;I)V
    .locals 8
    .param p1, "libraryDir"    # Ljava/io/File;
    .param p2, "permissionFlag"    # I

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    const-string/jumbo v2, "SystemConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cannot be read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 235
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 236
    const-string/jumbo v2, "SystemConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    return-void

    .line 246
    :cond_2
    const/4 v1, 0x0

    .line 247
    .local v1, "platformFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    .end local v1    # "platformFile":Ljava/io/File;
    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v0, v3, v2

    .line 249
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "etc/permissions/platform.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    move-object v1, v0

    .line 247
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 255
    const-string/jumbo v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_5

    .line 259
    const-string/jumbo v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    goto :goto_1

    .line 267
    .end local v0    # "f":Ljava/io/File;
    :cond_6
    if-eqz v1, :cond_7

    .line 268
    invoke-direct {p0, v1, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;I)V

    .line 232
    :cond_7
    return-void
.end method
