.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LocationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/android/settings/location/LocationSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/location/LocationSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v1, Lcom/android/settings/location/a;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/location/a;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/android/settings/location/f;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/location/f;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/android/settings/location/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/g;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/android/settings/location/LocationScanningPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/location/LocationScanningPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/LocationServicePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Lcom/android/settings/location/LocationFooterPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/location/LocationFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance p1, Lcom/android/settings/location/AgpsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/location/AgpsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;->INSTANCE:Lcom/android/settings/location/-$$Lambda$LocationSettings$gSl2h3BPIm_6o2JxTu7GJb_EkT0;

    .line 105
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 104
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, v0, v0}, Lcom/android/settings/location/LocationSettings;->a(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$gSl2h3BPIm_6o2JxTu7GJb_EkT0(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/location/LocationSettings;->a(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "LocationSettings"

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

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/location/LocationSettings;->a(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ab5

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500b5

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 79
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const v1, 0x7f120c31

    .line 80
    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    .line 82
    new-instance v1, Lcom/android/settings/location/LocationSwitchBarController;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/location/LocationSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->a:Lcom/android/settings/location/LocationSwitchBarController;

    .line 84
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    return-void
.end method
