.class public Lcom/coloros/settings/feature/zenmode/ZenmodeRecommendedController;
.super Lcom/android/settings/core/a;
.source "ZenmodeRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "zenmode_bottom_recommended"

.field private static final LOG_TAG:Ljava/lang/String; = "KVEvent"

.field private static final ZEN_MODE_BREENO_SLEEP_RECOMMEND:Ljava/lang/String; = "zen_mode_breeno_sleep_recommend"


# instance fields
.field private mPreference:Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "zenmode_bottom_recommended"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zenmode_bottom_recommended"

    .line 36
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenmodeRecommendedController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    .line 37
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenmodeRecommendedController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->setVisible(Z)V

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v2, Landroid/content/Intent;

    const-string v0, "coloros.intent.action.BREENO_SLEEP_MODE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "zen_mode_breeno_sleep_recommend"

    const-string v1, "1"

    .line 43
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v6, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenmodeRecommendedController;->mContext:Landroid/content/Context;

    const v1, 0x7f121b4e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "KVEvent"

    const-string v4, "zen_mode_breeno_sleep_recommend"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenmodeRecommendedController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
