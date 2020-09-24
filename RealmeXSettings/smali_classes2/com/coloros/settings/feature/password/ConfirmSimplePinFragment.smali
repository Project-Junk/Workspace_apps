.class public Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmSimplePinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$b;,
        Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;
    }
.end annotation


# static fields
.field private static final o:[I


# instance fields
.field private A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

.field private B:Landroid/os/CountDownTimer;

.field private C:Landroid/os/CountDownTimer;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:I

.field private J:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private K:J

.field private L:Z

.field private M:Z

.field private N:Lcom/color/support/widget/ColorNumericKeyboard;

.field private O:Ljava/lang/Runnable;

.field private final p:Landroid/os/Handler;

.field private q:Landroid/content/Context;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/color/support/widget/ColorSimpleLock;

.field private w:I

.field private x:[Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 56
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->o:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$b;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$b;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->p:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    .line 68
    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    .line 72
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    .line 74
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->G:Z

    .line 642
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$6;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->O:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->H:I

    return p1
.end method

.method private a(J)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    const v1, 0x7f120b23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->D:Z

    .line 286
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->C:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 289
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;J)V

    .line 320
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$2;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->C:Landroid/os/CountDownTimer;

    return-void
.end method

.method private a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    .line 426
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->l()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;ZLandroid/content/Intent;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(ZLandroid/content/Intent;II)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 10

    .line 462
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "face_challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 469
    iget v8, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e:I

    .line 470
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v9, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$3;

    invoke-direct {v9, p0, p2, v8}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$3;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Landroid/content/Intent;I)V

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->J:Landroid/os/AsyncTask;

    return-void

    :cond_1
    :goto_0
    const-string p1, "ConfirmSimplePinFragment"

    const-string p2, "startVerifyPasswordForFace, activity is finished"

    .line 464
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLandroid/content/Intent;II)V
    .locals 3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPasswordChecked matched="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmSimplePinFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 553
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 557
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->y:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "onPasswordChecked, input is null"

    .line 558
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 561
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->y:Ljava/lang/String;

    .line 6019
    sput-object p1, Lcom/coloros/settings/utils/z;->b:Ljava/lang/String;

    .line 562
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    .line 563
    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    goto :goto_0

    :cond_2
    const-string p4, ""

    .line 562
    :goto_0
    invoke-static {p1, p3, p4}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 564
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->y:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string p3, "password"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 565
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 566
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->m:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    .line 567
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    if-lez p3, :cond_4

    .line 570
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 572
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->n()V

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b(J)V

    return-void

    .line 575
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->n()V

    .line 576
    sget-object p1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "onPasswordChecked, activity is finished"

    .line 554
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    return p0
.end method

.method private b(J)V
    .locals 4

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 689
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleAttemptLockout "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmSimplePinFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 691
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    .line 692
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V

    .line 693
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->c()V

    .line 694
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;J)V

    .line 708
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$7;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->B:Landroid/os/CountDownTimer;

    return-void

    .line 710
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleAttemptLockout invalid mills "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V
    .locals 5

    .line 6610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteInputPassword "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmSimplePinFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6612
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    .line 6613
    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    if-ge v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 6614
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->t:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setDeleteLast(Z)V

    .line 6615
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->x:[Ljava/lang/String;

    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    add-int/lit8 v3, v2, -0x1

    const-string v4, ""

    aput-object v4, v0, v3

    sub-int/2addr v2, v1

    .line 6616
    iput v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    .line 6617
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 6618
    iput v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->D:Z

    return p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->D:Z

    return v0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->k()V

    return-void
.end method

.method static synthetic i(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Lcom/android/settings/b/a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Landroid/os/AsyncTask;
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->J:Landroid/os/AsyncTask;

    return-object v0
.end method

.method private k()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->a()J

    move-result-wide v0

    .line 275
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "refreshFingerprintState time "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfirmSimplePinFragment"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 277
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->D:Z

    return-void
.end method

.method private l()V
    .locals 8

    .line 373
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-ne v0, v1, :cond_3

    .line 374
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    .line 5064
    iget-boolean v1, v1, Lcom/android/settings/b/a;->a:Z

    if-eqz v1, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->m()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v5, 0x7f120b23

    if-nez v1, :cond_1

    const-string v1, "language"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 382
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 385
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/coloros/settings/utils/ag$a;->b:I

    .line 384
    invoke-static {v1, v6, v5, v7}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    :cond_2
    return-void

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    if-ne v0, v1, :cond_4

    .line 394
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f120cab

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 395
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    if-ne v0, v1, :cond_5

    .line 396
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->H:I

    if-lez v0, :cond_5

    .line 398
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    const v4, 0x7f12098d

    new-array v2, v2, [Ljava/lang/Object;

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 398
    invoke-virtual {p0, v4, v2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    if-eqz v0, :cond_5

    .line 402
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method static synthetic l(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z
    .locals 0

    .line 7458
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    return p0
.end method

.method private m()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    .line 5072
    iget-boolean v0, v0, Lcom/android/settings/b/a;->b:Z

    const-string v1, "ConfirmSimplePinFragment"

    if-eqz v0, :cond_0

    const-string v0, "getFigerprintEnable"

    .line 411
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->k()V

    .line 413
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->D:Z

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    const v1, 0x7f120cad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 415
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "getFigerprintEnable false"

    .line 418
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    const v1, 0x7f120b23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f120cfc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->F:Z

    return p0
.end method

.method static synthetic n(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Lcom/color/support/widget/ColorSimpleLock;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->t:Lcom/color/support/widget/ColorSimpleLock;

    return-object p0
.end method

.method private n()V
    .locals 8

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->K:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, "ConfirmSimplePinFragment"

    if-gez v4, :cond_0

    const-string v0, "startInputWrongAnimation duration=0"

    .line 629
    invoke-static {v5, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    :cond_0
    const-wide/16 v6, 0xe6

    cmp-long v4, v0, v6

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    sub-long v2, v6, v0

    .line 637
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "startInputWrongAnimation dealy="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " duration="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic o(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)I
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    return v0
.end method

.method static synthetic p(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    return v0
.end method

.method static synthetic q(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 7715
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    .line 7716
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V

    .line 7717
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 7718
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    .line 8064
    iget-boolean v0, v0, Lcom/android/settings/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 7719
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ConfirmSimplePinFragment"

    const-string v1, "onCountDownFinish startListening"

    .line 7720
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7721
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p0}, Lcom/android/settings/b/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 0

    .line 341
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->F:Z

    if-eqz p1, :cond_0

    const p1, 0x7f120c53

    return p1

    :cond_0
    const p1, 0x7f120c55

    return p1
.end method

.method public final d()V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 243
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 244
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final d(I)V
    .locals 14

    const-string v0, "ConfirmSimplePinFragment"

    const-string v1, "inputPassword"

    .line 582
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    .line 585
    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    .line 586
    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    if-gt v2, v1, :cond_9

    if-lez v2, :cond_9

    .line 587
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->t:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v2, p1}, Lcom/color/support/widget/ColorSimpleLock;->setOneCode(I)V

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->K:J

    .line 589
    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    if-lez v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->x:[Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    return-void

    .line 591
    :cond_0
    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->w:I

    if-ne v2, v1, :cond_9

    .line 592
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->x:[Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 594
    :goto_0
    iget v3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    if-ge v2, v3, :cond_1

    .line 595
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->x:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->y:Ljava/lang/String;

    .line 6430
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "confirmInputPassword : mTipStage = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6431
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    sget-object v2, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->A:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    sget-object v2, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    if-ne p1, v2, :cond_9

    .line 6432
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "has_challenge"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 6434
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_face_challenge"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 6436
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "confirmInputPassword input is null"

    .line 6437
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6440
    :cond_3
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 6441
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirmInputPassword : verifyChallenge = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " verifyFaceChallenge = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    if-eqz v7, :cond_4

    goto :goto_1

    .line 6449
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->y:Ljava/lang/String;

    .line 6528
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e:I

    .line 6529
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;

    invoke-direct {v2, p0, v6, p1, v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$5;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->J:Landroid/os/AsyncTask;

    return-void

    .line 6458
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-eqz v0, :cond_8

    .line 6445
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->y:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 6494
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v1, 0x0

    const-string v3, "challenge"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 6496
    iget v12, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e:I

    .line 6497
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v13, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;

    move-object v4, v13

    move-object v5, p0

    move-object v8, v0

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$4;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;Landroid/content/Intent;ZLjava/lang/String;I)V

    move-object v8, p1

    move-object v9, v0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->J:Landroid/os/AsyncTask;

    return-void

    :cond_6
    if-eqz v7, :cond_7

    .line 6522
    invoke-direct {p0, v0, v6}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_7
    return-void

    .line 6453
    :cond_8
    iget p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e:I

    invoke-direct {p0, v1, v6, v1, p1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(ZLandroid/content/Intent;II)V

    :cond_9
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 352
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 357
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 362
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p2, p3, :cond_2

    .line 364
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 5

    .line 249
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onAuthenticationError "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConfirmSimplePinFragment"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->L:Z

    if-eqz p2, :cond_0

    .line 252
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onAuthenticationError stopListening"

    .line 253
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    return-void

    .line 257
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p2}, Lcom/android/settings/b/a;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    .line 259
    invoke-direct {p0, v1, v2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(J)V

    return-void

    .line 260
    :cond_1
    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->D:Z

    if-nez p2, :cond_2

    const-string p2, "onAuthenticationError stopListening startListening"

    .line 261
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    .line 264
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    if-nez p1, :cond_2

    .line 265
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    .line 266
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->b()V

    :cond_2
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .locals 2

    .line 325
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onAuthenticationFailed(I)V

    .line 326
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    const v1, 0x7f120cce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 327
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/b/a;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 332
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->q:Landroid/content/Context;

    .line 93
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->q:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->f:I

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/ContentResolver;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    .line 95
    iget p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "password length exception, length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->L:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 108
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e:I

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    const p3, 0x7f0d021e

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    .line 1072
    iget-boolean p3, p3, Lcom/android/settings/b/a;->b:Z

    if-eqz p3, :cond_0

    .line 114
    iget-boolean p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    .line 2064
    iget-boolean p3, p3, Lcom/android/settings/b/a;->a:Z

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    .line 115
    :goto_0
    iput-boolean p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->M:Z

    .line 116
    iget-boolean p3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->M:Z

    if-eqz p3, :cond_1

    const p3, 0x7f0a02a3

    .line 117
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 118
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 2135
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/utils/al;->ab(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2136
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2139
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v0, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2140
    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "getFigerprintEnable: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    .line 3072
    iget-boolean v2, v2, Lcom/android/settings/b/a;->b:Z

    .line 121
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAllowFpAuthentication: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasFingerprint: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a:Lcom/android/settings/b/a;

    .line 4064
    iget-boolean v2, v2, Lcom/android/settings/b/a;->a:Z

    .line 123
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", useOpticalFpLayout: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->M:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ConfirmSimplePinFragment"

    .line 121
    invoke-static {v2, p3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p3, 0x40000

    if-eq p3, p2, :cond_3

    const/high16 p3, 0x50000

    if-eq p3, p2, :cond_3

    const/high16 p3, 0x60000

    if-ne p3, p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v0

    .line 126
    :goto_2
    iput-boolean p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->F:Z

    .line 129
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 4153
    iget p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->x:[Ljava/lang/String;

    const p2, 0x7f0a02f4

    .line 4155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->r:Landroid/widget/TextView;

    const p2, 0x7f0a02f2

    .line 4156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    .line 4157
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4158
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->l()V

    const p2, 0x7f0a04c1

    .line 4160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorSimpleLock;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->t:Lcom/color/support/widget/ColorSimpleLock;

    .line 4161
    iget p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->I:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_4

    .line 4162
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->t:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p2, v1}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    goto :goto_3

    .line 4164
    :cond_4
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->t:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    .line 4166
    :goto_3
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    const p2, 0x7f0a0362

    .line 4167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 4168
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 4169
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v0, p2, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 4170
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 4171
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$1;-><init>(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;)V

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    const p2, 0x7f0a05d7

    .line 4189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 4190
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->L:Z

    .line 148
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 200
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 205
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->B:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->C:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 211
    iput-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->C:Landroid/os/CountDownTimer;

    .line 212
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 213
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->D:Z

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->J:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 217
    iput-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->J:Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 228
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->z:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->e:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResume deadline "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mLockInput "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfirmSimplePinFragment"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 232
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->b(J)V

    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->E:Z

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->N:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 236
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;)V

    :cond_1
    return-void
.end method
