.class Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "OppoFingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FingerEnrollmentCallback"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollmentError errMsgId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; errString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFingerprintEnrollSidecar"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-nez v0, :cond_0

    const-string p1, "onEnrollmentError host is null "

    .line 202
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->access$200(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-nez v0, :cond_0

    const-string p1, "OppoFingerprintEnrollSidecar"

    const-string p2, "onEnrollmentHelp host is null "

    .line 191
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->access$100(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-nez v0, :cond_0

    const-string p1, "OppoFingerprintEnrollSidecar"

    const-string v0, "onEnrollmentProgress host is null "

    .line 181
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    invoke-static {v0, p1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->access$000(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;I)V

    return-void
.end method

.method public onTouchUp()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-nez v0, :cond_0

    const-string v0, "OppoFingerprintEnrollSidecar"

    const-string v1, "onEnrollmentError host is null "

    .line 212
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->access$300(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;)V

    return-void
.end method
