.class final Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageManagerHelper"
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "    "

.field private static final TAB2:Ljava/lang/String; = "        "


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    .line 807
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 808
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 806
    return-void
.end method


# virtual methods
.method public cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 862
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 863
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_0

    .line 864
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 865
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 867
    :cond_0
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Z)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 889
    const-string/jumbo v6, "PackageInfo cache"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    if-nez p2, :cond_1

    .line 892
    const/4 v4, 0x0

    .line 893
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 894
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 895
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    add-int/2addr v4, v6

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 897
    .end local v5    # "userId":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " package(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    return-void

    .line 901
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 902
    const-string/jumbo v6, "    <empty>"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    return-void

    .line 906
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 907
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 908
    .restart local v5    # "userId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 910
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 911
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 906
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 888
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "userId":I
    :cond_4
    return-void
.end method

.method public forgetAllPackageInfos(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 881
    return-void
.end method

.method public forgetPackageInfo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 872
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_0

    .line 873
    return-void

    .line 875
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 870
    :cond_1
    return-void
.end method

.method public getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 856
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 857
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    goto :goto_0
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useCache"    # Z

    .prologue
    const/4 v5, 0x0

    .line 813
    if-eqz p3, :cond_0

    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getCachedPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 815
    .local v0, "cachedPi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 816
    return-object v0

    .line 820
    .end local v0    # "cachedPi":Landroid/content/pm/PackageInfo;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 821
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p3, :cond_1

    if-eqz v2, :cond_1

    .line 822
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :cond_1
    return-object v2

    .line 825
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Landroid/os/RemoteException;
    return-object v5
.end method

.method public signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName1"    # Ljava/lang/String;
    .param p2, "packageName2"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 842
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 843
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
