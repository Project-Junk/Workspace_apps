.class final Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->c(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$a;->a(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->c(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method