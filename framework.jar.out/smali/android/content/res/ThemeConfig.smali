.class public Landroid/content/res/ThemeConfig;
.super Ljava/lang/Object;
.source "ThemeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeConfig$1;,
        Landroid/content/res/ThemeConfig$AppTheme;,
        Landroid/content/res/ThemeConfig$Builder;,
        Landroid/content/res/ThemeConfig$JsonSerializer;,
        Landroid/content/res/ThemeConfig$SystemAppTheme;,
        Landroid/content/res/ThemeConfig$SystemConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/ThemeConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ThemeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DEFAULT_PKG:Ljava/lang/String; = "default"

.field public static final SYSTEMUI_NAVBAR_PKG:Ljava/lang/String; = "com.android.systemui.navbar"

.field public static final SYSTEMUI_STATUS_BAR_PKG:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_DEFAULT:Ljava/lang/String; = "system"

.field public static final TAG:Ljava/lang/String;

.field private static final THEME_FONT_PACKAGE_NAME_PERSISTENCE_PROPERTY:Ljava/lang/String; = "themeFontPackPkgName"

.field private static final THEME_ICONPACK_PACKAGE_NAME_PERSISTENCE_PROPERTY:Ljava/lang/String; = "themeIconPackPkgName"

.field private static final THEME_PACKAGE_NAME_PERSISTENCE_PROPERTY:Ljava/lang/String; = "persist.sys.themePackageName"

.field public static final THEME_PKG_CONFIGURATION_PERSISTENCE_PROPERTY:Ljava/lang/String; = "themeConfig"

.field private static final mSystemAppTheme:Landroid/content/res/ThemeConfig$SystemAppTheme;

.field private static final mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;


# instance fields
.field protected final mThemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Landroid/content/res/ThemeConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/content/res/ThemeConfig$SystemConfig;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$SystemConfig;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;

    .line 60
    new-instance v0, Landroid/content/res/ThemeConfig$SystemAppTheme;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$SystemAppTheme;-><init>()V

    sput-object v0, Landroid/content/res/ThemeConfig;->mSystemAppTheme:Landroid/content/res/ThemeConfig$SystemAppTheme;

    .line 252
    new-instance v0, Landroid/content/res/ThemeConfig$1;

    invoke-direct {v0}, Landroid/content/res/ThemeConfig$1;-><init>()V

    .line 251
    sput-object v0, Landroid/content/res/ThemeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "appThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    .line 95
    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getBootTheme(Landroid/content/ContentResolver;)Landroid/content/res/ThemeConfig;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/ThemeConfig;->getBootThemeForUser(Landroid/content/ContentResolver;I)Landroid/content/res/ThemeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getBootThemeForUser(Landroid/content/ContentResolver;I)Landroid/content/res/ThemeConfig;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    .line 205
    sget-object v0, Landroid/content/res/ThemeConfig;->mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;

    .line 208
    .local v0, "bootTheme":Landroid/content/res/ThemeConfig;
    :try_start_0
    const-string/jumbo v7, "themeConfig"

    .line 207
    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "json":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/res/ThemeConfig;->fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 214
    const-string/jumbo v7, "persist.sys.themePackageName"

    .line 213
    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "overlayPkgName":Ljava/lang/String;
    const-string/jumbo v7, "themeIconPackPkgName"

    .line 215
    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "iconPackPkgName":Ljava/lang/String;
    const-string/jumbo v7, "themeFontPackPkgName"

    .line 217
    invoke-static {p0, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "fontPkgName":Ljava/lang/String;
    new-instance v1, Landroid/content/res/ThemeConfig$Builder;

    invoke-direct {v1}, Landroid/content/res/ThemeConfig$Builder;-><init>()V

    .line 221
    .local v1, "builder":Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v1, v6}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 222
    invoke-virtual {v1, v4}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 223
    invoke-virtual {v1, v3}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    .line 224
    invoke-virtual {v1}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    .end local v1    # "builder":Landroid/content/res/ThemeConfig$Builder;
    .end local v3    # "fontPkgName":Ljava/lang/String;
    .end local v4    # "iconPackPkgName":Ljava/lang/String;
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "overlayPkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v7, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Could not get boot theme"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    const-string/jumbo v2, "default"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .line 148
    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    if-nez v0, :cond_0

    sget-object v0, Landroid/content/res/ThemeConfig;->mSystemAppTheme:Landroid/content/res/ThemeConfig$SystemAppTheme;

    .line 149
    :cond_0
    return-object v0
.end method

.method public static getSystemTheme()Landroid/content/res/ThemeConfig;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Landroid/content/res/ThemeConfig;->mSystemConfig:Landroid/content/res/ThemeConfig$SystemConfig;

    return-object v0
.end method

.method private getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ThemeConfig$AppTheme;

    .line 142
    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 143
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 274
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v1, Landroid/content/res/ThemeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "clone not supported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const/4 v1, 0x0

    return-object v1
.end method

.method public compareTo(Landroid/content/res/ThemeConfig;)I
    .locals 3
    .param p1, "o"    # Landroid/content/res/ThemeConfig;

    .prologue
    .line 266
    if-nez p1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 268
    .local v0, "n":I
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    .line 268
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, Landroid/content/res/ThemeConfig;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeConfig;->compareTo(Landroid/content/res/ThemeConfig;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 154
    if-ne p1, p0, :cond_0

    .line 155
    const/4 v3, 0x1

    return v3

    .line 157
    :cond_0
    instance-of v3, p1, Landroid/content/res/ThemeConfig;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 158
    check-cast v2, Landroid/content/res/ThemeConfig;

    .line 160
    .local v2, "o":Landroid/content/res/ThemeConfig;
    iget-object v3, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 162
    .local v0, "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :goto_0
    iget-object v3, v2, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 163
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 165
    .local v1, "newThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 161
    .end local v0    # "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v1    # "newThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    :cond_1
    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    .restart local v0    # "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    goto :goto_0

    .line 163
    :cond_2
    iget-object v1, v2, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    goto :goto_1

    .line 167
    .end local v0    # "currThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/res/ThemeConfig$AppTheme;>;"
    .end local v2    # "o":Landroid/content/res/ThemeConfig;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public getAppThemes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ThemeConfig$AppTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFontPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 128
    .local v0, "defaultTheme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getFontPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 133
    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mFontPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getIconPackPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 118
    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getIconPackPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 123
    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mIconPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getOverlayForNavBar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "com.android.systemui.navbar"

    invoke-virtual {p0, v0}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayForStatusBar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Landroid/content/res/ThemeConfig;->getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayPkgName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/content/res/ThemeConfig;->getDefaultTheme()Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 100
    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public getOverlayPkgNameForApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/content/res/ThemeConfig;->getThemeFor(Ljava/lang/String;)Landroid/content/res/ThemeConfig$AppTheme;

    move-result-object v0

    .line 113
    .local v0, "theme":Landroid/content/res/ThemeConfig$AppTheme;
    iget-object v1, v0, Landroid/content/res/ThemeConfig$AppTheme;->mOverlayPkgName:Ljava/lang/String;

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 184
    .local v0, "hash":I
    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 174
    const-string/jumbo v1, "themes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Landroid/content/res/ThemeConfig;->mThemes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 247
    invoke-static {p0}, Landroid/content/res/ThemeConfig$JsonSerializer;->toJson(Landroid/content/res/ThemeConfig;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "json":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    return-void
.end method
