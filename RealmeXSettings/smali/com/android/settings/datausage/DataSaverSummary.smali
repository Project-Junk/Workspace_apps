.class public Lcom/android/settings/datausage/DataSaverSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/settings/applications/e$b;
.implements Lcom/android/settings/datausage/c$a;
.implements Lcom/android/settings/widget/SwitchBar$a;
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/android/settings/widget/SwitchBar;

.field private b:Lcom/android/settings/datausage/c;

.field private c:Landroidx/preference/Preference;

.field private d:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private e:Lcom/android/settings/datausage/a;

.field private f:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataSaverSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataSaverSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->g:Z

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(IZ)V
    .locals 0

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aaa

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->a:Lcom/android/settings/widget/SwitchBar;

    .line 81
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->a:Lcom/android/settings/widget/SwitchBar;

    const v0, 0x7f1206af

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->a()V

    .line 85
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15007c

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataSaverSummary;->addPreferencesFromResource(I)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const-string v0, "com.android.internal.R.string.data_saver_description"

    .line 68
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    const-string/jumbo p1, "unrestricted_access"

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataSaverSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->c:Landroidx/preference/Preference;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 70
    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 72
    new-instance p1, Lcom/android/settings/datausage/c;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->b:Lcom/android/settings/datausage/c;

    .line 73
    new-instance p1, Lcom/android/settings/datausage/a;

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->b:Lcom/android/settings/datausage/c;

    invoke-direct {p1, v0, p0, v1}, Lcom/android/settings/datausage/a;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;Lcom/android/settings/datausage/c;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->e:Lcom/android/settings/datausage/a;

    .line 74
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->f:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 7

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->f:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 151
    sget-object v6, Lcom/coloros/settingslib/applications/ApplicationsState;->N:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v6, v5}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    iget-object v6, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast v5, Lcom/android/settings/datausage/a$a;

    iget-boolean v5, v5, Lcom/android/settings/datausage/a$a;->a:Z

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->c:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100013

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 159
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

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

.method public onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->b:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->b(Lcom/android/settings/datausage/c$a;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->e:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->c()V

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

.method public onResume()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->b:Lcom/android/settings/datausage/c;

    .line 1080
    invoke-virtual {v0}, Lcom/android/settings/datausage/c;->a()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->b:Lcom/android/settings/datausage/c;

    .line 1110
    invoke-virtual {v0}, Lcom/android/settings/datausage/c;->b()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->b:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/c;->a(Lcom/android/settings/datausage/c$a;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->e:Lcom/android/settings/datausage/a;

    invoke-virtual {v0}, Lcom/android/settings/datausage/a;->b()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->g:Z

    if-eqz p1, :cond_0

    .line 108
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->g:Z

    .line 111
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->b:Lcom/android/settings/datausage/c;

    .line 2074
    iget-object v1, v0, Lcom/android/settings/datausage/c;->c:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p2}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2075
    iget-object v1, v0, Lcom/android/settings/datausage/c;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, v0, Lcom/android/settings/datausage/c;->a:Landroid/content/Context;

    const/16 v2, 0x18a

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
