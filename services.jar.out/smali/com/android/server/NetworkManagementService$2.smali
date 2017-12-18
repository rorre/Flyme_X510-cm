.class Lcom/android/server/NetworkManagementService$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-wrap13(Lcom/android/server/NetworkManagementService;)V

    .line 381
    return-void
.end method
