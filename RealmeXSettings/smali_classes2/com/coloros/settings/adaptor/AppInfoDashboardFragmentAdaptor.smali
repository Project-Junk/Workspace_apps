.class public Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "AppInfoDashboardFragmentAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 34
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")Z"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->createPreferenceControllers(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z

    move-result p1

    return p1
.end method

.method public getAppInfoPreferenceScreenResId(I)I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getAppInfoPreferenceScreenResId(I)I

    move-result p1

    return p1
.end method

.method public getDeviceAdminAddClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getDeviceAdminAddClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getIsAndroidFuction()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getIsAndroidFuction()Z

    move-result v0

    return v0
.end method

.method public getMultiAppUserId()I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getMultiAppUserId()I

    move-result v0

    return v0
.end method

.method public getUserId(I)I
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getUserId(ILcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)I

    move-result p1

    return p1
.end method

.method public isEnabled()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    if-nez v0, :cond_1

    .line 103
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    const-string v1, "app_info"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 104
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/color/injector/adaptor/ClassAdaptor;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0, p1, p2, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->onAttach(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z

    move-result p1

    return p1
.end method

.method public refreshWhenUiNotRefreshed()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->refreshWhenUiNotRefreshed(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    return-void
.end method

.method public retrieveAppEntry(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->retrieveAppEntry(Landroid/content/pm/PackageInfo;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
