.class final Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 111
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->a(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)Z

    .line 100
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->a:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->b(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
