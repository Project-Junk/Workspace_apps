.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BatterySaverButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/f$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private final mBatterySaverReceiver:Lcom/android/settings/fuelgauge/f;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "power"

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    new-instance p2, Lcom/android/settings/fuelgauge/f;

    invoke-direct {p2, p1}, Lcom/android/settings/fuelgauge/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/f;

    .line 49
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/f;

    .line 1069
    iput-object p0, p1, Lcom/android/settings/fuelgauge/f;->a:Lcom/android/settings/fuelgauge/f$a;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/TwoStateButtonPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBatteryChanged(Z)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 1094
    iget-object v1, v0, Lcom/android/settings/widget/TwoStateButtonPreference;->b:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1095
    iget-object v0, v0, Lcom/android/settings/widget/TwoStateButtonPreference;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->isChecked()Z

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz v1, :cond_0

    .line 1090
    iget-boolean v1, v1, Lcom/android/settings/widget/TwoStateButtonPreference;->a:Z

    if-eq v1, v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/TwoStateButtonPreference;->a(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/f;->a(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/f;->a(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/j/a;->a(Landroid/content/Context;ZZ)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settings/widget/TwoStateButtonPreference;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/TwoStateButtonPreference;->a(Z)V

    :cond_0
    return-void
.end method
