.class public Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
.super Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;
.source "ColorCustomEditTextPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
    .locals 3

    .line 112
    new-instance v0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;-><init>()V

    .line 113
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 114
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 1120
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;

    .line 127
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 145
    invoke-super {p0, p1, p2}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 5120
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;

    .line 146
    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->onDialogClosed(Z)V

    .line 4120
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;

    .line 140
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a(Z)V

    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 2120
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;

    .line 133
    invoke-static {p1, p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;->a(Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat;Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;)V

    .line 3120
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/ColorCustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    return-void
.end method
