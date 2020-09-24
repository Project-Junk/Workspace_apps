.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;
.source "ColorDefaultLaunchPreferenceController.java"


# static fields
.field public static final ARG_LABEL:Ljava/lang/String; = "label"

.field public static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final KEY_LAUNCH:Ljava/lang/String; = "preferred_settings"

.field private static final TAG:Ljava/lang/String; = "ColorDefaultLaunchPreferenceController"


# instance fields
.field private mLaunchPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "preferred_settings"

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 61
    invoke-static {p1}, Lcom/coloros/settings/utils/b;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 3

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hideInfoButton"

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "app_detail_default_launch"

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "1"

    .line 77
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "package_name"

    .line 78
    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 78
    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDefaultLaunchPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    const-string v0, "ColorDefaultLaunchPreferenceController"

    if-nez p1, :cond_0

    const-string p1, "mLaunchPreference is null"

    .line 104
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->e:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-nez p1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_2

    const-string p1, "mContext is null"

    .line 112
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1321
    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_3

    .line 117
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 119
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settingslib/applications/a;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorDefaultLaunchPreferenceController;->mLaunchPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "mParent not init well."

    .line 108
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
