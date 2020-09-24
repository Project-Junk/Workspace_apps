.class final Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/android/settings/biometrics/BiometricEnrollSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;II)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;->c:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;B)V

    .line 65
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;->a:I

    .line 66
    iput p3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V
    .locals 2

    .line 71
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;->a:I

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;->b:I

    invoke-interface {p1, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;->a(II)V

    return-void
.end method
