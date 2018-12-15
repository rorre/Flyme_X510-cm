.class final Lcom/android/internal/telephony/SmsAuthorizationRequest$1;
.super Ljava/lang/Object;
.source "SmsAuthorizationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsAuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/SmsAuthorizationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsAuthorizationRequest;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 99
    new-instance v0, Lcom/android/internal/telephony/SmsAuthorizationRequest;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsAuthorizationRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsAuthorizationRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsAuthorizationRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/SmsAuthorizationRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 94
    new-array v0, p1, [Lcom/android/internal/telephony/SmsAuthorizationRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsAuthorizationRequest$1;->newArray(I)[Lcom/android/internal/telephony/SmsAuthorizationRequest;

    move-result-object v0

    return-object v0
.end method
