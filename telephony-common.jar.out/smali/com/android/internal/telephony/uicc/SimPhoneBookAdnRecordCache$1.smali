.class Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;
.super Landroid/content/BroadcastReceiver;
.source "SimPhoneBookAdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string/jumbo v2, "phone"

    .line 271
    const/4 v3, -0x1

    .line 270
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, "phoneId":I
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "simStatus":Ljava/lang/String;
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;

    iget v2, v2, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    if-ne v2, v0, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACTION_SIM_STATE_CHANGED intent received simStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->-wrap0(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    .line 268
    .end local v0    # "phoneId":I
    .end local v1    # "simStatus":Ljava/lang/String;
    :cond_0
    return-void
.end method
