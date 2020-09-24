.class final Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;
.super Ljava/lang/Object;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/hardware/fingerprint/Fingerprint;

.field b:I

.field c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;->d:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;->a:Landroid/hardware/fingerprint/Fingerprint;

    .line 49
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;->b:I

    .line 50
    iput-object p4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$b;->c:Ljava/lang/CharSequence;

    return-void
.end method
