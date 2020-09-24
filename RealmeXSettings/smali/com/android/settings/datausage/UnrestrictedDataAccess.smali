.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UnrestrictedDataAccess.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Z

.field private b:Lcom/coloros/settingslib/applications/ApplicationsState$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "UnrestrictedDataAccess"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ac9

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15012e

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 94
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/coloros/settingslib/applications/ApplicationsState;->S:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/coloros/settingslib/applications/ApplicationsState;->N:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 96
    const-class p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 97
    const-class p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "show_system"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    .line 53
    const-class p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setParentFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120d7c

    goto :goto_0

    :cond_0
    const v0, 0x7f120d86

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x2b

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120d7c

    goto :goto_0

    :cond_1
    const v0, 0x7f120d86

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->S:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->N:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    :goto_1
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 72
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/coloros/settingslib/applications/ApplicationsState$b;)V

    .line 73
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    .line 77
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->a:Z

    const-string v1, "show_system"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
