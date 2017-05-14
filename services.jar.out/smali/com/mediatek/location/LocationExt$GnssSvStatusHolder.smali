.class public Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;
.super Ljava/lang/Object;
.source "LocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/LocationExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssSvStatusHolder"
.end annotation


# static fields
.field public static final MAX_GNSS_SVS:I = 0x100


# instance fields
.field public mGnssSnrs:[F

.field public mGnssSvAlmanac:[Z

.field public mGnssSvAzimuths:[F

.field public mGnssSvElevations:[F

.field public mGnssSvEphemeris:[Z

.field public mGnssSvInFix:[Z

.field public mGnssSvs:[I

.field final synthetic this$0:Lcom/mediatek/location/LocationExt;


# direct methods
.method public constructor <init>(Lcom/mediatek/location/LocationExt;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/location/LocationExt;

    .prologue
    const/16 v1, 0x100

    .line 274
    iput-object p1, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->this$0:Lcom/mediatek/location/LocationExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvs:[I

    .line 278
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSnrs:[F

    .line 279
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvElevations:[F

    .line 280
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAzimuths:[F

    .line 281
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvEphemeris:[Z

    .line 282
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAlmanac:[Z

    .line 283
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvInFix:[Z

    .line 274
    return-void
.end method


# virtual methods
.method public reportGnssSvStatusStep2(I)I
    .locals 7
    .param p1, "svCount"    # I

    .prologue
    .line 287
    const-string/jumbo v3, "MtkLocationExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GNSS SV count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 289
    const-string/jumbo v4, "MtkLocationExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sv: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvs:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    const-string/jumbo v5, " snr: "

    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    iget-object v5, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSnrs:[F

    aget v5, v5, v0

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    const-string/jumbo v5, " elev: "

    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    iget-object v5, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvElevations:[F

    aget v5, v5, v0

    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    const-string/jumbo v5, " azimuth: "

    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    iget-object v5, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAzimuths:[F

    aget v5, v5, v0

    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 293
    iget-object v3, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvEphemeris:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    const-string/jumbo v3, " E"

    .line 289
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 294
    iget-object v3, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvAlmanac:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    const-string/jumbo v3, " A"

    .line 289
    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 295
    iget-object v3, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvInFix:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    const-string/jumbo v3, " U"

    .line 289
    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    const-string/jumbo v3, " "

    goto :goto_1

    .line 294
    :cond_1
    const-string/jumbo v3, " "

    goto :goto_2

    .line 295
    :cond_2
    const-string/jumbo v3, " "

    goto :goto_3

    .line 298
    :cond_3
    const/4 v1, 0x0

    .line 299
    .local v1, "svFixCount":I
    iget-object v4, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->mGnssSvInFix:[Z

    const/4 v3, 0x0

    array-length v5, v4

    :goto_4
    if-ge v3, v5, :cond_5

    aget-boolean v2, v4, v3

    .line 300
    .local v2, "value":Z
    if-eqz v2, :cond_4

    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 299
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 304
    .end local v2    # "value":Z
    :cond_5
    return v1
.end method

.method public reportGnssSvStatusStep3(ZIJJ)Z
    .locals 5
    .param p1, "navigating"    # Z
    .param p2, "gpsStatus"    # I
    .param p3, "lastFixTime"    # J
    .param p5, "recentFixTimeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 309
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    cmp-long v1, v2, p5

    if-lez v1, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;->this$0:Lcom/mediatek/location/LocationExt;

    invoke-static {v1}, Lcom/mediatek/location/LocationExt;->-get0(Lcom/mediatek/location/LocationExt;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 315
    const/4 v1, 0x1

    return v1

    .line 317
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v4
.end method
