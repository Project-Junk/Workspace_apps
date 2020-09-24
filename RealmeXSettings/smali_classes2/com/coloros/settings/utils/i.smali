.class public final Lcom/coloros/settings/utils/i;
.super Ljava/lang/Object;
.source "ColorPreferenceDialogUtils.java"


# direct methods
.method public static a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Landroidx/fragment/app/DialogFragment;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_7

    .line 47
    instance-of v1, p1, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->b(Ljava/lang/String;)Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_2
    instance-of v1, p1, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;

    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->b(Ljava/lang/String;)Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_3
    instance-of v1, p1, Lcom/color/support/preference/ColorActivityDialogPreference;

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorActivityDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorActivityDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_4
    instance-of v1, p1, Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v1, :cond_5

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 56
    :cond_5
    instance-of v1, p1, Lcom/color/support/preference/ColorMultiSelectListPreference;

    if-eqz v1, :cond_6

    .line 57
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_6
    instance-of v1, p1, Lcom/color/support/preference/ColorListPreference;

    if-eqz v1, :cond_7

    .line 59
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorListPreferenceDialogFragment;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1

    :cond_7
    return-object v0
.end method
