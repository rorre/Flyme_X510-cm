.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
    }
.end annotation


# instance fields
.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;)V
    .locals 0
    .param p1, "packageManager"    # Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
    .param p2, "idmapManager"    # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"    # Lcom/android/server/om/OverlayManagerSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    .line 62
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 63
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 60
    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I
    .locals 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 413
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_0

    .line 414
    return v4

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    .line 421
    .local v0, "stateCheck":Z
    if-nez p1, :cond_1

    .line 422
    const/4 v1, 0x1

    return v1

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    const/4 v1, 0x2

    return v1

    .line 437
    :cond_2
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 438
    return v4

    .line 445
    :cond_3
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/om/IdmapManager;->isDangerous(Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 446
    return v1

    .line 449
    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x5

    :cond_5
    return v1
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .locals 7
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .prologue
    .line 471
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v5, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userId$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 477
    .local v2, "userId":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 478
    .local v1, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 480
    return-void

    .line 486
    .end local v1    # "tmp":Landroid/content/om/OverlayInfo;
    .end local v2    # "userId":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v6, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v5, p1, v6}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 452
    return-void

    .line 482
    .restart local v2    # "userId":I
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    goto :goto_0
.end method

.method private updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackage"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 182
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 183
    .local v3, "ois":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "oi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    .line 184
    .local v1, "oi":Landroid/content/om/OverlayInfo;
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v6, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 185
    .local v4, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_0

    .line 186
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v7, v1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    .line 187
    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    goto :goto_0

    .line 190
    :cond_0
    :try_start_0
    invoke-direct {p0, p3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v5, "OverlayManager"

    const-string/jumbo v6, "failed to update settings"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    goto :goto_0

    .line 181
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v1    # "oi":Landroid/content/om/OverlayInfo;
    .end local v4    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :cond_1
    return-void
.end method

.method private updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)V
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;IZ)V

    .line 381
    return-void
.end method

.method private updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;IZ)V
    .locals 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "shouldWait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 393
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {v2, v3, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, "currentState":I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v1

    .line 397
    .local v1, "newState":I
    if-eq v0, v1, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p3, v1, p4}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;IIZ)V

    .line 387
    :cond_1
    return-void
.end method


# virtual methods
.method onDump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;)V

    .line 363
    return-void
.end method

.method onGetEnabledOverlayPaths(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "oi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayInfo;

    .line 372
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    iget-object v4, v0, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_1
    return-object v3
.end method

.method onGetOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method onGetOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method onGetOverlaysForUser(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 204
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 205
    .local v1, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 206
    const-string/jumbo v3, "OverlayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "overlay package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was added, but couldn\'t be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 208
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 214
    .local v2, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 215
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    :try_start_0
    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v3, "OverlayManager"

    const-string/jumbo v4, "failed to update settings"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 229
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 230
    .local v1, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 231
    const-string/jumbo v3, "OverlayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "overlay package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was changed, but couldn\'t be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 233
    return-void

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 240
    .local v2, "targetPackage":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v3, "OverlayManager"

    const-string/jumbo v4, "failed to update settings"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 302
    .local v1, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    .line 303
    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1    # "oi":Landroid/content/om/OverlayInfo;
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v3, "failed to remove overlay package"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onOverlayPackageUpgraded(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 267
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v4, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 268
    .local v1, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 269
    const-string/jumbo v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "overlay package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was upgraded, but couldn\'t be found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 271
    return-void

    .line 275
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getTargetPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "storedTargetPackageName":Ljava/lang/String;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    .line 282
    return-void

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/server/om/OverlayManagerSettings;->setUpgrading(Ljava/lang/String;IZ)V

    .line 287
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 288
    .local v3, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v2    # "storedTargetPackageName":Ljava/lang/String;
    .end local v3    # "targetPackage":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v4, "OverlayManager"

    const-string/jumbo v5, "failed to update settings"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method onOverlayPackageUpgrading(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 254
    .local v1, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerSettings;->setUpgrading(Ljava/lang/String;IZ)V

    .line 255
    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "oi":Landroid/content/om/OverlayInfo;
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v2, "OverlayManager"

    const-string/jumbo v3, "failed to update settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method onSetEnabled(Ljava/lang/String;ZIZ)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .param p4, "shouldWait"    # Z

    .prologue
    const/4 v6, 0x0

    .line 333
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v4, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 334
    .local v2, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    .line 335
    return v6

    .line 339
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 341
    .local v1, "oi":Landroid/content/om/OverlayInfo;
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v5, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 342
    .local v3, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)V

    .line 343
    invoke-direct {p0, v3, v2, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;IZ)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v4, 0x1

    return v4

    .line 345
    .end local v1    # "oi":Landroid/content/om/OverlayInfo;
    .end local v3    # "targetPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v6
.end method

.method onSetHighestPriority(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method onSetLowestPriority(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method onSetPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method onSwitchUser(I)Ljava/util/List;
    .locals 22
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 78
    .local v13, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v17

    .line 79
    .local v17, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    new-instance v14, Landroid/util/ArrayMap;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 80
    .local v14, "storedOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "chunk$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 81
    .local v5, "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "oi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    .line 82
    .local v9, "oi":Landroid/content/om/OverlayInfo;
    iget-object v0, v9, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v14, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v5    # "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v9    # "oi":Landroid/content/om/OverlayInfo;
    .end local v10    # "oi$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "overlayPackage$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 87
    .local v11, "overlayPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    .line 88
    .restart local v9    # "oi":Landroid/content/om/OverlayInfo;
    if-eqz v9, :cond_2

    iget-object v0, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 99
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object/from16 v18, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 100
    .local v15, "targetPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v11, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v15    # "targetPackage":Landroid/content/pm/PackageInfo;
    :goto_3
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_2
    if-eqz v9, :cond_3

    .line 90
    iget-object v0, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v18, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 93
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 94
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v21

    .line 92
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 101
    :catch_0
    move-exception v7

    .line 102
    .local v7, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string/jumbo v18, "OverlayManager"

    const-string/jumbo v19, "failed to update settings"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v18, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    goto :goto_3

    .line 112
    .end local v7    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v9    # "oi":Landroid/content/om/OverlayInfo;
    .end local v11    # "overlayPackage":Landroid/content/pm/PackageInfo;
    :cond_4
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "oi$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    .line 113
    .restart local v9    # "oi":Landroid/content/om/OverlayInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v18, v0

    iget-object v0, v9, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v9, Landroid/content/om/OverlayInfo;->userId:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    .line 114
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 115
    iget-object v0, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 119
    .end local v9    # "oi":Landroid/content/om/OverlayInfo;
    :cond_5
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 120
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 121
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 122
    .local v16, "targetPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    if-nez v18, :cond_6

    .line 123
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 127
    .end local v16    # "targetPackageName":Ljava/lang/String;
    :cond_7
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v18
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 143
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 137
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 152
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 146
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 172
    return-void
.end method

.method onTargetPackageUpgraded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 169
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 163
    return-void
.end method

.method onTargetPackageUpgrading(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 155
    return-void
.end method

.method onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)V

    .line 130
    return-void
.end method
