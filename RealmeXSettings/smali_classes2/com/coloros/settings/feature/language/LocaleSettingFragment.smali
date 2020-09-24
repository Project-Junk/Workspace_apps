.class public Lcom/coloros/settings/feature/language/LocaleSettingFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LocaleSettingFragment.java"

# interfaces
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/coloros/settings/feature/language/LocaleSettingFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/language/LocaleSettingFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/language/LocaleSettingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/a;

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

    const-string v0, "LocaleSettingFragment"

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

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/LocaleSettingFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 1085
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    new-instance v2, Lcom/coloros/settings/feature/language/LanguagePreferenceController;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/language/LanguagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    new-instance v2, Lcom/coloros/settings/feature/language/RegionPreferenceController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v2, Lcom/coloros/settings/feature/language/ColorLocaleRecommendedController;

    invoke-direct {v2, p1, p0}, Lcom/coloros/settings/feature/language/ColorLocaleRecommendedController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/language/LocaleSettingFragment;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ar;->a(Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/util/List;)V

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x158

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500b0

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/language/LocaleSettingFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 62
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/language/LocaleSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/language/LocaleSettingFragment$1;-><init>(Lcom/coloros/settings/feature/language/LocaleSettingFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
