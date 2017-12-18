.class Lcom/android/server/AppOpsService$4;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 362
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    return v2

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    return v2

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const/4 v0, 0x2

    return v0

    .line 373
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppOpsService$4;->getMountMode(ILjava/lang/String;)I

    move-result v0

    .line 379
    .local v0, "mountMode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 380
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 380
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
