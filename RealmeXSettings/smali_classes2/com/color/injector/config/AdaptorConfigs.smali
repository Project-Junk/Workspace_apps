.class public Lcom/color/injector/config/AdaptorConfigs;
.super Ljava/lang/Object;
.source "AdaptorConfigs.java"


# static fields
.field public static final FEATURE_ACCOUNT:Ljava/lang/String; = "account"

.field public static final FEATURE_APP_DEFAULT_LAUNCH:Ljava/lang/String; = "app_default_launch"

.field public static final FEATURE_APP_INFO:Ljava/lang/String; = "app_info"

.field public static final FEATURE_APP_MANAGER:Ljava/lang/String; = "app_manager"

.field public static final FEATURE_APP_PROCESS_STATUS_FEATRUE:Ljava/lang/String; = "app_process_stats_detail"

.field public static final FEATURE_APP_PROCESS_STATUS_SUMMARY:Ljava/lang/String; = "app_process_summary"

.field public static final FEATURE_APP_PROCESS_STATUS_UI:Ljava/lang/String; = "app_process_status_ui"

.field public static final FEATURE_APP_STORAGE:Ljava/lang/String; = "app_storage"

.field public static final FEATURE_DEVELOPMENT_SETTING:Ljava/lang/String; = "development_setting"

.field public static final FEATURE_ENTITY_HEADER:Ljava/lang/String; = "entity_header"

.field public static final FEATURE_HOMEPAGE_TILE:Ljava/lang/String; = "homepage_tile"

.field public static final FEATURE_MULTI_USER:Ljava/lang/String; = "multi_user"

.field public static final FEATURE_SCREEN_LOCK:Ljava/lang/String; = "screen_lock"

.field public static final FEATURE_SIM_LOCK:Ljava/lang/String; = "sim_lock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFeature()V
    .locals 2

    .line 81
    const-class v0, Lcom/coloros/settings/feature/storage/AppStorageFeature;

    const-string v1, "app_storage"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    const-class v0, Lcom/android/settings/applications/ProcessStatsUiFeature;

    const-string v1, "app_process_status_ui"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/DevelopmentSettingFeature;

    const-string v1, "development_setting"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    const-class v0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    const-string v1, "multi_user"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    const-class v0, Lcom/android/settings/applications/ProcessStatsDetailFeature;

    const-string v1, "app_process_stats_detail"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    const-class v0, Lcom/coloros/settings/feature/security/SimLockFeature;

    const-string v1, "sim_lock"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/coloros/settings/feature/homepage/HomepageFeature;

    const-string v1, "homepage_tile"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    const-class v0, Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;

    const-string v1, "entity_header"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;

    const-string v1, "app_default_launch"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 90
    const-class v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    const-string v1, "screen_lock"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 91
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    const-string v1, "app_info"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 92
    const-class v0, Lcom/coloros/settings/feature/othersettings/development/ProcessStatsSummaryFeature;

    const-string v1, "app_process_summary"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 93
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    const-string v1, "app_manager"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/coloros/settings/feature/accounts/AccountFeature;

    const-string v1, "account"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static addFeatureConfig()V
    .locals 2

    .line 98
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "enable_homepage_original_tile"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "need_search_icon_in_action_bar"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "enable_suggestion_feature"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "show_multi_user_switch_bar"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "ADD_USER_WHEN_LOCKED"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "enable_homepage_summary"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "config_use_condition"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bindAdaptor()V
    .locals 2

    .line 44
    const-class v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    const-class v1, Lcom/coloros/settings/adaptor/ClearDefaultsPreferenceAdaptor;

    .line 1033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 45
    const-class v0, Lcom/android/settings/applications/ProcessStatsSummary;

    const-class v1, Lcom/coloros/settings/adaptor/ProcessStatsSummaryAdaptor;

    .line 2033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern;

    const-class v1, Lcom/coloros/settings/adaptor/password/ConfirmLockPatternAdaptor;

    .line 3033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 47
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    const-class v1, Lcom/coloros/settings/adaptor/AppLaunchSettingsAdaptor;

    .line 4033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    const-class v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    const-class v1, Lcom/coloros/settings/adaptor/ManageApplicationsAdaptor;

    .line 5033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    const-class v1, Lcom/coloros/settings/adaptor/password/ChooseLockGenericFragmentAdaptor;

    .line 6033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    const-class v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    const-class v1, Lcom/coloros/settings/adaptor/ConfirmAutoSyncChangeFragmentAdaptor;

    .line 7033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 51
    const-class v0, Lcom/android/settings/dashboard/suggestions/b;

    const-class v1, Lcom/coloros/settings/adaptor/SuggestionFeatureProviderImplAdaptor;

    .line 8033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/android/settings/dashboard/c;

    const-class v1, Lcom/coloros/settings/adaptor/DashboardFeatureProviderImplAdaptor;

    .line 9033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    const-class v1, Lcom/coloros/settings/adaptor/ApplicationViewHolderAdaptor;

    .line 10033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword;

    const-class v1, Lcom/coloros/settings/adaptor/password/ConfirmLockPasswordAdaptor;

    .line 11033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/android/settings/security/b;

    const-class v1, Lcom/coloros/settings/adaptor/password/ChangeScreenLockPreferenceControllerAdaptor;

    .line 12033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/android/settings/applications/RunningServiceDetails;

    const-class v1, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    .line 13033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/android/settings/applications/ConvertToFbe;

    const-class v1, Lcom/coloros/settings/adaptor/ConvertToFbeAdaptor;

    .line 14033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/android/settings/IccLockSettings;

    const-class v1, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;

    .line 15033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    const-class v1, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    .line 16033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const-class v1, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    .line 17033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/android/settings/core/f;

    const-class v1, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    .line 18033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 62
    const-class v0, Lcom/android/settings/applications/ProcessStatsDetail;

    const-class v1, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    .line 19033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 63
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const-class v1, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    .line 20033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 64
    const-class v0, Lcom/android/settings/accounts/ChooseAccountPreferenceController;

    const-class v1, Lcom/coloros/settings/adaptor/ChooseAccountPreferenceControllerAdaptor;

    .line 21033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/android/settings/password/ChooseLockPattern;

    const-class v1, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    .line 22033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/android/settings/FallbackHome;

    const-class v1, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    .line 23033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 67
    const-class v0, Lcom/android/settings/applications/ConfirmConvertToFbe;

    const-class v1, Lcom/coloros/settings/adaptor/ConfirmConvertToFbeAdaptor;

    .line 24033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;

    .line 25033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const-class v1, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialActivityAdaptor;

    .line 26033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    const-class v1, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    .line 27033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    const-class v0, Lcom/android/settings/accounts/AccountPreferenceController;

    const-class v1, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    .line 28033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/android/settings/password/ChooseLockPassword;

    const-class v1, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    .line 29033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const-class v1, Lcom/coloros/settings/adaptor/UsageAccessDetailsAdaptor;

    .line 30033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 74
    const-class v0, Lcom/android/settings/widget/b;

    const-class v1, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    .line 31033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/android/settings/applications/ProcessStatsUi;

    const-class v1, Lcom/android/settings/applications/ProcessStatsUiAdpator;

    .line 32033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric;

    const-class v1, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

    .line 33033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/android/settings/users/UserSettings;

    const-class v1, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    .line 34033
    invoke-static {v0, v1}, Lcom/color/injector/adaptor/ClassAdaptor;->bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static getFeature(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lcom/color/injector/adaptor/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static init()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/color/injector/config/AdaptorConfigs;->bindAdaptor()V

    .line 39
    invoke-static {}, Lcom/color/injector/config/AdaptorConfigs;->addFeature()V

    .line 40
    invoke-static {}, Lcom/color/injector/config/AdaptorConfigs;->addFeatureConfig()V

    return-void
.end method
