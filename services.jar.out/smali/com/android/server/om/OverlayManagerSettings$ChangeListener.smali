.class interface abstract Lcom/android/server/om/OverlayManagerSettings$ChangeListener;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ChangeListener"
.end annotation


# virtual methods
.method public abstract onOverlayAdded(Landroid/content/om/OverlayInfo;Z)V
.end method

.method public abstract onOverlayChanged(Landroid/content/om/OverlayInfo;Landroid/content/om/OverlayInfo;Z)V
.end method

.method public abstract onOverlayPriorityChanged(Landroid/content/om/OverlayInfo;)V
.end method

.method public abstract onOverlayRemoved(Landroid/content/om/OverlayInfo;Z)V
.end method

.method public abstract onSettingsChanged()V
.end method
