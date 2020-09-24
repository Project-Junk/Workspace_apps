.class public Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "CustomDialogPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomDialogPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 4095
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 6095
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 5095
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/CustomDialogPreferenceCompat;

    .line 119
    invoke-static {v0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->a(Lcom/android/settingslib/CustomDialogPreferenceCompat;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDialogClosed(Z)V
    .locals 0

    .line 3095
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1095
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomDialogPreferenceCompat;

    .line 101
    invoke-static {p1, p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->a(Lcom/android/settingslib/CustomDialogPreferenceCompat;Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;)V

    .line 2095
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method
