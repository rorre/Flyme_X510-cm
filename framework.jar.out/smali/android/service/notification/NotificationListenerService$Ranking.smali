.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final IMPORTANCE_VERY_LOW:I = 0x6

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mRank:I

.field private mSuppressedVisualEffects:I

.field private mVisibilityOverride:I


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1089
    return-void
.end method

.method public static importanceToLevel(I)I
    .locals 1
    .param p0, "importance"    # I

    .prologue
    const/4 v0, 0x4

    .line 1218
    packed-switch p0, :pswitch_data_0

    .line 1234
    return v0

    .line 1220
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1222
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1224
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1226
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1228
    :pswitch_4
    return v0

    .line 1230
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1232
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "importance"    # I

    .prologue
    .line 1192
    sparse-switch p0, :sswitch_data_0

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1194
    :sswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    .line 1196
    :sswitch_1
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 1198
    :sswitch_2
    const-string/jumbo v0, "MIN"

    return-object v0

    .line 1200
    :sswitch_3
    const-string/jumbo v0, "VERY_LOW"

    return-object v0

    .line 1202
    :sswitch_4
    const-string/jumbo v0, "LOW"

    return-object v0

    .line 1204
    :sswitch_5
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    .line 1206
    :sswitch_6
    const-string/jumbo v0, "HIGH"

    return-object v0

    .line 1208
    :sswitch_7
    const-string/jumbo v0, "MAX"

    return-object v0

    .line 1192
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_3
    .end sparse-switch
.end method

.method public static levelToImportance(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 1242
    packed-switch p0, :pswitch_data_0

    .line 1258
    const/16 v0, -0x3e8

    return v0

    .line 1244
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1246
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1248
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 1250
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1252
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1254
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 1256
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 1242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;

    .prologue
    .line 1177
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 1178
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1179
    invoke-static {p6}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToLevel(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToLevel(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 1180
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 1181
    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 1182
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 1183
    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 1184
    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 1185
    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 1176
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getImportance()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public getSuppressedVisualEffects()I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getVisibilityOverride()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method
