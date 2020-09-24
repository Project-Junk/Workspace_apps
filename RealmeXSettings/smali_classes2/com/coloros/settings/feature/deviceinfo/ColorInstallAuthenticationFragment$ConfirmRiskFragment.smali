.class public Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ColorInstallAuthenticationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRiskFragment"
.end annotation


# instance fields
.field private a:Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;-><init>()V

    .line 218
    move-object v1, p0

    check-cast v1, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;

    iput-object v1, v0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->a:Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, p0, v1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "cofirmRisk"

    invoke-virtual {v0, p0, v1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x2

    const-string v0, "settings_install_authentication"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->a:Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 232
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1207b8

    .line 233
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120b52

    .line 234
    invoke-virtual {v0, p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120633

    .line 235
    invoke-virtual {v0, p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment$ConfirmRiskFragment;->a:Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;->a(Lcom/coloros/settings/feature/deviceinfo/ColorInstallAuthenticationFragment;Z)V

    return-void
.end method
