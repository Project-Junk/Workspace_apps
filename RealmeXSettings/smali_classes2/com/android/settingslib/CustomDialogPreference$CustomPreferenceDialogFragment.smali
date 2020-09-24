.class public Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 4101
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 6101
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 5101
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/CustomDialogPreference;

    .line 125
    invoke-static {v0}, Lcom/android/settingslib/CustomDialogPreference;->a(Lcom/android/settingslib/CustomDialogPreference;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDialogClosed(Z)V
    .locals 0

    .line 3101
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method

.method public onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 1101
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/CustomDialogPreference;

    .line 107
    invoke-static {p1, p0}, Lcom/android/settingslib/CustomDialogPreference;->a(Lcom/android/settingslib/CustomDialogPreference;Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    .line 2101
    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method
