.class public final enum Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;
.super Ljava/lang/Enum;
.source "FdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/FdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FdModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

.field public static final enum DISABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

.field public static final enum ENABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

.field public static final enum INFO_MD_SCREEN_STATUS:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

.field public static final enum SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    const-string/jumbo v1, "DISABLE_MD_FD"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->DISABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    .line 81
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    const-string/jumbo v1, "ENABLE_MD_FD"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ENABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    .line 82
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    const-string/jumbo v1, "SET_FD_INACTIVITY_TIMER"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    .line 83
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    const-string/jumbo v1, "INFO_MD_SCREEN_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->INFO_MD_SCREEN_STATUS:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->DISABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->ENABLE_MD_FD:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->SET_FD_INACTIVITY_TIMER:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->INFO_MD_SCREEN_STATUS:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdModeType;

    return-object v0
.end method
