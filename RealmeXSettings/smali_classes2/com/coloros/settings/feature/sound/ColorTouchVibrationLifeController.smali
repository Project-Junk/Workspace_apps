.class public Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;
.super Lcom/android/settings/core/a;
.source "ColorTouchVibrationLifeController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_TOUCH_VIBRATION:Ljava/lang/String; = "touch_vibration"

.field private static final TAG:Ljava/lang/String; = "ColorTouchVibrationLifeController"


# instance fields
.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "touch_vibration"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;->mPreference:Landroidx/preference/Preference;

    instance-of v1, v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;

    .line 1087
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    if-eqz v1, :cond_0

    .line 1088
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/sound/controller/e;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorTouchVibrationLifeController;->mPreference:Landroidx/preference/Preference;

    instance-of v1, v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;

    .line 1081
    iget-object v1, v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorTouchVibrationPreference;->a:Lcom/coloros/settings/feature/sound/controller/e;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/sound/controller/e;->a()V

    :cond_0
    return-void
.end method
