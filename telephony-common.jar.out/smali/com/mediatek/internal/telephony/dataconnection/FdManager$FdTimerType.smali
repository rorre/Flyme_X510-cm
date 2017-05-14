.class public final enum Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;
.super Ljava/lang/Enum;
.source "FdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/FdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FdTimerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

.field public static final enum ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

.field public static final enum ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

.field public static final enum ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

.field public static final enum ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

.field public static final enum SupportedTimerTypes:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    const-string/jumbo v1, "ScreenOffLegacyFd"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    .line 88
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    const-string/jumbo v1, "ScreenOnLegacyFd"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    .line 89
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    const-string/jumbo v1, "ScreenOffR8Fd"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    .line 90
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    const-string/jumbo v1, "ScreenOnR8Fd"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    .line 91
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    const-string/jumbo v1, "SupportedTimerTypes"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->SupportedTimerTypes:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnLegacyFd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOffR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->ScreenOnR8Fd:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->SupportedTimerTypes:Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;->$VALUES:[Lcom/mediatek/internal/telephony/dataconnection/FdManager$FdTimerType;

    return-object v0
.end method
