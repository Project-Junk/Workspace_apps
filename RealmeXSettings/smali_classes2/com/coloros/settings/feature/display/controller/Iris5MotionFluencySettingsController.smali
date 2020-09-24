.class public Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;
.super Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;
.source "Iris5MotionFluencySettingsController.java"


# instance fields
.field private mSettingsColorMarkPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsColorPreferenceCategory:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field private values:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "oppo_osie_iris5_motion_fluency_categotr"

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 25
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->values:[I

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mSettingsColorMarkPreferences:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f120f9b
        0x7f120f9a
    .end array-data
.end method

.method private collectMotionFluencyModeEvent(Landroid/content/Context;)V
    .locals 3

    .line 107
    invoke-static {p1}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result v0

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "memc_mode_key"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "20120"

    const-string v2, "MEMC_mode"

    .line 110
    invoke-static {p1, v0, v2, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private doPreferenceChange(Landroidx/preference/Preference;)Z
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result v0

    .line 73
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->isShowDialogFhd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->showDialogFHD(Z)V

    return v2

    .line 81
    :cond_1
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->doReduce(Z)V

    return v2

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->doRefreshData(I)V

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-static {v2, v2, p1}, Lcom/coloros/settings/utils/v;->a(ZZLandroid/content/Context;)V

    return v2
.end method

.method private doRefreshData(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;I)Z

    .line 102
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->refreshUI()V

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->collectMotionFluencyModeEvent(Landroid/content/Context;)V

    return-void
.end method

.method private init()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->values:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 58
    new-instance v4, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iget-object v5, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object v5, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->values:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setTitle(I)V

    .line 60
    invoke-virtual {v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setKey(Ljava/lang/String;)V

    if-ne v3, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    .line 61
    :goto_1
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 62
    invoke-virtual {v4, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    .line 63
    invoke-virtual {v4, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOrder(I)V

    .line 64
    invoke-virtual {v4, p0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    iget-object v5, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mSettingsColorMarkPreferences:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v5, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mSettingsColorPreferenceCategory:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshUI()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 115
    :goto_0
    iget-object v3, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mSettingsColorMarkPreferences:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mSettingsColorMarkPreferences:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mSettingsColorPreferenceCategory:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 36
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->init()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isShowDialogFhd()Z
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "coloros_screen_resolution_adjust"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 94
    iget-object v3, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/settings/utils/v;->f(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->doPreferenceChange(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method protected updateUiData(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 41
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencySettingsController;->doRefreshData(I)V

    return-void
.end method
