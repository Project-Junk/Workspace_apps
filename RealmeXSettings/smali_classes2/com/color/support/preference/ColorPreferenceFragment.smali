.class public Lcom/color/support/preference/ColorPreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "ColorPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 48
    sget p3, Lcolor/support/v7/appcompat/R$layout;->color_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    invoke-virtual {p0}, Lcom/color/support/preference/ColorPreferenceFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p0, p2}, Lcom/color/support/preference/ColorPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p0, p2}, Lcom/color/support/preference/ColorPreferenceFragment;->setDividerHeight(I)V

    return-object p1
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/color/support/preference/ColorPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/color/support/preference/ColorActivityDialogPreference;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorActivityDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorActivityDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_1
    instance-of v0, p1, Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p1, Lcom/color/support/preference/ColorMultiSelectListPreference;

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_3
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a(Ljava/lang/String;)Lcom/color/support/preference/ColorListPreferenceDialogFragment;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 80
    invoke-virtual {p0}, Lcom/color/support/preference/ColorPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method
