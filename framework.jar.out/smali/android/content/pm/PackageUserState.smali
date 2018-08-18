.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public blockUninstall:Z

.field public ceDataInode:J

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installed:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public protectedComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stopped:Z

.field public suspended:Z

.field public visibleComponents:Landroid/util/ArraySet;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 58
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 59
    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 60
    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 61
    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 4
    .param p1, "o"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-wide v2, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 67
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 68
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 69
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 70
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 71
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 72
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    .line 73
    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 74
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 75
    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 76
    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 77
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 78
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 79
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->protectedComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/PackageUserState;->protectedComponents:Landroid/util/ArraySet;

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 79
    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->protectedComponents:Landroid/util/ArraySet;

    .line 81
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->visibleComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/content/pm/PackageUserState;->visibleComponents:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 81
    :cond_0
    iput-object v1, p0, Landroid/content/pm/PackageUserState;->visibleComponents:Landroid/util/ArraySet;

    .line 65
    return-void

    :cond_1
    move-object v0, v1

    .line 80
    goto :goto_0
.end method


# virtual methods
.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_0

    .line 125
    return v3

    .line 130
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :cond_1
    :pswitch_0
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    return v3

    .line 133
    :pswitch_1
    return v2

    .line 135
    :pswitch_2
    const v0, 0x8000

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 136
    return v2

    .line 139
    :cond_2
    :pswitch_3
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 140
    return v2

    .line 151
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Landroid/util/ArraySet;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    return v2

    .line 155
    :cond_4
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return v0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isInstalled(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_1

    .line 91
    :cond_0
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_2

    .line 90
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isInstalled(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    .line 105
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 107
    :cond_1
    const/high16 v2, 0x100000

    and-int/2addr v2, p2

    if-eqz v2, :cond_2

    .line 108
    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    return v3

    .line 113
    :cond_2
    const/high16 v2, 0x40000

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    .line 114
    iget-boolean v2, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 115
    .local v1, "matchesUnaware":Z
    :goto_0
    const/high16 v2, 0x80000

    and-int/2addr v2, p2

    if-eqz v2, :cond_5

    .line 116
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 117
    :goto_1
    if-nez v1, :cond_6

    :goto_2
    return v0

    .line 114
    .end local v1    # "matchesUnaware":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "matchesUnaware":Z
    goto :goto_0

    .line 113
    .end local v1    # "matchesUnaware":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "matchesUnaware":Z
    goto :goto_0

    .line 115
    :cond_5
    const/4 v0, 0x0

    .local v0, "matchesAware":Z
    goto :goto_1

    .line 117
    .end local v0    # "matchesAware":Z
    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method
