.class public Lcom/android/settings/biometrics/face/FaceEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "FaceEnrollSidecar.java"


# instance fields
.field private final f:[I

.field private g:Landroid/hardware/face/FaceManager;

.field private h:Landroid/hardware/face/FaceManager$EnrollmentCallback;


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->h:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 39
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->f:[I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;I)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 50
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a()V

    .line 51
    iget v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->e:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->g:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->e:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->g:Landroid/hardware/face/FaceManager;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->d:[B

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->c:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->h:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    iget-object v4, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->f:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->enroll([BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e5

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    .line 45
    invoke-static {p1}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->g:Landroid/hardware/face/FaceManager;

    return-void
.end method
