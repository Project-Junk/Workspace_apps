.class public Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/display/ScreenZoomSettings;
.source "ScreenZoomPreferenceFragmentForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/display/ScreenZoomSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x172

    return v0
.end method

.method public onStop()V
    .locals 4

    .line 31
    iget v0, p0, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->c:I

    iget v1, p0, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->b:I

    if-eq v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x172

    iget v3, p0, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;->c:I

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/android/settings/display/ScreenZoomSettings;->onStop()V

    return-void
.end method
