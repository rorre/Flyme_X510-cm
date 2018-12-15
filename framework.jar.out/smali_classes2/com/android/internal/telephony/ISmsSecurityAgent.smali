.class public interface abstract Lcom/android/internal/telephony/ISmsSecurityAgent;
.super Ljava/lang/Object;
.source "ISmsSecurityAgent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAuthorize(Lcom/android/internal/telephony/SmsAuthorizationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
