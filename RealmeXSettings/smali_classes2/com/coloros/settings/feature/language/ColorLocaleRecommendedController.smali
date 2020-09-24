.class public Lcom/coloros/settings/feature/language/ColorLocaleRecommendedController;
.super Lcom/android/settings/core/a;
.source "ColorLocaleRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "language_region_bottom_recommended"


# instance fields
.field private mFragment:Lcom/coloros/settings/feature/language/LocaleSettingFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/language/LocaleSettingFragment;)V
    .locals 1

    const-string v0, "language_region_bottom_recommended"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/coloros/settings/feature/language/ColorLocaleRecommendedController;->mFragment:Lcom/coloros/settings/feature/language/LocaleSettingFragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "language_region_bottom_recommended"

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    if-eqz p1, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/coloros/settings/feature/language/ColorLocaleRecommendedController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-string v2, "com.coloros.settings.feature.othersettings.input.ColorInputMethodSettingsFragment"

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/language/ColorLocaleRecommendedController;->mFragment:Lcom/coloros/settings/feature/language/LocaleSettingFragment;

    if-eqz v2, :cond_0

    .line 56
    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1063
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v3, p0, Lcom/coloros/settings/feature/language/ColorLocaleRecommendedController;->mContext:Landroid/content/Context;

    const v4, 0x7f120be3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ime_settings"

    const-string v5, "locale"

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 44
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
