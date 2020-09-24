.class public Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;
.super Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
.source "ColorMultiSelectListPreferenceDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;
    .locals 3

    .line 41
    new-instance v0, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 43
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 52
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 65
    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorMultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 66
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
