.class final Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Landroid/os/CancellationSignal;

    .line 84
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;->a(ILjava/lang/CharSequence;)V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;ILjava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    .line 88
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-void
.end method

.method public final onAuthenticationFailed()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;->a()V

    :cond_0
    return-void
.end method

.method public final onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;->b(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Landroid/os/CancellationSignal;

    .line 66
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;->a(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 70
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    return-void
.end method
