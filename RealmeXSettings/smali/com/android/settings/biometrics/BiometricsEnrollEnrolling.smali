.class public abstract Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricsEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;


# instance fields
.field protected f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->setResult(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->finish()V

    return-void
.end method

.method public final a([B)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->e()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x26000000

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    .line 109
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 110
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->d:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->c:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    .line 112
    iget p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->c:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010079

    const v0, 0x7f01007a

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->overridePendingTransition(II)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->finish()V

    return-void
.end method

.method protected abstract e()Landroid/content/Intent;
.end method

.method protected abstract f()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end method

.method protected abstract g()Z
.end method

.method public h()V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    .line 95
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 96
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f()Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b()Z

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 83
    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onBackPressed()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStart()V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->h()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b()Z

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->finish()V

    :cond_2
    return-void
.end method
