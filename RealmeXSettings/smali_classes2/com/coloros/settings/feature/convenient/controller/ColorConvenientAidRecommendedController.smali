.class public Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;
.super Lcom/android/settings/core/a;
.source "ColorConvenientAidRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "convenient_aid_bottom_recommended"


# instance fields
.field private mFragment:Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;)V
    .locals 1

    const-string v0, "convenient_aid_bottom_recommended"

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mFragment:Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 9

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "convenient_aid_bottom_recommended"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    if-eqz p1, :cond_3

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-string v2, "com.coloros.settings.feature.othersettings.accessibility.ColorAccessibilitySettings"

    .line 55
    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mFragment:Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 56
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 1063
    invoke-virtual {v1, v4, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    .line 61
    new-instance v5, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v6, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mContext:Landroid/content/Context;

    const v7, 0x7f120089

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "convenient_aid"

    const-string v8, "accessibility_settings"

    invoke-direct {v5, v6, v1, v8, v7}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/controller/ColorTimePowerSettingPreferenceController;->isPreferenceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v5, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-string v5, "com.coloros.settings.feature.othersettings.timepower.TimePowerSettingFragment"

    .line 68
    invoke-virtual {v1, v5}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v5, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mFragment:Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;

    if-eqz v5, :cond_1

    .line 70
    invoke-interface {v5}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result v3

    .line 69
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 2063
    invoke-virtual {v1, v4, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v3, p0, Lcom/coloros/settings/feature/convenient/controller/ColorConvenientAidRecommendedController;->mContext:Landroid/content/Context;

    const v4, 0x7f1216c2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "time_power_settings"

    invoke-direct {v2, v3, v1, v4, v7}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
