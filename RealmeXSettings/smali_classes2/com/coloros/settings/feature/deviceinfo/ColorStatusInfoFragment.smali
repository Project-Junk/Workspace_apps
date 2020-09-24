.class public Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorStatusInfoFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:Ljava/lang/String; = "ColorStatusInfoFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 93
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryStatusPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryLevelPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBatteryLevelPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/e;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/e;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/d;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/m;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/m;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 102
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/l;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/l;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 106
    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorUpTimePreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    new-instance p1, Lcom/coloros/settings/feature/deviceinfo/controller/n;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/n;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance p1, Lcom/android/settings/deviceinfo/a;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {p2, v0}, Lcom/coloros/settings/utils/ar;->a(Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->a:Ljava/lang/String;

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

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 83
    invoke-static {p1, p0, v0}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150048

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    const-class p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorImeiInfoPreferenceController;->setHost(Landroidx/fragment/app/Fragment;)V

    .line 63
    const-class p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/ColorStatusInfoFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMeidInfoPreferenceController;->setHost(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
