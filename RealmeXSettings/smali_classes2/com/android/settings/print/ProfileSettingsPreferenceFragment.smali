.class public abstract Lcom/android/settings/print/ProfileSettingsPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfileSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "user"

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/dashboard/profileselector/a;->a(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/dashboard/profileselector/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0d02e6

    .line 47
    invoke-virtual {p0, p2}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/internal/widget/ColorSpinner;

    .line 48
    invoke-virtual {p2, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    new-instance v0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/settings/print/ProfileSettingsPreferenceFragment;Lcom/android/settings/dashboard/profileselector/a;Lcolor/support/v7/internal/widget/ColorSpinner;)V

    invoke-virtual {p2, v0}, Lcolor/support/v7/internal/widget/ColorSpinner;->setDropdownItemClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V

    :cond_0
    return-void
.end method
