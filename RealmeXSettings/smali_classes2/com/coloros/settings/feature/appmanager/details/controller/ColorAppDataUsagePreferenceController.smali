.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;
.super Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;
.source "ColorAppDataUsagePreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorAppDataUsagePreferenceController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isMyUserIdAppInfo()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getUserId(I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private startAppInfoFragment(Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 2

    if-nez p1, :cond_0

    .line 81
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 83
    :cond_0
    iget-object v0, p3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p3, p3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v0, "uid"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    new-instance p3, Landroid/content/Intent;

    const-string v0, "oppo.datausage.settings.OPPO_APP_DATA_USAGE_ACTIVITY"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, ":settings:show_fragment_args"

    .line 86
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->isMyUserIdAppInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "app_detail_data_usage"

    .line 56
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    .line 59
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    .line 60
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 60
    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorAppDataUsagePreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppDataUsagePreferenceController;->startAppInfoFragment(Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
