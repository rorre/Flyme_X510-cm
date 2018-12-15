.class Lcom/android/server/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CredentialHash"
.end annotation


# static fields
.field static final TYPE_NONE:I = -0x1

.field static final TYPE_PASSWORD:I = 0x2

.field static final TYPE_PATTERN:I = 0x1

.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field version:I


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "version"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 90
    iput p2, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 88
    return-void
.end method

.method constructor <init>([BZ)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "isBaseZeroPattern"    # Z

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    .line 97
    iput-boolean p2, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 94
    return-void
.end method
