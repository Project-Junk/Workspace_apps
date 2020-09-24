.class public Lcom/android/settings/applications/SpecialAppAccessPreferenceController;
.super Lcom/android/settings/core/a;
.source "SpecialAppAccessPreferenceController.java"

# interfaces
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

.field private mPreference:Landroidx/preference/Preference;

.field mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    .line 54
    invoke-static {p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 56
    new-instance p2, Lcom/android/settings/datausage/c;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/c;

    .line 57
    new-instance p1, Lcom/android/settings/datausage/a;

    iget-object p2, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/c;

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/datausage/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;Lcom/android/settings/datausage/c;)V

    iput-object p1, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    return-void
.end method

.method private updateSummary()V
    .locals 7

    .line 102
    iget-boolean v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mExtraLoaded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 109
    sget-object v4, Lcom/coloros/settingslib/applications/ApplicationsState;->N:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v4, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    iget-object v4, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/settings/datausage/a$a;

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings/datausage/a$a;

    iget-boolean v3, v3, Lcom/android/settings/datausage/a$a;->a:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100054

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 117
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->d()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mExtraLoaded:Z

    .line 98
    invoke-direct {p0}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->updateSummary()V

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

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->c()V

    return-void
.end method

.method public setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->mSession:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->updateSummary()V

    return-void
.end method
