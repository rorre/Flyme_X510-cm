.class public Lcom/android/internal/telephony/SmsAuthorizationRequest;
.super Ljava/lang/Object;
.source "SmsAuthorizationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsAuthorizationRequest$1;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/SmsAuthorizationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final destinationAddress:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field private final service:Lcom/android/internal/telephony/ISmsSecurityService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/internal/telephony/SmsAuthorizationRequest$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsAuthorizationRequest$1;-><init>()V

    .line 90
    sput-object v0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsSecurityService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ISmsSecurityService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "service"    # Lcom/android/internal/telephony/ISmsSecurityService;
    .param p2, "binderToken"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    .line 71
    iput-object p3, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public accept()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/ISmsSecurityService;->sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z

    .line 103
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public reject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/internal/telephony/ISmsSecurityService;->sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string/jumbo v0, "[%s] (%s) # %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 119
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 117
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->service:Lcom/android/internal/telephony/ISmsSecurityService;

    invoke-interface {v0}, Lcom/android/internal/telephony/ISmsSecurityService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->destinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAuthorizationRequest;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
