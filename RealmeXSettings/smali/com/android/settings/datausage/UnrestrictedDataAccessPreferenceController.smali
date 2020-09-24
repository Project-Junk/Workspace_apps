.class public Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;
.super Lcom/android/settings/core/a;
.source "UnrestrictedDataAccessPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/applications/e$b;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# instance fields
.field private final mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/c;

.field private final mDataUsageBridge:Lcom/android/settings/datausage/a;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field private mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    .line 61
    invoke-static {p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 63
    new-instance p2, Lcom/android/settings/datausage/c;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/c;

    .line 64
    new-instance p1, Lcom/android/settings/datausage/a;

    iget-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/c;

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/datausage/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;Lcom/android/settings/datausage/c;)V

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    return-void
.end method

.method private removeUselessPrefs(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 216
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static shouldAddPreference(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_0

    .line 236
    iget-object p0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 82
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    const/16 p1, 0x30d

    goto :goto_0

    :cond_0
    const/16 p1, 0x30e

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->d()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mExtraLoaded:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 186
    instance-of v0, p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    .line 189
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v1, v2

    .line 1159
    :cond_0
    iget-object p2, p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 190
    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/c;

    .line 2159
    iget-object v0, p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 191
    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3159
    iget-object v3, p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 192
    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 191
    invoke-virtual {p2, v0, v3, v1}, Lcom/android/settings/datausage/c;->a(ILjava/lang/String;Z)V

    .line 4155
    iget-object p1, p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->b:Lcom/android/settings/datausage/a$a;

    .line 193
    iput-boolean v1, p1, Lcom/android/settings/datausage/a$a;->a:Z

    return v2

    :cond_1
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 134
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 135
    invoke-static {v6}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->shouldAddPreference(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    invoke-static {v6}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 141
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    if-nez v3, :cond_1

    .line 143
    new-instance v3, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v8, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/c;

    iget-object v9, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/datausage/c;Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 145
    invoke-virtual {v3, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 148
    :cond_1
    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, v6, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 149
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 148
    invoke-static {v4, v5, v6}, Lcom/android/settingslib/h;->h(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 150
    invoke-virtual {v3}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->a()V

    .line 152
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setOrder(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->removeUselessPrefs(Ljava/util/Set;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->c()V

    return-void
.end method

.method public rebuild()V
    .locals 4

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mExtraLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mFilter:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->G:Ljava/util/Comparator;

    const/4 v3, 0x1

    .line 4920
    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    return-void
.end method

.method public setFilter(Lcom/coloros/settingslib/applications/ApplicationsState$b;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mFilter:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method

.method public setParentFragment(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method

.method public setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    return-void
.end method
