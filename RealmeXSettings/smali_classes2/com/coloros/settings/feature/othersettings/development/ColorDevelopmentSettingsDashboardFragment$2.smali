.class final Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment$2;
.super Lcom/android/settings/search/a;
.source "ColorDevelopmentSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 534
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
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

    const/4 v0, 0x0

    .line 554
    invoke-static {p1, v0, v0, v0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;Lcom/android/settings/development/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 562
    invoke-static {}, Landroid/sysprop/AdbProperties;->secure()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "clear_adb_keys"

    .line 563
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "select_logpersist"

    .line 566
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "picture_color_mode"

    .line 568
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "feature_flags_dashboard"

    .line 569
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "game_driver_dashboard"

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mobile_data_always_on"

    .line 572
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_1
    new-instance v1, Lcom/android/settings/development/NetworkMode5GPreferenceController;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/settings/development/NetworkMode5GPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 575
    invoke-virtual {v1}, Lcom/android/settings/development/NetworkMode5GPreferenceController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "key_network_5G_mode_select"

    .line 576
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 545
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f150045

    .line 546
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f0809a1

    .line 547
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 548
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final ignoreXmlControllers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ignoreXmlNonIndexableKeys()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 538
    invoke-static {p1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
