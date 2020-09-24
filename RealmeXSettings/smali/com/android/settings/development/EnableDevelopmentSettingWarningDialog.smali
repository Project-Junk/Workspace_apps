.class public Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "EnableDevelopmentSettingWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 3

    .line 39
    new-instance v0, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;

    invoke-direct {v0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;-><init>()V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "EnableDevSettingDlg"

    .line 43
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c3

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const/4 v0, -0x2

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->q()V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->r()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 55
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12075e

    .line 56
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12075f

    .line 57
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040013

    .line 58
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009

    .line 59
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
