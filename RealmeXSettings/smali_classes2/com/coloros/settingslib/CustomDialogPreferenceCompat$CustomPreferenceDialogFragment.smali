.class public Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;
.super Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;
.source "CustomDialogPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;
    .locals 3

    .line 87
    new-instance v0, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 89
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a()Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    invoke-virtual {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$TargetFragment;

    .line 1182
    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    .line 95
    check-cast v0, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a(Landroid/view/View;)V

    .line 113
    invoke-direct {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->a()Lcom/coloros/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Landroid/view/View;)V

    return-void
.end method

.method protected final a(Lcolor/support/v7/app/AlertDialog$Builder;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a(Lcolor/support/v7/app/AlertDialog$Builder;)V

    .line 101
    invoke-direct {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->a()Lcom/coloros/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Lcom/coloros/settingslib/CustomDialogPreferenceCompat;Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;)V

    .line 102
    invoke-direct {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->a()Lcom/coloros/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->a()Lcom/coloros/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 125
    invoke-super {p0, p1, p2}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 126
    invoke-direct {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->a()Lcom/coloros/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 119
    invoke-direct {p0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->a()Lcom/coloros/settingslib/CustomDialogPreferenceCompat;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Lcom/coloros/settingslib/CustomDialogPreferenceCompat;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method
