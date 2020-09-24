.class public Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RecentLocationRequestSeeAllFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Z

.field private b:Landroid/view/MenuItem;

.field private c:Landroid/view/MenuItem;

.field private d:Lcom/android/settings/location/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment$1;

    invoke-direct {v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->a:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/android/settings/location/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/h;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)V

    .line 98
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 100
    iput-object v1, p2, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->d:Lcom/android/settings/location/h;

    :cond_0
    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v0, v0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->b:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->a:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->c:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->a:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "RecentLocationReqAll"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x52d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500b3

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f120d86

    .line 129
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->b:Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f120d7c

    .line 131
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->c:Landroid/view/MenuItem;

    .line 133
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->c()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 77
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->a:Z

    .line 78
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->c()V

    .line 79
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->d:Lcom/android/settings/location/h;

    if-eqz p1, :cond_2

    .line 80
    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;->a:Z

    .line 1111
    iput-boolean v1, p1, Lcom/android/settings/location/h;->a:Z

    .line 1112
    iget-object v1, p1, Lcom/android/settings/location/h;->b:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    .line 1113
    iget-object v1, p1, Lcom/android/settings/location/h;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Lcom/android/settings/location/h;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    return v0
.end method
