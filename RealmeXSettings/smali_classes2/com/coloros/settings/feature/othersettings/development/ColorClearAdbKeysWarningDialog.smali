.class public Lcom/coloros/settings/feature/othersettings/development/ColorClearAdbKeysWarningDialog;
.super Lcom/android/settings/development/ClearAdbKeysWarningDialog;
.source "ColorClearAdbKeysWarningDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/development/ClearAdbKeysWarningDialog;-><init>()V

    return-void
.end method

.method public static b(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ClearAdbKeysDlg"

    .line 31
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 32
    new-instance v2, Lcom/coloros/settings/feature/othersettings/development/ColorClearAdbKeysWarningDialog;

    invoke-direct {v2}, Lcom/coloros/settings/feature/othersettings/development/ColorClearAdbKeysWarningDialog;-><init>()V

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, p0, v3}, Lcom/coloros/settings/feature/othersettings/development/ColorClearAdbKeysWarningDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 35
    invoke-virtual {v2, v0, v1}, Lcom/coloros/settings/feature/othersettings/development/ColorClearAdbKeysWarningDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 41
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorClearAdbKeysWarningDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1200e4

    .line 42
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1200e3

    .line 43
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120fb5

    .line 44
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    return-object p1
.end method
