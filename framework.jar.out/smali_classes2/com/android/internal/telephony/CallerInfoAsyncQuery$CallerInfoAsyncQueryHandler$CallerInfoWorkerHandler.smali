.class public Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallerInfoWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 171
    return-void
.end method

.method private handleGeoDescription(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 226
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 227
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 228
    .local v1, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-get1(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 230
    .local v6, "startTimeMillis":J
    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-get1(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v5

    iget-object v8, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 232
    .local v2, "duration":J
    const-wide/16 v8, 0x1f4

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    .line 237
    .end local v2    # "duration":J
    .end local v6    # "startTimeMillis":J
    :cond_0
    iget-object v5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 238
    .local v4, "reply":Landroid/os/Message;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 240
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 225
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 178
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 180
    .local v1, "cw":Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v3, "CallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected command (CookieWrapper is null): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 187
    const-string/jumbo v5, " ignored by CallerInfoWorkerHandler, passing onto parent."

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    .line 176
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string/jumbo v3, "CallerInfoAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Processing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " token (arg1): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    const-string/jumbo v5, " command: "

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    iget v5, p1, Landroid/os/Message;->what:I

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    const-string/jumbo v5, " query URI: "

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    iget-object v5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->-wrap0(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v3, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 198
    :pswitch_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v3, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 211
    .local v2, "reply":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 214
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 218
    .end local v2    # "reply":Landroid/os/Message;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->handleGeoDescription(Landroid/os/Message;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
