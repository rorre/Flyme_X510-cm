.class Landroid/media/RemoteControlClient$1;
.super Landroid/media/session/MediaSession$Callback;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 1078
    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getNowPlayingEntries()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 1106
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1108
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1104
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1082
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-get1(Landroid/media/RemoteControlClient;)I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/media/RemoteControlClient;->-wrap1(Landroid/media/RemoteControlClient;IJ)V

    .line 1081
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 1087
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get7(Landroid/media/RemoteControlClient;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-get1(Landroid/media/RemoteControlClient;)I

    move-result v1

    const v2, 0x10000001

    invoke-static {v0, v1, v2, p1}, Landroid/media/RemoteControlClient;->-wrap4(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V

    .line 1086
    :cond_0
    return-void
.end method

.method public setBrowsedPlayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1115
    const-string/jumbo v0, "RemoteControlClient"

    const-string/jumbo v1, "setBrowsedPlayer in RemoteControlClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    .line 1118
    const/16 v2, 0xc

    .line 1117
    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1114
    :cond_0
    return-void
.end method

.method public setPlayItem(IJ)V
    .locals 6
    .param p1, "scope"    # I
    .param p2, "uid"    # J

    .prologue
    const/16 v4, 0xd

    .line 1095
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 1097
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-get2(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;

    move-result-object v1

    .line 1099
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    .line 1098
    const/4 v3, 0x0

    .line 1097
    invoke-virtual {v1, v4, v3, p1, v2}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1093
    :cond_0
    return-void
.end method
