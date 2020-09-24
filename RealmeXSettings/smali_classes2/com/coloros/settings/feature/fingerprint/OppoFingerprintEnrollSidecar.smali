.class public Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;
.super Ljava/lang/Object;
.source "OppoFingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;
    }
.end annotation


# static fields
.field public static final MAX_STEP_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "OppoFingerprintEnrollSidecar"


# instance fields
.field private mDone:Z

.field private mEnrollAnimationCount:I

.field private mEnrollInnerCircleAnimCount:I

.field private mEnrollOuterCircleAnimCount:I

.field private mEnrolling:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Intent;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentRemaining:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$1;-><init>(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p2, :cond_0

    const-string p1, "hw_auth_token"

    .line 60
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mToken:[B

    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.USER_ID"

    .line 62
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mUserId:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;[BI)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentRemaining:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$1;-><init>(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 68
    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mToken:[B

    .line 69
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mUserId:I

    .line 71
    sget-object p1, Lcom/coloros/settings/feature/fingerprint/view/SvgPath;->FINGER_PATH_PART_ONE_20:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollInnerCircleAnimCount:I

    .line 72
    sget-object p1, Lcom/coloros/settings/feature/fingerprint/view/SvgPath;->FINGER_PATH_PART_TOW_15:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollOuterCircleAnimCount:I

    .line 73
    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollInnerCircleAnimCount:I

    iget p2, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollOuterCircleAnimCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollAnimationCount:I

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isAvailableProgress: mEnrollInnerCircleAnimCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollInnerCircleAnimCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mEnrollOuterCircleAnimCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollOuterCircleAnimCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mEnrollAnimationCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollAnimationCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OppoFingerprintEnrollSidecar"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->onEnrollProgress(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->onEnrollHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->onEnrollError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->onEnrollTouchUp()V

    return-void
.end method

.method private isAvailableProgress(I)Z
    .locals 3

    mul-int/lit8 v0, p1, 0x3c

    .line 146
    div-int/lit8 v0, v0, 0x64

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAvailableProgress: remaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingOfSixtyPercent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OppoFingerprintEnrollSidecar"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_1

    .line 150
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollAnimationCount:I

    if-gt p1, v1, :cond_1

    iget p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollInnerCircleAnimCount:I

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 154
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isAvailableProgress: available: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private onEnrollError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollmentError errMsgId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; errString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFingerprintEnrollSidecar"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onEnrollHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollmentHelp helpMsgId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; helpString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFingerprintEnrollSidecar"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private onEnrollProgress(I)V
    .locals 2

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnrollmentProgress "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFingerprintEnrollSidecar"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->isAvailableProgress(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "onEnrollmentProgress remaining invalid, return"

    .line 225
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 229
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 231
    :cond_1
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentRemaining:I

    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 232
    :goto_0
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mDone:Z

    .line 233
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    if-eqz v0, :cond_3

    .line 234
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    invoke-interface {v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;->onEnrollmentProgressChange(II)V

    :cond_3
    return-void
.end method

.method private onEnrollTouchUp()V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollTouchUp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFingerprintEnrollSidecar"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;->onFingerTouchUp()V

    :cond_0
    return-void
.end method

.method private startEnrollment()V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    const-string v2, "getEnrollmentTotalTimes"

    .line 1103
    invoke-static {v0, v2, v1, v1}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startEnrollment total "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFingerprintEnrollSidecar"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 95
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 98
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar$FingerEnrollmentCallback;-><init>(Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 99
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mToken:[B

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget v5, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mUserId:I

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrolling:Z

    return-void
.end method


# virtual methods
.method cancelEnrollment()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 120
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrolling:Z

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    const-string v0, "OppoFingerprintEnrollSidecar"

    const-string v1, "cancelEnrollment "

    .line 122
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method continueEnroll()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :try_start_0
    const-string v1, "continueEnroll"

    const/4 v2, 0x0

    .line 1128
    invoke-static {v0, v1, v2, v2}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecoupleUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getEnrollmentRemaining()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method hasFingerprints(I)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    return p1
.end method

.method public isDone()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mDone:Z

    return v0
.end method

.method public isEnrolling()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrolling:Z

    return v0
.end method

.method pauseEnroll()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :try_start_0
    const-string v1, "pauseEnroll"

    const/4 v2, 0x0

    .line 1119
    invoke-static {v0, v1, v2, v2}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecoupleUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setListener(Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrolling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFingerprintEnrollSidecar"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->startEnrollment()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->cancelEnrollment()Z

    return-void
.end method
