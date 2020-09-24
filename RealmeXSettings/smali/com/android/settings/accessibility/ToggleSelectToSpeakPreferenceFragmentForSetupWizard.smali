.class public Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.source "ToggleSelectToSpeakPreferenceFragmentForSetupWizard.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Landroid/os/Bundle;)V

    .line 30
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->a:Z

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x173

    return v0
.end method

.method public onStop()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->d:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->a:Z

    if-eq v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x331

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleSelectToSpeakPreferenceFragmentForSetupWizard;->d:Lcom/android/settings/widget/ToggleSwitch;

    .line 44
    invoke-virtual {v3}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v3

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onStop()V

    return-void
.end method
