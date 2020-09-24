.class public Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source "CustomEditTextPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
    .locals 3

    .line 100
    new-instance v0, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;-><init>()V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 102
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 114
    invoke-virtual {v0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 5108
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    .line 4108
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 127
    invoke-virtual {v0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a(Z)V

    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 2108
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomEditTextPreferenceCompat;

    .line 120
    invoke-static {p1, p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;)V

    .line 3108
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method
