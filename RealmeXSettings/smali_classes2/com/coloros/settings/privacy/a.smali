.class public final Lcom/coloros/settings/privacy/a;
.super Ljava/lang/Object;
.source "ConfirmBiometricInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/a$c;,
        Lcom/coloros/settings/privacy/a$a;,
        Lcom/coloros/settings/privacy/a$b;
    }
.end annotation


# static fields
.field public static final q:[J


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

.field protected c:Z

.field protected d:Z

.field protected e:I

.field protected f:Z

.field protected g:I

.field h:Z

.field protected i:Landroid/hardware/face/FaceManager;

.field protected j:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field protected k:Landroid/os/CancellationSignal;

.field protected l:J

.field protected m:J

.field protected n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

.field protected o:Z

.field p:Z

.field r:Landroid/os/Vibrator;

.field private s:Landroid/hardware/fingerprint/FingerprintManager;

.field private t:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private u:Landroid/os/CancellationSignal;

.field private v:I

.field private w:Lcom/coloros/settings/privacy/b;

.field private x:Lcom/coloros/settings/privacy/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 82
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/privacy/a;->q:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x32
        0x4b
        0x32
    .end array-data
.end method

.method public constructor <init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/coloros/settings/privacy/a$b;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a$b;-><init>(Lcom/coloros/settings/privacy/a;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->x:Lcom/coloros/settings/privacy/a$b;

    .line 128
    iput-object p1, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 288
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/a;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/a;)V
    .locals 2

    const/4 v0, 0x1

    .line 6463
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a;->p:Z

    .line 6464
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->setResult(I)V

    .line 6465
    iget-object p0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/a;I)V
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_4

    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 5494
    :cond_0
    iget-object v4, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {v4}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->isFinishing()Z

    move-result v4

    const-string v5, "ConfirmBiometricInfo"

    if-eqz v4, :cond_1

    const-string v0, "onAuthenticationError stopListening Face "

    .line 5495
    invoke-static {v5, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5496
    invoke-virtual {p0, v3, v2}, Lcom/coloros/settings/privacy/a;->a(ZZ)V

    goto :goto_0

    .line 5498
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a;->k()J

    move-result-wide v6

    .line 5499
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v8, "face time = "

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v6, v0

    if-lez v0, :cond_4

    .line 5501
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->x:Lcom/coloros/settings/privacy/a$b;

    const/16 v0, 0x79

    invoke-virtual {p1, v0}, Lcom/coloros/settings/privacy/a$b;->removeMessages(I)V

    .line 5502
    iget-object p0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {p0, v2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Z)I

    return-void

    .line 5475
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5476
    iget-wide v6, p0, Lcom/coloros/settings/privacy/a;->m:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 5477
    iget-wide v6, p0, Lcom/coloros/settings/privacy/a;->l:J

    const-wide/16 v8, 0x12c

    add-long/2addr v6, v8

    sub-long/2addr v6, v4

    cmp-long p1, v6, v0

    if-lez p1, :cond_3

    .line 5479
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->x:Lcom/coloros/settings/privacy/a$b;

    new-instance v0, Lcom/coloros/settings/privacy/a$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a$1;-><init>(Lcom/coloros/settings/privacy/a;)V

    invoke-virtual {p1, v0, v6, v7}, Lcom/coloros/settings/privacy/a$b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5486
    :cond_3
    invoke-virtual {p0, v3}, Lcom/coloros/settings/privacy/a;->c(I)V

    return-void

    :cond_4
    :goto_0
    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    .line 5511
    invoke-virtual {p0, v2, v3}, Lcom/coloros/settings/privacy/a;->a(ZZ)V

    .line 5513
    :cond_5
    iget-object p0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;I)Z

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g()V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6469
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/privacy/a;->a(ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/a;I)V
    .locals 5

    .line 6576
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->isFinishing()Z

    move-result v0

    const-string v1, "ConfirmBiometricInfo"

    if-eqz v0, :cond_0

    const-string p1, "onFingerAuthError stopListening Fingerprint "

    .line 6577
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6578
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a;->i()V

    return-void

    .line 6580
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a;->j()J

    move-result-wide v2

    .line 6581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onFingerAuthError FingerLockout time = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; mFingerNeed = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/coloros/settings/privacy/a;->h:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 6583
    iget-object p0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Z)I

    return-void

    .line 6584
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 6588
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/privacy/a;->n()V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/a;)V
    .locals 2

    .line 6595
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->setResult(I)V

    .line 6596
    iget-object p0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->finish()V

    return-void
.end method

.method static synthetic l()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$4O1Q--NDgSNYy4eEdyPE6b5dmqQ(Lcom/coloros/settings/privacy/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$H8FkQMISDL-g61Ep3_Y7iK_LBoM(Lcom/coloros/settings/privacy/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private m()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->u:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private n()V
    .locals 9

    .line 337
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a;->i()V

    .line 341
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->u:Landroid/os/CancellationSignal;

    .line 342
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->s:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    const-string v0, "ConfirmBiometricInfo"

    const-string v1, "startAuthenticateFinger"

    .line 343
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->s:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/coloros/settings/privacy/a;->v:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 345
    iget-object v2, p0, Lcom/coloros/settings/privacy/a;->s:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coloros/settings/privacy/a;->u:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coloros/settings/privacy/a;->t:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v7, 0x0

    iget v8, p0, Lcom/coloros/settings/privacy/a;->v:I

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    :cond_1
    return-void
.end method

.method private o()I
    .locals 3

    .line 392
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->i:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    const-string v2, "getFailedAttempts"

    .line 4098
    invoke-static {v0, v2, v1, v1}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/CharSequence;
    .locals 4

    .line 94
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const v3, 0x7f120a12

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const v3, 0x7f120a11

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const v3, 0x7f120a13

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(ZZ)V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopFaceCheck detected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",showFailAnim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmBiometricInfo"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->k:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 446
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->w:Lcom/coloros/settings/privacy/b;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/b;->a()V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_2

    .line 450
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->x:Lcom/coloros/settings/privacy/a$b;

    const/16 p2, 0x79

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a$b;->removeMessages(I)V

    .line 451
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->c()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 454
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b()V

    .line 457
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->setChecking(Z)V

    :cond_4
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(I)V
    .locals 1

    const/16 v0, 0x79

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/privacy/a;->a(ZZ)V

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->d:Z

    return v0
.end method

.method protected final c(I)V
    .locals 8

    .line 413
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a;->k()J

    move-result-wide v0

    .line 421
    invoke-direct {p0}, Lcom/coloros/settings/privacy/a;->o()I

    move-result v2

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startFaceCheck time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConfirmBiometricInfo"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    const/4 v0, 0x5

    if-lt v2, v0, :cond_1

    return-void

    .line 426
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/privacy/a;->l:J

    .line 427
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->k:Landroid/os/CancellationSignal;

    .line 428
    iget-object v1, p0, Lcom/coloros/settings/privacy/a;->i:Landroid/hardware/face/FaceManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/settings/privacy/a;->k:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/coloros/settings/privacy/a;->j:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    const/4 v6, 0x0

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 429
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->w:Lcom/coloros/settings/privacy/b;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/b;->b()V

    .line 430
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p1, v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->setChecking(Z)V

    .line 432
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a()V

    .line 435
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->x:Lcom/coloros/settings/privacy/a$b;

    const/16 v0, 0x79

    invoke-virtual {p1, v0}, Lcom/coloros/settings/privacy/a$b;->removeMessages(I)V

    .line 436
    iget-object p1, p0, Lcom/coloros/settings/privacy/a;->x:Lcom/coloros/settings/privacy/a$b;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/settings/privacy/a$b;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method final c()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final d()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/coloros/settings/privacy/a;->e:I

    return v0
.end method

.method final e()V
    .locals 7

    const-string v0, ""

    .line 144
    iget-object v1, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "only_privacy_confirm"

    .line 145
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/privacy/a;->c:Z

    const-string v3, "only_privacy_settings_check_on_create"

    .line 146
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/privacy/a;->d:Z

    const-string v3, "confirm_password_type"

    .line 147
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/privacy/a;->e:I

    .line 148
    new-instance v1, Lcom/coloros/settings/privacy/b;

    iget-object v3, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-direct {v1, v3}, Lcom/coloros/settings/privacy/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/privacy/a;->w:Lcom/coloros/settings/privacy/b;

    .line 149
    iget-object v1, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "fingerprint"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/coloros/settings/privacy/a;->s:Landroid/hardware/fingerprint/FingerprintManager;

    .line 150
    iget-object v1, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "face"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    iput-object v1, p0, Lcom/coloros/settings/privacy/a;->i:Landroid/hardware/face/FaceManager;

    .line 152
    iget-object v1, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const v3, 0x7f0a00df

    invoke-virtual {v1, v3}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/privacy/a;->a:Landroid/view/View;

    .line 1158
    iget-object v1, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const v3, 0x7f0a0767

    invoke-virtual {v1, v3}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1159
    new-instance v3, Lcom/coloros/settings/privacy/-$$Lambda$a$4O1Q--NDgSNYy4eEdyPE6b5dmqQ;

    invoke-direct {v3, p0}, Lcom/coloros/settings/privacy/-$$Lambda$a$4O1Q--NDgSNYy4eEdyPE6b5dmqQ;-><init>(Lcom/coloros/settings/privacy/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    iget-object v3, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    :try_start_0
    const-string v3, "persist.vendor.fingerprint.optical.iconsize"

    .line 1167
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1168
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1169
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    :try_start_1
    const-string v5, "persist.vendor.fingerprint.optical.iconlocation"

    .line 1172
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1174
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v3, v2

    .line 1177
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v2

    .line 1179
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "finger iconSize = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; iconLoc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConfirmBiometricInfo"

    invoke-static {v6, v5}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_2

    if-lez v0, :cond_2

    .line 1181
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1182
    div-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    invoke-virtual {v3}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07058f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1183
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    .line 1246
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/a;->c:Z

    const/4 v3, 0x3

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1247
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    .line 1251
    :cond_3
    iget v1, p0, Lcom/coloros/settings/privacy/a;->e:I

    if-ne v1, v3, :cond_4

    .line 1252
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerFileEncryptEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    goto :goto_4

    :cond_4
    if-ne v1, v4, :cond_5

    .line 1254
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerAppEncryptEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    goto :goto_4

    .line 1256
    :cond_5
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/a;->f:Z

    goto :goto_4

    .line 1248
    :cond_6
    :goto_3
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/a;->f:Z

    .line 1270
    :goto_4
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    .line 1271
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/a;->c:Z

    if-nez v1, :cond_a

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    .line 1275
    :cond_7
    iget v1, p0, Lcom/coloros/settings/privacy/a;->e:I

    if-ne v1, v3, :cond_8

    .line 1276
    invoke-static {v0}, Lcom/coloros/settings/utils/q;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    goto :goto_6

    :cond_8
    if-ne v1, v4, :cond_9

    .line 1278
    invoke-static {v0}, Lcom/coloros/settings/utils/q;->j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    goto :goto_6

    .line 1280
    :cond_9
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/a;->o:Z

    goto :goto_6

    .line 1272
    :cond_a
    :goto_5
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/a;->o:Z

    .line 1190
    :goto_6
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const v1, 0x7f0a00e0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1191
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-eqz v1, :cond_b

    const v1, 0x7f1217df

    .line 1192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 1193
    :cond_b
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-eqz v1, :cond_c

    const v1, 0x7f1217e1

    .line 1194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 1195
    :cond_c
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-eqz v1, :cond_d

    const v1, 0x7f1217e2

    .line 1196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    return-void
.end method

.method final f()V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    .line 2262
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/a;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2265
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/privacy/a;->v:I

    .line 2266
    new-instance v0, Lcom/coloros/settings/privacy/a$c;

    invoke-direct {v0, p0, v2}, Lcom/coloros/settings/privacy/a$c;-><init>(Lcom/coloros/settings/privacy/a;B)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->t:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 2285
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->b:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const v1, 0x7f0a0282

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/privacy/FaceUnlockLayout;

    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    .line 2286
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-eqz v0, :cond_2

    .line 2287
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    new-instance v1, Lcom/coloros/settings/privacy/-$$Lambda$a$H8FkQMISDL-g61Ep3_Y7iK_LBoM;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/-$$Lambda$a$H8FkQMISDL-g61Ep3_Y7iK_LBoM;-><init>(Lcom/coloros/settings/privacy/a;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->setOnFaceClickListener(Lcom/coloros/settings/privacy/FaceUnlockLayout$a;)V

    .line 2289
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a()V

    .line 2290
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/FaceUnlockLayout;->setChecking(Z)V

    goto :goto_0

    .line 2291
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-eqz v0, :cond_3

    .line 2293
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->n:Lcom/coloros/settings/privacy/FaceUnlockLayout;

    .line 3150
    iget-object v1, v0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3151
    iget-object v0, v0, Lcom/coloros/settings/privacy/FaceUnlockLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3299
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-eqz v0, :cond_4

    .line 3303
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->k:Landroid/os/CancellationSignal;

    .line 3304
    new-instance v0, Lcom/coloros/settings/privacy/a$a;

    invoke-direct {v0, p0, v2}, Lcom/coloros/settings/privacy/a$a;-><init>(Lcom/coloros/settings/privacy/a;B)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->j:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    :cond_4
    return-void
.end method

.method final g()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ConfirmBiometricInfo"

    const-string v1, "onResume"

    .line 213
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/a;->p:Z

    const/4 v1, 0x1

    .line 215
    iput-boolean v1, p0, Lcom/coloros/settings/privacy/a;->h:Z

    .line 216
    invoke-direct {p0}, Lcom/coloros/settings/privacy/a;->n()V

    .line 217
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/a;->c(I)V

    return-void
.end method

.method final h()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->x:Lcom/coloros/settings/privacy/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/a$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iput-object v1, p0, Lcom/coloros/settings/privacy/a;->j:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 233
    iput-object v1, p0, Lcom/coloros/settings/privacy/a;->t:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-void
.end method

.method final i()V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/privacy/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConfirmBiometricInfo"

    const-string v1, "stopAuthenticateFinger"

    .line 354
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->u:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/coloros/settings/privacy/a;->u:Landroid/os/CancellationSignal;

    :cond_1
    return-void
.end method

.method final j()J
    .locals 8

    .line 361
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->s:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/coloros/b/a;->a(Landroid/hardware/fingerprint/FingerprintManager;)J

    move-result-wide v0

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getFingerLockoutAttemptDeadline elapsedDeadline = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "; elapsedRealtime = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmBiometricInfo"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4
.end method

.method final k()J
    .locals 4

    .line 399
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/a;->o:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/a;->i:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    const-string v2, "getLockoutAttemptDeadline"

    .line 5093
    invoke-static {v0, v2, v1, v1}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
