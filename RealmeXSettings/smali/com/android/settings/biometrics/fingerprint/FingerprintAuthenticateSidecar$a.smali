.class final Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;->c:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;->a:I

    .line 52
    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$a;->b:Ljava/lang/CharSequence;

    return-void
.end method
