.class public Lcom/android/settings/development/DisableDevSettingsDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DisableDevSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/android/settings/development/DisableDevSettingsDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "DisableDevSettingDlg"

    .line 49
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x637

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 74
    instance-of v0, p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez v0, :cond_0

    const-string v0, "DisableDevSettingDlg"

    const-string v1, "getTargetFragment return unexpected type"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    check-cast p1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1401
    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->p()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->s()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 61
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120395

    .line 62
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120396

    .line 63
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120394

    .line 64
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120393

    .line 66
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
