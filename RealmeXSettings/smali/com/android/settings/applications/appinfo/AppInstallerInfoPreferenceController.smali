.class public Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppInstallerInfoPreferenceController.java"


# instance fields
.field private mInstallerLabel:Ljava/lang/CharSequence;

.field private mInstallerPackage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mPackageName:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/applications/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerPackage:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerPackage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1321
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    .line 50
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120b34

    goto :goto_0

    :cond_0
    const v0, 0x7f1201c1

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerLabel:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mInstallerPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void

    .line 59
    :cond_1
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
