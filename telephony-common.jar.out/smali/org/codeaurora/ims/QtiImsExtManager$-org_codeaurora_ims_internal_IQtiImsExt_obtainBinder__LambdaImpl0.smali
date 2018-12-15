.class final synthetic Lorg/codeaurora/ims/QtiImsExtManager$-org_codeaurora_ims_internal_IQtiImsExt_obtainBinder__LambdaImpl0;
.super Ljava/lang/Object;
.source "QtiImsExtManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/QtiImsExtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-org_codeaurora_ims_internal_IQtiImsExt_obtainBinder__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lorg/codeaurora/ims/QtiImsExtManager;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/QtiImsExtManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExtManager$-org_codeaurora_ims_internal_IQtiImsExt_obtainBinder__LambdaImpl0;->val$this:Lorg/codeaurora/ims/QtiImsExtManager;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtManager$-org_codeaurora_ims_internal_IQtiImsExt_obtainBinder__LambdaImpl0;->val$this:Lorg/codeaurora/ims/QtiImsExtManager;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsExtManager;->-org_codeaurora_ims_QtiImsExtManager_lambda$1()V

    return-void
.end method
