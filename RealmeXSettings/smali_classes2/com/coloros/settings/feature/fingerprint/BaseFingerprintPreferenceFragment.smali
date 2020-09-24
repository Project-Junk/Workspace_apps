.class public Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BaseFingerprintPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addFingerprintPreferences()V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/BaseFingerprintPreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 21
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setFitsSystemWindows(Z)V

    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method protected pushUpTransitionInFragment(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f01006b

    const v1, 0x7f010074

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
