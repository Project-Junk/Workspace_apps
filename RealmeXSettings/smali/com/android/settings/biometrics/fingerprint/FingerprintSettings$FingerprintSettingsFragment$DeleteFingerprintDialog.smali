.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteFingerprintDialog"
.end annotation


# instance fields
.field private a:Landroid/hardware/fingerprint/Fingerprint;

.field private b:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
    .locals 3

    .line 670
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;-><init>()V

    .line 671
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fingerprint"

    .line 672
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 673
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 674
    invoke-virtual {v0, p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23a

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 702
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->a:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    .line 703
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Removing fpId="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->e:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xfd

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 709
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->a:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->a(Landroid/hardware/fingerprint/Fingerprint;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->a:Landroid/hardware/fingerprint/Fingerprint;

    const/4 p1, 0x1

    .line 686
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->a:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f1209c0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 688
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1209bf

    .line 690
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1213d1

    .line 691
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 694
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 695
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->b:Lcolor/support/v7/app/AlertDialog;

    .line 696
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->b:Lcolor/support/v7/app/AlertDialog;

    return-object p1
.end method
