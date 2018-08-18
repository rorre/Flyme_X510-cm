.class Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;
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
    name = "SingleScanListener"
.end annotation


# instance fields
.field private final mIsFullBandScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "isFullBandScan"    # Z

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    .line 394
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SingleScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 418
    const-string/jumbo v2, " description: "

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get3(Lcom/android/server/wifi/WifiConnectivityManager;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->mIsFullBandScan:Z

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap4(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 415
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 425
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "Failed to successfully start single scan for 5 times"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 441
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SingleScanListener onPeriodChanged: actual scan period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
    const-string/jumbo v2, "ms"

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 437
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v2, "SingleScanListener onSuccess"

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "mScanCount":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getScanCount()I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getMaxConfiguredScanCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->setScanCount(I)V

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$SingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set1(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 399
    return-void
.end method
