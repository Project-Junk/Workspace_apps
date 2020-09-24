.class final Lcom/android/settings/password/BiometricFragment$3;
.super Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$3;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$3;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "ConfirmDeviceCredential/BiometricFragment"

    const-string v1, "Activity null!"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
