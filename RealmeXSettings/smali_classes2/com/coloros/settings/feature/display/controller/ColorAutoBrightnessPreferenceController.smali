.class public Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "ColorAutoBrightnessPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private final c:Z

.field private d:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController$1;-><init>(Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->d:Landroid/database/ContentObserver;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->a:Landroid/content/ContentResolver;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "com.android.internal.R.bool.config_automatic_brightness_available"

    .line 49
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auto_brightness"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_brightness"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->c:Z

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->d:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->a:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "screen_brightness_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 88
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorAutoBrightnessPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
