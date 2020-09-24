.class public final Lcom/coloros/settings/privacy/e;
.super Lcom/android/settings/search/a;
.source "PrivacySearchIndexProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/coloros/settings/utils/bh;->C()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cell_broadcast_emergency"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cell_broadcast_emergency_settings"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cell_broadcast_emergency_records"

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "category_sos"

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_sos"

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/HarassmentPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_harassment_interception"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_2
    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/IntelligentPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "key_intelligent_identification_contact"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/PrivateInfoProtectPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "key_private_info_protect"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_4
    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "key_pseudo_base_station"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_5
    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/HarassmentPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 67
    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/PseudoBaseStationPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 68
    invoke-static {p1}, Lcom/coloros/settings/feature/privacy/IntelligentPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "category_harass_intercept"

    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
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

    .line 27
    sget-boolean p2, Lcom/coloros/settings/a;->a:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f15005d

    .line 32
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f0809c5

    .line 33
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 34
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
