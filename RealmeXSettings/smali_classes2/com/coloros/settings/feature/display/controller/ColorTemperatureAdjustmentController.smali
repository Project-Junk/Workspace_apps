.class public Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;
.super Lcom/android/settings/core/a;
.source "ColorTemperatureAdjustmentController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final KEY_COLOR_TEMPERATURE_ADJUSTMENT:Ljava/lang/String; = "intelligent_color_temperature_adjustment"

.field public static final SETTING_ENABLE_COLOR_TEMPERATURE_REGULATION:Ljava/lang/String; = "setting_enable_color_temperature_regulation"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private temperatureAdjustmentContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "intelligent_color_temperature_adjustment"

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController$1;-><init>(Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->temperatureAdjustmentContentObserver:Landroid/database/ContentObserver;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, -0x2

    const/4 v1, 0x0

    const-string v2, "setting_enable_color_temperature_regulation"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mPreference:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 73
    invoke-static {}, Lcom/coloros/settings/utils/bh;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->temperatureAdjustmentContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 65
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, -0x2

    const-string v1, "setting_enable_color_temperature_regulation"

    invoke-static {p2, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 67
    iget-object p2, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mContext:Landroid/content/Context;

    const-string v0, "color_temperature_switch"

    const-string v1, "color_temperature"

    invoke-static {p2, v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "setting_enable_color_temperature_regulation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->temperatureAdjustmentContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
