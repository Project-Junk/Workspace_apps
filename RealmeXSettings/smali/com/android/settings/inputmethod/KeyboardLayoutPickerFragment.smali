.class public Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "KeyboardLayoutPickerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "KeyboardLayoutPicker"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500ad

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "input_device_identifier"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 52
    :cond_0
    const-class v0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerController;->initialize(Landroidx/fragment/app/Fragment;Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method
