.class Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PnoListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field public final ENABLED_NETWORK_SCORE:I

.field public final PERMANENTLY_DISABLED_NETWORK_SCORE:I

.field public final TEMPORARY_DISABLED_NETWORK_SCORE:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->ENABLED_NETWORK_SCORE:I

    .line 1043
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->TEMPORARY_DISABLED_NETWORK_SCORE:I

    .line 1044
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->PERMANENTLY_DISABLED_NETWORK_SCORE:I

    .line 1040
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;-><init>()V

    return-void
.end method

.method private getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1068
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    const/4 v0, 0x3

    return v0

    .line 1070
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    const/4 v0, 0x2

    return v0

    .line 1073
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1048
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1049
    .local v0, "configAScore":I
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->getPnoNetworkSortScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 1050
    .local v1, "configBScore":I
    if-ne v0, v1, :cond_0

    .line 1051
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    return v2

    .line 1053
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 1047
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1059
    const/4 v0, 0x0

    return v0
.end method
