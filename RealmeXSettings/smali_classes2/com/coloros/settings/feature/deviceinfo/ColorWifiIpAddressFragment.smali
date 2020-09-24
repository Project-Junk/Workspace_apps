.class public Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorWifiIpAddressFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/lang/String; = "ColorWifiIpAddressFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorWifiIpAddressFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 1062
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    if-eqz v0, :cond_1

    .line 1069
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v3, :cond_0

    .line 1070
    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6c

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15004c

    return v0
.end method
