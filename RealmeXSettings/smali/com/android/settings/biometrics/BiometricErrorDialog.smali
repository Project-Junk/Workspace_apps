.class public abstract Lcom/android/settings/biometrics/BiometricErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BiometricErrorDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 45
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;->b()I

    move-result v3

    new-instance v4, Lcom/android/settings/biometrics/BiometricErrorDialog$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/biometrics/BiometricErrorDialog$1;-><init>(Lcom/android/settings/biometrics/BiometricErrorDialog;I)V

    invoke-virtual {v0, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
