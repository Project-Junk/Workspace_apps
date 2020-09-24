.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "ColorFloatWindowSwitchPreferenceController.java"


# static fields
.field private static final KEY_FLOATING_WINDOW:Ljava/lang/String; = "floating_window"

.field private static final TAG:Ljava/lang/String; = "ColorFloatWindowSwitchPreferenceController"


# instance fields
.field private mFloatingSwitch:Landroidx/preference/TwoStatePreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "floating_window"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mFloatingSwitch:Landroidx/preference/TwoStatePreference;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mFloatingSwitch:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_0

    .line 53
    new-instance v0, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorFloatWindowSwitchPreferenceController$gcxi2PHKYIZvEgNsPXOHaHzWoUY;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorFloatWindowSwitchPreferenceController$gcxi2PHKYIZvEgNsPXOHaHzWoUY;-><init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$displayPreference$0$ColorFloatWindowSwitchPreferenceController(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    const-string p1, "ColorFloatWindowSwitchPreferenceController"

    const-string p2, "onPreferenceChange packageInfo is null"

    .line 55
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "app_detail_floating"

    invoke-static {p2, v1, p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/coloros/settings/utils/aq;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public refreshUi()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mFloatingSwitch:Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v3, "permission_control_category"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 73
    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mFloatingSwitch:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v1, 0x0

    .line 74
    iput-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mFloatingSwitch:Landroidx/preference/TwoStatePreference;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mFloatingSwitch:Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 79
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 81
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 83
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mFloatingSwitch:Landroidx/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Landroidx/preference/TwoStatePreference;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
