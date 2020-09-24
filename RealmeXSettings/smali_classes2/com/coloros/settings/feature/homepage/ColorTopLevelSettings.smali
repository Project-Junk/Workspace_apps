.class public Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;
.super Lcom/android/settings/homepage/TopLevelSettings;
.source "ColorTopLevelSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Landroid/content/IntentFilter;

.field private d:Z

.field private e:Lcom/coloros/settings/a/a;

.field private f:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

.field private g:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;

.field private final h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "personal_assist"

    const-string v1, "system_security"

    const-string v2, "top_level_privacy"

    const-string v3, "smart_convenient"

    const-string v4, "top_level_security"

    const-string v5, "battery_settings"

    const-string v6, "app_usage_time"

    const-string v7, "system_language"

    const-string v8, "more_about_system"

    const-string v9, "top_level_location"

    const-string v10, "digital_wellbeing_and_parent_controls"

    .line 83
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->a:Ljava/util/List;

    .line 266
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->d:Z

    .line 214
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$2;-><init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/core/a;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->f:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->d:Z

    return p0
.end method

.method private static synthetic b(Lcom/android/settingslib/core/a;)Z
    .locals 0

    .line 398
    instance-of p0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)Z
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->b:Z

    return p0
.end method

.method private synthetic d()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->highlightPreferenceForce()V

    return-void
.end method

.method public static synthetic lambda$jIJUYmgkMe04j-5n04FLP07izTg(Lcom/android/settingslib/core/a;)Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->b(Lcom/android/settingslib/core/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$l8DidnaMKGm0LHLsnxqA8juLkhs(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->d()V

    return-void
.end method

.method public static synthetic lambda$uVUbwtqWR49ULaMew633E5wDuvA(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;Lcom/android/settingslib/core/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->a(Lcom/android/settingslib/core/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 384
    new-instance v2, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-direct {v2}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;-><init>()V

    iput-object v2, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->f:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 385
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->f:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 3413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3414
    new-instance v2, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3415
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3416
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3417
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3418
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3419
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/Color4GSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3420
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3421
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelRoamingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3422
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/TopLevelDataUsagePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelDataUsagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3423
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/TopLevelNetWorkPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/controller/TopLevelNetWorkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3424
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "notification_and_statusbar"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3425
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "display_and_brightness"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3426
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelWrapperPreferenceController;

    const-string v3, "wallpaper"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelWrapperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3427
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "sound_and_vibrator"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3428
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "oppo_holiday_mode"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3429
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "more_about_network"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3430
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelScreenLockPreferenceController;

    const-string v3, "screen_lock"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelScreenLockPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3431
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelSmartServicePreferenceController;

    const-string v3, "personal_assist"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelSmartServicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3432
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "smart_convenient"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3433
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelSecurityPreferenceController;

    const-string v3, "system_security"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelSecurityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3434
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorPrivacyTopLevlePerferenceController;

    const-string v3, "top_level_privacy"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorPrivacyTopLevlePerferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3435
    new-instance v2, Lcom/coloros/settings/feature/homepage/ColorTopExtPreferenceController;

    const-string v3, "top_level_location"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/ColorTopExtPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3436
    new-instance v2, Lcom/coloros/settings/feature/homepage/ColorTopExtPreferenceController;

    const-string v3, "top_level_security"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/ColorTopExtPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3437
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelBatteryPreferenceController;

    const-string v3, "battery_settings"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelBatteryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3438
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelDigitalWellbeingPreferenceController;

    const-string v3, "digital_wellbeing_and_parent_controls"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelDigitalWellbeingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3439
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;

    const-string v3, "app_usage_time"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3440
    new-instance v2, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;

    const-string v3, "system_language"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3441
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;

    const-string v3, "ota_preference"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3442
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "about_phone"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3443
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelLegalInfoPreferenceController;

    const-string v3, "legal_information"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelLegalInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3444
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;

    const-string v3, "application_manager"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3445
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelMultiAppPreferenceController;

    const-string v3, "multi_app_settings"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelMultiAppPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3446
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;

    const-string v3, "game_space"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3447
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelResizeableScreenPreferenceController;

    const-string v3, "resizeable_screen"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelResizeableScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3448
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;

    const-string v3, "oppo_cloud_service"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3449
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelAccountAndSyncPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/homepage/TopLevelAccountAndSyncPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3450
    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/ColorGooglePreferenceController;

    const-string v3, "google_settings_exp"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/controller/ColorGooglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3451
    new-instance v2, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

    const-string v3, "top_level_storage"

    invoke-direct {v2, p1, v3}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3452
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelLaboratoryPreferenceController;

    const-string v3, "laboratory_key"

    invoke-direct {v2, p1, v3}, Lcom/coloros/settings/feature/homepage/TopLevelLaboratoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3454
    new-instance v2, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/homepage/TopLevelFooterPreferenceController;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    new-instance v1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;-><init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V

    .line 390
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-super {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 393
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/coloros/settings/feature/homepage/-$$Lambda$ColorTopLevelSettings$jIJUYmgkMe04j-5n04FLP07izTg;->INSTANCE:Lcom/coloros/settings/feature/homepage/-$$Lambda$ColorTopLevelSettings$jIJUYmgkMe04j-5n04FLP07izTg;

    .line 398
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/homepage/-$$Lambda$ColorTopLevelSettings$uVUbwtqWR49ULaMew633E5wDuvA;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/-$$Lambda$ColorTopLevelSettings$uVUbwtqWR49ULaMew633E5wDuvA;-><init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V

    .line 399
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/core/a;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public addLoggerMixinToObServer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addSurveyMixinToObserver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createFooterPreferenceMixin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15006c

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/homepage/TopLevelSettings;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    const-class v0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f130149

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1126
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->c:Landroid/content/IntentFilter;

    .line 1127
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->c:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1128
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->c:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->c:Landroid/content/IntentFilter;

    const-string v0, "oppo.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1130
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->c:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->w(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->b:Z

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->e:Lcom/coloros/settings/a/a;

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->e:Lcom/coloros/settings/a/a;

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->g:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;

    if-nez p1, :cond_1

    .line 119
    new-instance p1, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;-><init>(B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->g:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->g:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;->a(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;Landroid/content/Context;)V

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcom/android/settings/homepage/TopLevelSettings;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->g:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;->b(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->g:Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$a;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/settings/homepage/TopLevelSettings;->onDetach()V

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->f:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 171
    invoke-super {p0}, Lcom/android/settings/homepage/TopLevelSettings;->onPause()V

    .line 172
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->e:Lcom/coloros/settings/a/a;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->c()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 205
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "1"

    .line 208
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->mContext:Landroid/content/Context;

    const-string v2, "click_top_level_settings"

    invoke-static {v0, v2, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 5

    .line 144
    invoke-super {p0}, Lcom/android/settings/homepage/TopLevelSettings;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->h:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->c:Landroid/content/IntentFilter;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/homepage/-$$Lambda$ColorTopLevelSettings$l8DidnaMKGm0LHLsnxqA8juLkhs;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/-$$Lambda$ColorTopLevelSettings$l8DidnaMKGm0LHLsnxqA8juLkhs;-><init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->e:Lcom/coloros/settings/a/a;

    .line 2089
    iget-object v0, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->e:Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 3085
    iput-object v1, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->e:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->e:Lcom/coloros/settings/a/a;

    new-instance v1, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings$1;-><init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V

    .line 3117
    iput-object v1, v0, Lcom/coloros/settings/a/a;->c:Lcom/coloros/settings/a/a$a;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/homepage/TopLevelSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    .line 138
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->d:Z

    :cond_0
    return-void
.end method

.method public shouldAddPreferenceFooter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showHelpMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
