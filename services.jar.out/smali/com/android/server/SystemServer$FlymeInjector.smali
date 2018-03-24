.class final Lcom/android/server/SystemServer$FlymeInjector;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->startMoveWindowService(Landroid/content/Context;)Lcom/android/server/wm/MoveWindowService;

    move-result-object v1

    .local v1, "mws":Lcom/android/server/wm/MoveWindowService;
    const-string v2, "move_window"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static addFlymePackageManagerService(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$FlymePackageManagerServiceInjector;->startFlymePackageManagerService(Landroid/content/Context;)Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v1

    .local v1, "service":Lcom/android/server/pm/FlymePackageManagerService;
    const-string v2, "flyme_packagemanager"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeAccessService(Lcom/android/server/SystemServer;)V

    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeThemeService(Lcom/android/server/SystemServer;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mFlymeWallpaperLifeService:Lcom/android/server/SystemService;

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    .local v0, "wmsl":Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getService()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addPermissionControlService(Lcom/android/server/SystemServer;)V

    invoke-static {p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePackageManagerService(Lcom/android/server/SystemServer;)V

    return-void
.end method

.method static addFlymeStatusBarManagerService()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_0
    new-instance v2, Lmeizu/statusbar/FlymeStatusBarManagerService;

    invoke-direct {v2}, Lmeizu/statusbar/FlymeStatusBarManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :try_start_1
    const-string v3, "flyme_statusbar"

    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :catch_0
    move-exception v0

    .end local v1    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "FlymeStatusBarManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Throwable;
    move-object v1, v2

    .end local v2    # "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    .local v1, "statusbar":Lmeizu/statusbar/FlymeStatusBarManagerService;
    goto :goto_1
.end method

.method private static addFlymeThemeService(Lcom/android/server/SystemServer;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {v2, v0}, Landroid/content/res/flymetheme/FlymeThemeService;-><init>(Landroid/content/Context;)V

    .local v2, "flymeThemeService":Landroid/content/res/flymetheme/FlymeThemeService;
    const-string v3, "flyme_theme_service"

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "BOOT FAILURE for making flymeThemeService Service ready"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addFlymeWallpaperService(Lcom/android/server/SystemServer;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;
    .param p1, "wm"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->startFlymeWallpaperService(Landroid/content/Context;)Lcom/android/server/wallpaper/FlymeWallpaperService;

    move-result-object v1

    .local v1, "fws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    const-string v2, "flyme_wallpaper"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V
    .locals 3
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/NetworkManagementServiceFlyme;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementServiceFlyme;

    move-result-object v1

    .local v1, "networkManagementService":Lcom/android/server/NetworkManagementServiceFlyme;
    const-string v2, "networkmanagement_service_flyme"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static addPermissionControlService(Lcom/android/server/SystemServer;)V
    .locals 4
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    const-string v2, "flyme_permission"

    new-instance v3, Lcom/meizu/server/FlymePermissionService;

    invoke-direct {v3, v0}, Lcom/meizu/server/FlymePermissionService;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SystemServer"

    const-string v3, "Failed to add flyme_permission service "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static addFlymeAccessService(Lcom/android/server/SystemServer;)V
    .locals 5
    .param p0, "dst"    # Lcom/android/server/SystemServer;

    .prologue
    .line 1535
    invoke-virtual {p0}, Lcom/android/server/SystemServer;->flymeGetFieldSystemContext()Landroid/content/Context;

    move-result-object v1

    .line 1536
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/meizu/server/AccessControlService;

    invoke-direct {v0, v1}, Lcom/meizu/server/AccessControlService;-><init>(Landroid/content/Context;)V

    .line 1537
    .local v0, "acs":Lcom/meizu/server/AccessControlService;
    const-string/jumbo v3, "access_control"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1538
    if-eqz v0, :cond_0

    .line 1540
    :try_start_0
    invoke-virtual {v0}, Lcom/meizu/server/AccessControlService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "BOOT FAILURE for making AccessControlService Service ready"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
