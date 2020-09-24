.class public Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppOpenByDefaultPreferenceController.java"


# instance fields
.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field protected mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p2, "usb"

    .line 41
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 49
    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_2

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void

    .line 50
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
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

    .line 71
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    return-object v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1321
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 62
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settingslib/applications/a;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
