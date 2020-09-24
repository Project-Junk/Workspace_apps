.class public Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;
.super Lcom/android/settings/system/SystemDashboardFragment;
.source "ColorMoreSystemSettingsFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/lang/String; = "ColorMoreSystemSettingsFragment"

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Lcom/coloros/settings/feature/othersettings/backup/a;

.field private d:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "storage_settings"

    const-string v1, "security_settings"

    .line 91
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->b:[Ljava/lang/String;

    .line 205
    new-instance v0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/system/SystemDashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 122
    sget-object v0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 152
    new-instance v0, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-direct {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->d:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->d:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 154
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->d:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    .line 1160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorStoragePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorStoragePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorCameraEffectPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorCameraEffectPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorTimePowerSettingPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorTimePowerSettingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoBeautyPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoBeautyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorQuickSearchPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorQuickSearchPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    new-instance v2, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorSimToolKitPreferenceController;-><init>(Landroid/content/Context;)V

    .line 1168
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    new-instance v3, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilitySettingPreferenceController;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilitySettingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance v3, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorDeveloperSettingPreferenceController;-><init>(Landroid/content/Context;)V

    .line 1171
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    new-instance v4, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;

    invoke-direct {v4, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorAutoPlaySellModePreferenceController;-><init>(Landroid/content/Context;)V

    .line 1173
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    new-instance v5, Lcom/coloros/settings/feature/othersettings/controller/ColorRecentTaskManagementPreferenceController;

    invoke-direct {v5, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorRecentTaskManagementPreferenceController;-><init>(Landroid/content/Context;)V

    .line 1175
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    new-instance v5, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;

    invoke-direct {v5, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;-><init>(Landroid/content/Context;)V

    .line 1177
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorBackupRestorePreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorBackupRestorePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorGoogleSettingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoCallEffectPreferenceCategoryController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorVideoCallEffectPreferenceCategoryController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorResetPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorPrivacyExpSettingPreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorPrivacyExpSettingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/RunningApplicationsPreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/RunningApplicationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/RecommendController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/RecommendController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenCapturePreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenCapturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenRecordingPreferenceController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenRecordingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;

    invoke-direct {v6, p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance v6, Lcom/coloros/settings/feature/othersettings/controller/ColorDeviceAndPrivacyPreferenceController;

    const-string v7, "security_settings"

    invoke-direct {v6, p1, v7}, Lcom/coloros/settings/feature/othersettings/controller/ColorDeviceAndPrivacyPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    .line 1197
    invoke-virtual {v0, v3}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    .line 1198
    invoke-virtual {v0, v4}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    .line 1199
    invoke-virtual {v0, v5}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a(Lcom/android/settingslib/core/lifecycle/LifecycleObserver;)V

    :cond_0
    return-object v1
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500d6

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/system/SystemDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Lcom/coloros/settings/feature/othersettings/backup/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/othersettings/backup/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->c:Lcom/coloros/settings/feature/othersettings/backup/a;

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->c:Lcom/coloros/settings/feature/othersettings/backup/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/backup/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/system/SystemDashboardFragment;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->c:Lcom/coloros/settings/feature/othersettings/backup/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/backup/a;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/android/settings/system/SystemDashboardFragment;->onDetach()V

    .line 115
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->d:Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/coloros/settings/feature/homepage/ColorLifeCycleProxy;->a()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 132
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    .line 136
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/ColorMoreSystemSettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "20012"

    const-string v3, "click_top_level_settings"

    invoke-static {v1, v2, v3, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/system/SystemDashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
