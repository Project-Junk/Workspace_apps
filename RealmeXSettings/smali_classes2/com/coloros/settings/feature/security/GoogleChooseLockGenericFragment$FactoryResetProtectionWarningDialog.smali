.class public Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "GoogleChooseLockGenericFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryResetProtectionWarningDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 862
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(IILjava/lang/String;)Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    .locals 3

    .line 870
    new-instance v0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;-><init>()V

    .line 872
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "titleRes"

    .line 873
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "messageRes"

    .line 874
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "unlockMethodToSet"

    .line 875
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x210

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 890
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 892
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "titleRes"

    .line 893
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "messageRes"

    .line 894
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$2;-><init>(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;)V

    const p1, 0x7f12176e

    .line 895
    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;-><init>(Lcom/coloros/settings/feature/security/GoogleChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V

    const v1, 0x7f120491

    .line 907
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 915
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 882
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 884
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
