.class Lcom/android/internal/app/AlertController$AlertParams$3;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "this$1"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Landroid/database/Cursor;
    .param p5, "$anonymous3"    # [Ljava/lang/String;
    .param p6, "$anonymous4"    # [I

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1115
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1118
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1119
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1120
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 1121
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1122
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    if-eq v2, p1, :cond_0

    .line 1123
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1127
    :cond_0
    return-object v0

    .line 1129
    .end local v0    # "checkedTextView":Landroid/widget/CheckedTextView;
    :cond_1
    return-object v1
.end method
