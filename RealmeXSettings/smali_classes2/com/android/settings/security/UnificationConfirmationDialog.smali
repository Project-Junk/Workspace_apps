.class public Lcom/android/settings/security/UnificationConfirmationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UnificationConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Z)Lcom/android/settings/security/UnificationConfirmationDialog;
    .locals 3

    .line 37
    new-instance v0, Lcom/android/settings/security/UnificationConfirmationDialog;

    invoke-direct {v0}, Lcom/android/settings/security/UnificationConfirmationDialog;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "compliant"

    .line 39
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/settings/security/UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static synthetic a(Lcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2099
    const-class p1, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/SecuritySettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/LockUnificationPreferenceController;

    .line 2205
    iget-boolean p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->e:Z

    if-eqz p1, :cond_0

    .line 2206
    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->b()V

    return-void

    .line 3180
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f12177e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3182
    new-instance p2, Lcom/android/settings/password/b;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    .line 3183
    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {p2, v0, v1}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x80

    const/4 v1, 0x1

    .line 3184
    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->a:I

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3186
    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->b()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$i0kxn9zhkMgaVAq80yrdrmaj5Z4(Lcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/security/UnificationConfirmationDialog;->a(Lcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x214

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/SecuritySettings;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "compliant"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 56
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120c78

    .line 57
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    const v2, 0x7f120c76

    goto :goto_0

    :cond_0
    const v2, 0x7f120c79

    .line 58
    :goto_0
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    const v0, 0x7f120c77

    goto :goto_1

    :cond_1
    const v0, 0x7f120c7a

    :goto_1
    new-instance v2, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$i0kxn9zhkMgaVAq80yrdrmaj5Z4;

    invoke-direct {v2, p1}, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$i0kxn9zhkMgaVAq80yrdrmaj5Z4;-><init>(Lcom/android/settings/security/SecuritySettings;)V

    .line 60
    invoke-virtual {v1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/SecuritySettings;

    .line 1103
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/security/SecuritySettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/LockUnificationPreferenceController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/security/LockUnificationPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
