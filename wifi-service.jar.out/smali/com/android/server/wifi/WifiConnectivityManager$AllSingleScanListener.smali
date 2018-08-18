.class Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllSingleScanListener"
.end annotation


# instance fields
.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    const-string/jumbo v2, " description: "

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get7(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get6(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AllSingleScanListener onFullResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    const-string/jumbo v2, " capabilities "

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/wifi/util/ScanDetailUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-void

    .line 369
    :cond_1
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0
    .param p1, "periodInMs"    # I

    .prologue
    .line 328
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get7(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get6(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get5(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiScanner$ScanData;->isAllChannelsScanned()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v2, "AllSingleScanListener waiting for full band scan results."

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    .line 344
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    .line 335
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set2(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    .line 336
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set2(Lcom/android/server/wifi/WifiConnectivityManager;Z)Z

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->mScanDetails:Ljava/util/List;

    const-string/jumbo v3, "AllSingleScanListener"

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 351
    .local v0, "wasConnectAttempted":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->clearScanDetails()V

    .line 357
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get1(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    if-eqz v0, :cond_4

    .line 359
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get8(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoBad()V

    .line 332
    :cond_3
    :goto_0
    return-void

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get8(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiMetrics;->incrementNumConnectivityWatchdogPnoGood()V

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$AllSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v1, "registerScanListener onSuccess"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 316
    return-void
.end method
