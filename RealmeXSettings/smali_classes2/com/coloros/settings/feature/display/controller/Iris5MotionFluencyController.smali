.class public Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;
.super Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;
.source "Iris5MotionFluencyController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# instance fields
.field private mIris5ContentObserver:Landroid/database/ContentObserver;

.field private mSwitchPre:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "oppo_iris5__motion_fluency_optimization"

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    new-instance p1, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController$1;-><init>(Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;)Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mSwitchPre:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->refreshUI()V

    return-void
.end method

.method private collectMotionFluencySwitchEvent(Landroid/content/Context;Z)V
    .locals 2

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string v1, "memc_switch_key"

    .line 89
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "20120"

    const-string v1, "MEMC_Switch"

    .line 90
    invoke-static {p1, p2, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mSwitchPre:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mSwitchPre:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mSwitchPre:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    if-nez v0, :cond_1

    const v0, 0x7f120f9b

    goto :goto_0

    :cond_1
    const v0, 0x7f120f9a

    :goto_0
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->setSummaryOn(I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mSwitchPre:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mSwitchPre:Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorSwitchWithDividerPreference;->a(I)V

    .line 53
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->refreshUI()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSupport120With2K()Z
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "coloros_screen_resolution_adjust"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 60
    iget-object v3, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "osie_iris5_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mIris5ContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->refreshUI()V

    return-void
.end method

.method protected updateUiData(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;Z)Z

    .line 96
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->refreshUI()V

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/controller/Iris5MotionFluencyController;->collectMotionFluencySwitchEvent(Landroid/content/Context;Z)V

    return-void
.end method
