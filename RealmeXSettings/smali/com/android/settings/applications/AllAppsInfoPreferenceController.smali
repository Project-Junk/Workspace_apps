.class public Lcom/android/settings/applications/AllAppsInfoPreferenceController;
.super Lcom/android/settings/core/a;
.source "AllAppsInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/RecentAppStatsMixin$a;


# instance fields
.field mPreference:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AllAppsInfoPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 52
    iget-object p1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onReloadDataCompleted(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 65
    new-instance p1, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;

    iget-object v1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;-><init>(Lcom/android/settings/applications/AllAppsInfoPreferenceController;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
