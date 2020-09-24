.class public Lcom/android/systemui/statusbar/phone/NavigationModeController;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final PREFS_SWITCHED_FROM_GESTURE_NAV_KEY:Ljava/lang/String; = "switched_from_gesture_nav"

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "navigation_mode_controller_preferences"

.field private static final SYSTEM_APP_MASK:I = 0x81

.field private static final TAG:Ljava/lang/String; = "NavigationModeController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mLastDefaultLauncher:Ljava/lang/String;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/UiOffloadThread;)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    .line 91
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    .line 96
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 165
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 166
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string v1, "overlay"

    .line 168
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    move-object/from16 v1, p3

    .line 169
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    move-object/from16 v1, p2

    .line 170
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 171
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 173
    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 174
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android"

    .line 175
    invoke-virtual {v7, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 176
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 178
    new-instance v13, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v13, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 182
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->switchFromGestureNavModeIfNotSupportedByDefaultLauncher()V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->deferGesturalNavOverlayIfNecessary()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationModeController;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NavigationModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->switchFromGestureNavModeIfNotSupportedByDefaultLauncher()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->showNotificationIfDefaultLauncherSupportsGestureNav()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->restoreGesturalNavOverlayIfNecessary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->deferGesturalNavOverlayIfNecessary()V

    return-void
.end method

.method private deferGesturalNavOverlayIfNecessary()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 259
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v2}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v3, "deferGesturalNavOverlayIfNecessary: failed to fetch default overlays"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "com.android.internal.systemui.navbar.gestural"

    .line 274
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x2

    const-string v2, "com.android.internal.systemui.navbar.threebutton"

    .line 285
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private dumpAssetPaths(Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 440
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v0, "assetPaths="

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p0

    .line 442
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    .line 443
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCurrentInteractionMode(Landroid/content/Context;)I
    .locals 0

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/coloros/common/util/ResourceUtil;->android_integer_config_navBarInteractionMode:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .line 363
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 372
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 373
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 375
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 391
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method private restoreGesturalNavOverlayIfNecessary()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    const-string v2, "com.android.internal.systemui.navbar.gestural"

    .line 300
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    return-void
.end method

.method private showNotification(Landroid/content/Context;I)V
    .locals 2

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 403
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 406
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    const p2, 0x7f0807ff

    .line 407
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p2, 0x1

    .line 408
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 409
    invoke-static {p1, v0, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 410
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sget-object p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private showNotificationIfDefaultLauncherSupportsGestureNav()V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string v1, "navigation_mode_controller_preferences"

    const/4 v2, 0x0

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "switched_from_gesture_nav"

    .line 341
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const v4, 0x7f110598

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->showNotification(Landroid/content/Context;I)V

    .line 354
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 355
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    return-void
.end method

.method private switchFromGestureNavModeIfNotSupportedByDefaultLauncher()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching system navigation to 3-button mode: defaultLauncher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 329
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contextUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 330
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    const-string v1, "com.android.internal.systemui.navbar.threebutton"

    .line 332
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const v1, 0x7f110599

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->showNotification(Landroid/content/Context;I)V

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "navigation_mode_controller_preferences"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 335
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "switched_from_gesture_nav"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "NavigationModeController:"

    .line 415
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    const-string p1, ", "

    .line 419
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p3}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "failed_to_fetch"

    .line 423
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  defaultOverlays="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->dumpAssetPaths(Landroid/content/Context;)V

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  defaultLauncher="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const/4 p1, 0x0

    const-string p3, "navigation_mode_controller_preferences"

    .line 428
    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p3, "switched_from_gesture_nav"

    .line 429
    invoke-interface {p0, p3, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  previouslySwitchedFromGestureNav="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentUserContext()Landroid/content/Context;
    .locals 3

    .line 238
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    return-object p0

    .line 247
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 248
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 247
    invoke-virtual {v1, p0, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$setModeOverlay$1$NavigationModeController(Ljava/lang/String;I)V
    .locals 2

    .line 308
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, p1, p2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to enable overlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateCurrentInteractionMode$0$NavigationModeController(I)V
    .locals 1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 197
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "navigation_mode"

    .line 196
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V
    .locals 0

    return-void
.end method

.method public setModeOverlay(Ljava/lang/String;I)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public updateCurrentInteractionMode(Z)V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    .line 194
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$Az4iHIVUWwUXS_IGosEIyzFux8w;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$Az4iHIVUWwUXS_IGosEIyzFux8w;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;->onNavigationModeChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
