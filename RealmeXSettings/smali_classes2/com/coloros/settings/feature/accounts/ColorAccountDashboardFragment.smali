.class public Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment;
.super Lcom/android/settings/accounts/AccountDashboardFragment;
.source "ColorAccountDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountDashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment;->a(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorAccountDashboardFragment"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;

    const-string v2, "emergency_info"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/coloros/settings/feature/accounts/controller/a;

    invoke-direct {v1, p1, p0}, Lcom/coloros/settings/feature/accounts/controller/a;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/android/settings/users/a;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/users/a;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/android/settings/users/b;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/users/b;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/coloros/settings/feature/accounts/controller/ColorAddUserWhenLockedPreferenceController;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/accounts/controller/ColorAddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {v2, p1, p0, v1}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15003b

    return v0
.end method
