.class final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsItem"
.end annotation


# instance fields
.field private baseCodePath:Ljava/lang/String;

.field private cache:Landroid/content/om/OverlayInfo;

.field private isEnabled:Z

.field private isUpgrading:Z

.field private final packageName:Ljava/lang/String;

.field private state:I

.field private final targetPackageName:Ljava/lang/String;

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->baseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isUpgrading:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1

    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->state:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1

    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->userId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isUpgrading()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)V
    .locals 0
    .param p1, "upgrading"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setUpgrading(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 487
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)V

    .line 486
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;
    .param p5, "state"    # I
    .param p6, "isEnabled"    # Z
    .param p7, "isUpgrading"    # Z

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->packageName:Ljava/lang/String;

    .line 476
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->userId:I

    .line 477
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->targetPackageName:Ljava/lang/String;

    .line 478
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->baseCodePath:Ljava/lang/String;

    .line 479
    iput p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->state:I

    .line 480
    iput-boolean p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled:Z

    .line 481
    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isUpgrading:Z

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->cache:Landroid/content/om/OverlayInfo;

    .line 474
    return-void
.end method

.method private getBaseCodePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->baseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method private getOverlayInfo()Landroid/content/om/OverlayInfo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isUpgrading:Z

    if-eqz v0, :cond_0

    .line 541
    return-object v1

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->cache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_1

    .line 544
    new-instance v0, Landroid/content/om/OverlayInfo;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->targetPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->baseCodePath:Ljava/lang/String;

    .line 545
    iget v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->state:I

    iget v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->userId:I

    .line 544
    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->cache:Landroid/content/om/OverlayInfo;

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->cache:Landroid/content/om/OverlayInfo;

    return-object v0
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->state:I

    return v0
.end method

.method private getTargetPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private invalidateCache()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->cache:Landroid/content/om/OverlayInfo;

    .line 550
    return-void
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled:Z

    return v0
.end method

.method private isUpgrading()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isUpgrading:Z

    return v0
.end method

.method private setBaseCodePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->baseCodePath:Ljava/lang/String;

    .line 502
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 499
    :cond_0
    return-void
.end method

.method private setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled:Z

    if-eq v0, p1, :cond_0

    .line 523
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled:Z

    .line 524
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 521
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 511
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->state:I

    if-eq v0, p1, :cond_0

    .line 512
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->state:I

    .line 513
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 510
    :cond_0
    return-void
.end method

.method private setUpgrading(Z)V
    .locals 1
    .param p1, "upgrading"    # Z

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isUpgrading:Z

    if-eq v0, p1, :cond_0

    .line 534
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isUpgrading:Z

    .line 535
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 532
    :cond_0
    return-void
.end method
