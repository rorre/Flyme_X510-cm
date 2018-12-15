.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface; = null

.field private static DEFAULT_INTERNAL:Landroid/graphics/Typeface; = null

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static MONOSPACE_INTERNAL:Landroid/graphics/Typeface; = null

.field public static final NORMAL:I = 0x0

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field static final SANS_SERIF_FAMILY_NAME:Ljava/lang/String; = "sans-serif"

.field private static SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static SERIF_INTERNAL:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 47
    const-string/jumbo v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 65
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 71
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 521
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 523
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 524
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    .line 525
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 526
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 527
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    .line 529
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 530
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 531
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 532
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 533
    new-instance v0, Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-direct {v0, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 535
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    .line 536
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    .line 537
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    .line 538
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    .line 539
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    .line 535
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 45
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 302
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 307
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 301
    return-void
.end method

.method private static addFallbackFontsForFamilyName(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;Ljava/lang/String;)V
    .locals 3
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;
    .param p2, "familyName"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v2, p0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "srcFamily$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Family;

    .line 343
    .local v0, "srcFamily":Landroid/graphics/FontListParser$Family;
    iget-object v2, v0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    .line 346
    iget-object v2, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    return-void

    .line 341
    .end local v0    # "srcFamily":Landroid/graphics/FontListParser$Family;
    :cond_1
    return-void
.end method

.method private static addMissingFontAliases(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V
    .locals 7
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;

    .prologue
    .line 384
    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 386
    .local v0, "N":I
    iget-object v6, p0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "alias$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/FontListParser$Alias;

    .line 387
    .local v2, "alias":Landroid/graphics/FontListParser$Alias;
    const/4 v1, 0x1

    .line 388
    .local v1, "addAlias":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 389
    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/FontListParser$Alias;

    iget-object v4, v6, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 390
    .local v4, "dstAliasName":Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v6, v2, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 391
    const/4 v1, 0x0

    .line 395
    .end local v4    # "dstAliasName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    .line 396
    iget-object v6, p1, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    .restart local v4    # "dstAliasName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 383
    .end local v1    # "addAlias":Z
    .end local v2    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v4    # "dstAliasName":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private static addMissingFontFamilies(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V
    .locals 8
    .param p0, "src"    # Landroid/graphics/FontListParser$Config;
    .param p1, "dst"    # Landroid/graphics/FontListParser$Config;

    .prologue
    .line 359
    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 361
    .local v0, "N":I
    iget-object v7, p0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "srcFamily$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/FontListParser$Family;

    .line 362
    .local v5, "srcFamily":Landroid/graphics/FontListParser$Family;
    const/4 v1, 0x1

    .line 363
    .local v1, "addFamily":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 364
    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/FontListParser$Family;

    .line 365
    .local v2, "dstFamily":Landroid/graphics/FontListParser$Family;
    iget-object v3, v2, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    .line 366
    .local v3, "dstFamilyName":Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v7, v5, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 367
    const/4 v1, 0x0

    .line 371
    .end local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .end local v3    # "dstFamilyName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    .line 372
    iget-object v7, p1, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    .restart local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .restart local v3    # "dstFamilyName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 358
    .end local v1    # "addFamily":Z
    .end local v2    # "dstFamily":Landroid/graphics/FontListParser$Family;
    .end local v3    # "dstFamilyName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "srcFamily":Landroid/graphics/FontListParser$Family;
    :cond_3
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 151
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 152
    :cond_0
    const/4 p1, 0x0

    .line 154
    :cond_1
    const-wide/16 v0, 0x0

    .line 155
    .local v0, "ni":J
    if-eqz p0, :cond_3

    .line 157
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_2

    .line 158
    return-object p0

    .line 161
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 165
    :cond_3
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 167
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 169
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_4

    .line 170
    return-object v3

    .line 174
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 175
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_5

    .line 176
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 177
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 179
    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 133
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    return-object v1
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v2

    .line 228
    .local v2, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 230
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 231
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 201
    sget-object v4, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v4, :cond_2

    .line 202
    sget-object v5, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 203
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_0

    monitor-exit v5

    return-object v3

    .line 207
    :cond_0
    :try_start_1
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 208
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/graphics/FontFamily;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 210
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 211
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 212
    return-object v3

    .end local v0    # "families":[Landroid/graphics/FontFamily;
    :cond_1
    monitor-exit v5

    .line 216
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Font asset not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 202
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 272
    array-length v3, p0

    new-array v1, v3, [J

    .line 273
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 274
    aget-object v3, p0, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 279
    .local v2, "typeface":Landroid/graphics/Typeface;
    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 290
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 291
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 292
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 295
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 255
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 256
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 257
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, v3}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    aput-object v1, v0, v3

    .line 259
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 262
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 190
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 545
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getSystemFontDirLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontDirLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 32

    .prologue
    .line 408
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v23

    .line 409
    .local v23, "systemFontConfigLocation":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontConfigLocation()Ljava/io/File;

    move-result-object v26

    .line 411
    .local v26, "themeFontConfigLocation":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    const-string/jumbo v29, "fonts.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    .local v21, "systemConfigFile":Ljava/io/File;
    new-instance v25, Ljava/io/File;

    const-string/jumbo v29, "fonts.xml"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    .local v25, "themeConfigFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 416
    .local v8, "configFile":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 417
    move-object/from16 v8, v25

    .line 418
    .local v8, "configFile":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontDirLocation()Ljava/io/File;

    move-result-object v17

    .line 426
    .local v17, "fontDir":Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    .line 425
    move-object/from16 v0, v29

    invoke-static {v8, v0}, Landroid/graphics/FontListParser;->parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v16

    .line 427
    .local v16, "fontConfig":Landroid/graphics/FontListParser$Config;
    const/16 v22, 0x0

    .line 432
    .local v22, "systemFontConfig":Landroid/graphics/FontListParser$Config;
    move-object/from16 v0, v25

    if-ne v8, v0, :cond_0

    .line 434
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontDirLocation()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    .line 433
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/graphics/FontListParser;->parse(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/FontListParser$Config;

    move-result-object v22

    .line 435
    .local v22, "systemFontConfig":Landroid/graphics/FontListParser$Config;
    const-string/jumbo v29, "sans-serif"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->addFallbackFontsForFamilyName(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->addMissingFontFamilies(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V

    .line 437
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->addMissingFontAliases(Landroid/graphics/FontListParser$Config;Landroid/graphics/FontListParser$Config;)V

    .line 440
    .end local v22    # "systemFontConfig":Landroid/graphics/FontListParser$Config;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v7, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v15, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 446
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/FontListParser$Family;

    .line 447
    .local v13, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v19, :cond_1

    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_2

    .line 448
    :cond_1
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 445
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 420
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v17    # "fontDir":Ljava/io/File;
    .end local v19    # "i":I
    .local v8, "configFile":Ljava/io/File;
    :cond_3
    move-object/from16 v8, v21

    .line 421
    .local v8, "configFile":Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontDirLocation()Ljava/io/File;

    move-result-object v17

    .restart local v17    # "fontDir":Ljava/io/File;
    goto :goto_0

    .line 452
    .restart local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v19    # "i":I
    :cond_4
    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/graphics/FontFamily;

    sput-object v29, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 453
    sget-object v29, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v29 .. v29}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 455
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 456
    .local v24, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 458
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/FontListParser$Family;

    .line 459
    .restart local v13    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    .line 460
    if-nez v19, :cond_6

    .line 463
    sget-object v27, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 469
    .local v27, "typeface":Landroid/graphics/Typeface;
    :goto_3
    iget-object v0, v13, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .end local v27    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 465
    :cond_6
    invoke-static {v13, v7}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v18

    .line 466
    .local v18, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v14, v0, [Landroid/graphics/FontFamily;

    const/16 v29, 0x0

    aput-object v18, v14, v29

    .line 467
    .local v14, "families":[Landroid/graphics/FontFamily;
    invoke-static {v14}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v27

    .restart local v27    # "typeface":Landroid/graphics/Typeface;
    goto :goto_3

    .line 472
    .end local v13    # "f":Landroid/graphics/FontListParser$Family;
    .end local v14    # "families":[Landroid/graphics/FontFamily;
    .end local v18    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v27    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 473
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    .line 474
    .local v6, "base":Landroid/graphics/Typeface;
    move-object/from16 v20, v6

    .line 475
    .local v20, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v28, v0

    .line 476
    .local v28, "weight":I
    const/16 v29, 0x190

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 477
    new-instance v20, Landroid/graphics/Typeface;

    .end local v20    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v6, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v30

    move-object/from16 v0, v20

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 479
    .restart local v20    # "newFace":Landroid/graphics/Typeface;
    :cond_8
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 483
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v19    # "i":I
    .end local v20    # "newFace":Landroid/graphics/Typeface;
    .end local v24    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v28    # "weight":I
    :catch_0
    move-exception v11

    .line 484
    .local v11, "e":Ljava/lang/RuntimeException;
    sget-object v29, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v30, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :goto_5
    return-void

    .line 481
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    .restart local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .restart local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v19    # "i":I
    .restart local v24    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_9
    :try_start_2
    sput-object v24, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 486
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v7    # "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v15    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v16    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v19    # "i":I
    .end local v24    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v9

    .line 487
    .local v9, "e":Ljava/io/FileNotFoundException;
    sget-object v29, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Error opening "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 490
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 491
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v29, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "XML parse exception for "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 488
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v10

    .line 489
    .local v10, "e":Ljava/io/IOException;
    sget-object v29, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Error reading "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .locals 20
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/FontListParser$Family;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "bufferForPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v8, Landroid/graphics/FontFamily;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v8, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v8, "fontFamily":Landroid/graphics/FontFamily;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "font$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/FontListParser$Font;

    .line 314
    .local v17, "font":Landroid/graphics/FontListParser$Font;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 315
    .local v9, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_5

    .line 316
    const/4 v10, 0x0

    const/4 v15, 0x0

    .local v15, "file":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    .end local v15    # "file":Ljava/io/FileInputStream;
    .local v16, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 318
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 319
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 320
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 324
    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    if-eqz v10, :cond_5

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 321
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v15, v16

    .line 322
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    :goto_2
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "fontSize":J
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .end local v15    # "file":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_4
    if-eqz v15, :cond_2

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 321
    :catch_3
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 324
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_5

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 326
    :cond_5
    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/graphics/FontListParser$Font;->axes:Ljava/util/List;

    .line 327
    move-object/from16 v0, v17

    iget v12, v0, Landroid/graphics/FontListParser$Font;->weight:I

    move-object/from16 v0, v17

    iget-boolean v13, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    .line 326
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/nio/ByteBuffer;ILjava/util/List;IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/FontListParser$Font;->ttcIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    .end local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v17    # "font":Landroid/graphics/FontListParser$Font;
    :cond_6
    return-object v8

    .line 324
    .restart local v9    # "fontBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    .restart local v17    # "font":Landroid/graphics/FontListParser$Font;
    :catchall_1
    move-exception v3

    move-object v4, v10

    goto :goto_4

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    move-object v4, v10

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .local v15, "file":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v15    # "file":Ljava/io/FileInputStream;
    .restart local v16    # "file":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object/from16 v15, v16

    .end local v16    # "file":Ljava/io/FileInputStream;
    .restart local v15    # "file":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method public static recreateDefaults()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 501
    sget-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 502
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 503
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 505
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 506
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    .line 507
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 508
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    .line 509
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    .line 511
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 512
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 513
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 514
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->SERIF_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 515
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE_INTERNAL:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    .line 516
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    .line 517
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v5

    .line 500
    return-void
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 102
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 103
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 101
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 572
    if-ne p0, p1, :cond_0

    return v1

    .line 573
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 575
    check-cast v0, Landroid/graphics/Typeface;

    .line 577
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 563
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 564
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 561
    return-void

    .line 565
    :catchall_0
    move-exception v0

    .line 566
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 565
    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 587
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 588
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 589
    return v0
.end method

.method public final isBold()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
