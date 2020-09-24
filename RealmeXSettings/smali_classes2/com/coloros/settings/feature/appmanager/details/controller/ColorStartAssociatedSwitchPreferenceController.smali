.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "ColorStartAssociatedSwitchPreferenceController.java"


# static fields
.field private static final KEY_START_ASSOCIATED:Ljava/lang/String; = "start_associated"

.field private static final TAG:Ljava/lang/String; = "ColorStartAssociatedSwitchPreferenceController"


# instance fields
.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mStartassociatedSwitch:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "start_associated"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mStartassociatedSwitch:Landroidx/preference/TwoStatePreference;

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mStartassociatedSwitch:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorStartAssociatedSwitchPreferenceController$WEFXiqBreVOTktPPRM0Iww8kz14;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorStartAssociatedSwitchPreferenceController$WEFXiqBreVOTktPPRM0Iww8kz14;-><init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public synthetic lambda$displayPreference$0$ColorStartAssociatedSwitchPreferenceController(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    const-string p1, "ColorStartAssociatedSwitchPreferenceController"

    const-string p2, "onPreferenceChange packageInfo is null"

    .line 57
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 62
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_detail_start_associated_state"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "app_detail_start_associated"

    invoke-static {v0, v1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/coloros/settings/utils/aq;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public refreshUi()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mStartassociatedSwitch:Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v3, "permission_control_category"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 78
    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mStartassociatedSwitch:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mStartassociatedSwitch:Landroidx/preference/TwoStatePreference;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorStartAssociatedSwitchPreferenceController;->mStartassociatedSwitch:Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 84
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 86
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
