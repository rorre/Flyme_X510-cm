.class final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerSettings$BadKeyException;,
        Lcom/android/server/om/OverlayManagerSettings$ChangeListener;,
        Lcom/android/server/om/OverlayManagerSettings$Serializer;,
        Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    }
.end annotation


# static fields
.field private static final TAB1:Ljava/lang/String; = "    "

.field private static final TAB2:Ljava/lang/String; = "        "

.field private static final TAB3:Ljava/lang/String; = "            "


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$ChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method private assertNotNull(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 587
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "object must not be null"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    return-void
.end method

.method private dumpItems(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 335
    const-string/jumbo v3, "    Items"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const-string/jumbo v3, "        <none>"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    return-void

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 343
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " {\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string/jumbo v3, "            packageName.......: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string/jumbo v3, "            userId............: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string/jumbo v3, "            targetPackageName.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string/jumbo v3, "            baseCodePath......: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string/jumbo v3, "            state.............: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-static {v4}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string/jumbo v3, "            isEnabled.........: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string/jumbo v3, "            isUpgrading.......: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string/jumbo v3, "        }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private dumpListeners(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 358
    const-string/jumbo v2, "    Change listeners"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const-string/jumbo v2, "        <none>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    return-void

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ch$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .line 366
    .local v0, "ch":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v0    # "ch":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    :cond_1
    return-void
.end method

.method private notifyOverlayAdded(Landroid/content/om/OverlayInfo;Z)V
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "shouldWait"    # Z

    .prologue
    .line 609
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .line 610
    .local v0, "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;->onOverlayAdded(Landroid/content/om/OverlayInfo;Z)V

    goto :goto_0

    .line 605
    .end local v0    # "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    :cond_0
    return-void
.end method

.method private notifyOverlayChanged(Landroid/content/om/OverlayInfo;Landroid/content/om/OverlayInfo;Z)V
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "oldOi"    # Landroid/content/om/OverlayInfo;
    .param p3, "shouldWait"    # Z

    .prologue
    .line 629
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .line 630
    .local v0, "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;->onOverlayChanged(Landroid/content/om/OverlayInfo;Landroid/content/om/OverlayInfo;Z)V

    goto :goto_0

    .line 624
    .end local v0    # "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    :cond_0
    return-void
.end method

.method private notifyOverlayPriorityChanged(Landroid/content/om/OverlayInfo;)V
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .prologue
    .line 638
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .line 639
    .local v0, "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    invoke-interface {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;->onOverlayPriorityChanged(Landroid/content/om/OverlayInfo;)V

    goto :goto_0

    .line 634
    .end local v0    # "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    :cond_0
    return-void
.end method

.method private notifyOverlayRemoved(Landroid/content/om/OverlayInfo;Z)V
    .locals 3
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;
    .param p2, "shouldWait"    # Z

    .prologue
    .line 618
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .line 619
    .local v0, "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;->onOverlayRemoved(Landroid/content/om/OverlayInfo;Z)V

    goto :goto_0

    .line 614
    .end local v0    # "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    :cond_0
    return-void
.end method

.method private notifySettingsChanged()V
    .locals 3

    .prologue
    .line 600
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .line 601
    .local v0, "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    invoke-interface {v0}, Lcom/android/server/om/OverlayManagerSettings$ChangeListener;->onSettingsChanged()V

    goto :goto_0

    .line 599
    .end local v0    # "listener":Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
    :cond_0
    return-void
.end method

.method private select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 557
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    return-object v0

    .line 561
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private selectWhereTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 578
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 582
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    return-object v2
.end method

.method private selectWhereUser(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 567
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 568
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    return-object v2
.end method


# virtual methods
.method addChangeListener(Lcom/android/server/om/OverlayManagerSettings$ChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-void
.end method

.method contains(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 329
    const-string/jumbo v0, "Settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->dumpItems(Ljava/io/PrintWriter;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->dumpListeners(Ljava/io/PrintWriter;)V

    .line 328
    return-void
.end method

.method getEnabled(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 147
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 148
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 150
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    return v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 90
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 93
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    return-object v1
.end method

.method getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;
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
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 199
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v3, "out":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 201
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_2
    return-object v3
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .locals 7
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
    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/List;

    move-result-object v2

    .line 211
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    return-object v6

    .line 214
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 215
    .local v3, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 216
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "targetPackageName":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 221
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 224
    .local v4, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .end local v4    # "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v5    # "targetPackageName":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method getState(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 169
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 172
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    return v1
.end method

.method getTargetPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 99
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 100
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getTargetPackageNamesForUser(I)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
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
    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/List;

    move-result-object v2

    .line 231
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 234
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 236
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 239
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "targetPackageName":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 241
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .end local v4    # "targetPackageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method getUpgrading(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 118
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 119
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 121
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    return v1
.end method

.method getUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 250
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    return-object v2
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)V

    .line 67
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method persist(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    .line 375
    return-void
.end method

.method remove(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 73
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 77
    .local v1, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    if-eqz v1, :cond_1

    .line 79
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/om/OverlayManagerSettings;->notifyOverlayRemoved(Landroid/content/om/OverlayInfo;Z)V

    .line 71
    :cond_1
    return-void
.end method

.method removeChangeListener(Lcom/android/server/om/OverlayManagerSettings$ChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/om/OverlayManagerSettings$ChangeListener;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 595
    return-void
.end method

.method removeUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 261
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 257
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_1
    return-void
.end method

.method restore(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    .line 371
    return-void
.end method

.method setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 108
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 109
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 111
    :cond_0
    invoke-static {v0, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    .line 106
    return-void
.end method

.method setEnabled(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 156
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 157
    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 159
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    if-ne p3, v1, :cond_1

    .line 160
    return-void

    .line 163
    :cond_1
    invoke-static {v0, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)V

    .line 164
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    .line 154
    return-void
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 314
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerSettings;->notifyOverlayPriorityChanged(Landroid/content/om/OverlayInfo;)V

    .line 320
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    .line 321
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 302
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    return v2

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 307
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerSettings;->notifyOverlayPriorityChanged(Landroid/content/om/OverlayInfo;)V

    .line 308
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    .line 309
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    return v6

    .line 272
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v3

    .line 273
    .local v3, "rowToMove":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 274
    :cond_1
    return v6

    .line 276
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v2

    .line 277
    .local v2, "newParentRow":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 278
    :cond_3
    return v6

    .line 280
    :cond_4
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 281
    return v6

    .line 284
    :cond_5
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 286
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 287
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 288
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    if-ne v4, p3, :cond_6

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 289
    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 290
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerSettings;->notifyOverlayPriorityChanged(Landroid/content/om/OverlayInfo;)V

    .line 291
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    .line 292
    const/4 v4, 0x1

    return v4

    .line 296
    .end local v0    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :cond_7
    const-string/jumbo v4, "OverlayManager"

    const-string/jumbo v5, "failed to find the parent item a second time"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v6
.end method

.method setState(Ljava/lang/String;IIZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "state"    # I
    .param p4, "shouldWait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v1

    .line 178
    .local v1, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v1, :cond_0

    .line 179
    new-instance v3, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v3, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 181
    :cond_0
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 182
    .local v2, "previous":Landroid/content/om/OverlayInfo;
    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap8(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)V

    .line 183
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 184
    .local v0, "current":Landroid/content/om/OverlayInfo;
    iget v3, v2, Landroid/content/om/OverlayInfo;->state:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 185
    invoke-direct {p0, v0, p4}, Lcom/android/server/om/OverlayManagerSettings;->notifyOverlayAdded(Landroid/content/om/OverlayInfo;Z)V

    .line 186
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget v3, v0, Landroid/content/om/OverlayInfo;->state:I

    iget v4, v2, Landroid/content/om/OverlayInfo;->state:I

    if-eq v3, v4, :cond_1

    .line 188
    invoke-direct {p0, v0, v2, p4}, Lcom/android/server/om/OverlayManagerSettings;->notifyOverlayChanged(Landroid/content/om/OverlayInfo;Landroid/content/om/OverlayInfo;Z)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    goto :goto_0
.end method

.method setUpgrading(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v0

    .line 127
    .local v0, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    if-nez v0, :cond_0

    .line 128
    new-instance v2, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 130
    :cond_0
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    if-ne p3, v2, :cond_1

    .line 131
    return-void

    .line 134
    :cond_1
    if-eqz p3, :cond_2

    .line 135
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    .line 136
    .local v1, "oi":Landroid/content/om/OverlayInfo;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)V

    .line 137
    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap8(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)V

    .line 138
    invoke-direct {p0, v1, v3}, Lcom/android/server/om/OverlayManagerSettings;->notifyOverlayRemoved(Landroid/content/om/OverlayInfo;Z)V

    .line 142
    .end local v1    # "oi":Landroid/content/om/OverlayInfo;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings;->notifySettingsChanged()V

    .line 125
    return-void

    .line 140
    :cond_2
    invoke-static {v0, v3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)V

    goto :goto_0
.end method
