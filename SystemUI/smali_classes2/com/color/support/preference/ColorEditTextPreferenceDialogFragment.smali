.class public Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source "ColorEditTextPreferenceDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;
    .locals 3

    .line 43
    new-instance v0, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 45
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 54
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 63
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 67
    :goto_0
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p0
.end method
