.class Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldMode;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldMode$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    const-string/jumbo v3, "[Receiver]+"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->-wrap1(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->-wrap1(Ljava/lang/String;)V

    .line 133
    const/4 v2, -0x1

    .line 135
    .local v2, "wmState":I
    const-string/jumbo v3, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    const-string/jumbo v3, "worldModeState"

    const/4 v4, -0x1

    .line 136
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wmState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->-wrap1(Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 140
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->-wrap0()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->-set0(I)I

    .line 153
    :cond_0
    :goto_0
    const-string/jumbo v3, "[Receiver]-"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->-wrap1(Ljava/lang/String;)V

    .line 129
    return-void

    .line 142
    :cond_1
    const-string/jumbo v3, "android.intent.action.ACTION_ADB_SWITCH_WORLD_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const-string/jumbo v3, "worldMode"

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "toMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toModem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->-wrap1(Ljava/lang/String;)V

    .line 146
    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 147
    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    .line 150
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->setWorldMode(I)V

    goto :goto_0

    .line 148
    :cond_3
    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    .line 149
    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    goto :goto_1
.end method
