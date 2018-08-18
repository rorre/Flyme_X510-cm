.class Lcom/android/server/wm/SingleHandAdapter$2$1;
.super Landroid/database/ContentObserver;
.source "SingleHandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SingleHandAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/SingleHandAdapter$2;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SingleHandAdapter$2;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/SingleHandAdapter$2;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/wm/SingleHandAdapter$2$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 113
    const-string/jumbo v0, "SingleHandAdapter"

    const-string/jumbo v1, "onChange.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/SingleHandAdapter$2$1;->this$1:Lcom/android/server/wm/SingleHandAdapter$2;

    iget-object v0, v0, Lcom/android/server/wm/SingleHandAdapter$2;->this$0:Lcom/android/server/wm/SingleHandAdapter;

    invoke-static {v0}, Lcom/android/server/wm/SingleHandAdapter;->-wrap2(Lcom/android/server/wm/SingleHandAdapter;)V

    .line 112
    return-void
.end method
