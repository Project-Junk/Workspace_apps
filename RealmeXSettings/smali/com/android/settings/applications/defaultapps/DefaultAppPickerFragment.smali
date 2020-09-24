.class public abstract Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.super Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;
.source "DefaultAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/pm/PackageManager;

.field protected b:Lcom/android/settings/fuelgauge/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1

    .line 99
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;-><init>()V

    .line 100
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->a(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected a(Lcom/android/settingslib/widget/g;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 4

    .line 61
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->c(Ljava/lang/String;)Lcom/android/settingslib/widget/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->a(Lcom/android/settingslib/widget/g;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->a(Lcom/android/settings/widget/RadioButtonPreference;)V

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;

    move-result-object p1

    .line 69
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DefaultAppConfirm"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/g;)V
    .locals 1

    .line 87
    instance-of v0, p3, Lcom/android/settingslib/applications/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 90
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f121653

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    return-void

    .line 92
    :cond_1
    check-cast p3, Lcom/android/settingslib/applications/b;

    iget-object p2, p3, Lcom/android/settingslib/applications/b;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 93
    iget-object p2, p3, Lcom/android/settingslib/applications/b;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->getMetricsCategory()I

    move-result v3

    const/16 v2, 0x3e8

    const/4 v5, 0x0

    move-object v4, p1

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 81
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorRadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->a:Landroid/content/pm/PackageManager;

    .line 56
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->b:Lcom/android/settings/fuelgauge/g;

    return-void
.end method
