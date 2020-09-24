.class final Lcom/android/settings/password/BiometricFragment$2;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 87
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->a:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p1}, Lcom/android/settings/password/BiometricFragment;->f(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/BiometricFragment$2;->a:Lcom/android/settings/password/BiometricFragment;

    .line 92
    invoke-static {p2}, Lcom/android/settings/password/BiometricFragment;->e(Lcom/android/settings/password/BiometricFragment;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "negative_text"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xd

    .line 90
    invoke-virtual {p1, v0, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
