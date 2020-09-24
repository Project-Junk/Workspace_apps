.class public Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppStoragePreferenceController.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/applications/f$a;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/a/f;",
        "Lcom/android/settingslib/core/lifecycle/a/h;"
    }
.end annotation


# instance fields
.field protected mLastResult:Lcom/android/settingslib/applications/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    .line 68
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    return-object v0
.end method

.method protected getStorageSummary(Lcom/android/settingslib/applications/f$a;Z)Ljava/lang/CharSequence;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f1205cc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const p2, 0x7f1215a6

    goto :goto_0

    :cond_1
    const p2, 0x7f1215a7

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1215a2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    .line 81
    invoke-interface {p1}, Lcom/android/settingslib/applications/f$a;->d()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 82
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/f$a;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance p1, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settingslib/applications/f;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 88
    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/f;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/applications/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/f$a;",
            ">;",
            "Lcom/android/settingslib/applications/f$a;",
            ")V"
        }
    .end annotation

    .line 94
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mLastResult:Lcom/android/settingslib/applications/f$a;

    .line 95
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lcom/android/settingslib/applications/f$a;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/applications/f$a;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/f$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 52
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->mLastResult:Lcom/android/settingslib/applications/f$a;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->getStorageSummary(Lcom/android/settingslib/applications/f$a;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
