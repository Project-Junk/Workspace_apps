.class public Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "DrawOverlayDetailPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1321
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_3

    .line 39
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    .line 42
    :goto_0
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 43
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
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
    const-class v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 57
    invoke-static {v0, v1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
