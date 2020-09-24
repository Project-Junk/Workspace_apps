.class final Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;->c:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;B)V

    .line 79
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;->a:I

    .line 80
    iput-object p3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;->b:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
