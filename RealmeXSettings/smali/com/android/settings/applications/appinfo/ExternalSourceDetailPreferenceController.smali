.class public Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "ExternalSourceDetailPreferenceController.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->isPotentialAppSource()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
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

    .line 52
    const-class v0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    return-object v0
.end method

.method getPreferenceSummary()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 57
    invoke-static {v0, v1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method isPotentialAppSource()Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1321
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    new-instance v1, Lcom/android/settings/applications/f;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/applications/f;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 67
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/applications/f;->a(Ljava/lang/String;I)Lcom/android/settings/applications/f$a;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/android/settings/applications/f$a;->b()Z

    move-result v0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->getPreferenceSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
