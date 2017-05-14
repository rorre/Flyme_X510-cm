.class Lcom/mediatek/location/LocationExt$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/LocationExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/LocationExt;


# direct methods
.method constructor <init>(Lcom/mediatek/location/LocationExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/location/LocationExt;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mediatek/location/LocationExt$1;->this$0:Lcom/mediatek/location/LocationExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "MtkLocationExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "receive broadcast intent, action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string/jumbo v3, "android.location.agps.EMERGENCY_CALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 213
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 214
    const-string/jumbo v3, "EM_Call_State"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, "state":I
    if-ne v6, v2, :cond_1

    .line 216
    const-string/jumbo v3, "MtkLocationExt"

    const-string/jumbo v4, "E911 dialed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/mediatek/location/LocationExt$1;->this$0:Lcom/mediatek/location/LocationExt;

    invoke-static {v3, v6}, Lcom/mediatek/location/LocationExt;->-set0(Lcom/mediatek/location/LocationExt;Z)Z

    .line 207
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "state":I
    :cond_1
    const-string/jumbo v3, "MtkLocationExt"

    const-string/jumbo v4, "E911 ended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/mediatek/location/LocationExt$1;->this$0:Lcom/mediatek/location/LocationExt;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mediatek/location/LocationExt;->-set0(Lcom/mediatek/location/LocationExt;Z)Z

    goto :goto_0

    .line 223
    .end local v2    # "state":I
    :cond_2
    const-string/jumbo v3, "MtkLocationExt"

    const-string/jumbo v4, "E911 null bundle"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
