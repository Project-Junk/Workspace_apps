.class public Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/fingerprint/FingerprintManager;

.field b:Landroid/os/CancellationSignal;

.field c:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private d:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

.field private e:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field private f:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->c:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->e:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Landroid/os/CancellationSignal;
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->b:Landroid/os/CancellationSignal;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->f:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->d:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->d:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->e:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;->a(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 121
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->e:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->f:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;->a:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->f:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    iget v0, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;->a:I

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->f:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    iget-object v2, v2, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;->b:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;->a(ILjava/lang/CharSequence;)V

    .line 127
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->f:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;

    .line 130
    :cond_1
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->d:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$b;

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c5

    return v0
.end method
