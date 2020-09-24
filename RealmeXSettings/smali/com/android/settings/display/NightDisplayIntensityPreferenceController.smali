.class public Lcom/android/settings/display/NightDisplayIntensityPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "NightDisplayIntensityPreferenceController.java"


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    return-void
.end method

.method private convertTemperature(I)I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    .line 57
    invoke-virtual {p1}, Lcom/android/settings/widget/SeekBarPreference;->j()V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->d(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getMin()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->e(I)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSliderPosition()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_temperature"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayColorTemperature(I)Z

    move-result p1

    return p1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
