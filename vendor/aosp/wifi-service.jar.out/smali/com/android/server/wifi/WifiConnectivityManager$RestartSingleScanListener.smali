.class Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartSingleScanListener"
.end annotation


# instance fields
.field private mIsFullBandScan:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;
    .param p2, "isFullBandScan"    # Z

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    .line 187
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getScanCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-get4(Lcom/android/server/wifi/WifiConnectivityManager;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getMaxConfiguredScanCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$RestartSingleScanListener;->mIsFullBandScan:Z

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap6(Lcom/android/server/wifi/WifiConnectivityManager;Z)V

    .line 192
    return-void
.end method
