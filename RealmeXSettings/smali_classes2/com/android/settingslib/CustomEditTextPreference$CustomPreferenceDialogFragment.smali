.class public Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragment;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    .line 119
    invoke-static {p1}, Lcom/android/settingslib/CustomEditTextPreference;->a(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Landroidx/preference/EditTextPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 5113
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragment;->onDialogClosed(Z)V

    .line 4113
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 2113
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomEditTextPreference;

    .line 125
    invoke-static {p1, p0}, Lcom/android/settingslib/CustomEditTextPreference;->a(Lcom/android/settingslib/CustomEditTextPreference;Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    .line 3113
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method
