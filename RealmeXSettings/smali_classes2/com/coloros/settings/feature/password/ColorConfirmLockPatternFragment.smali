.class public Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ColorConfirmLockPatternFragment.java"

# interfaces
.implements Lcom/android/settings/password/CredentialCheckResultTracker$a;
.implements Lcom/android/settingslib/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings/password/CredentialCheckResultTracker$a;",
        "Lcom/android/settingslib/c/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "com.coloros.settings.feature.password.ColorConfirmLockPatternFragment"


# instance fields
.field private A:Lcom/android/settingslib/c/b;

.field private B:Lcom/android/settingslib/c/c;

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/Runnable;

.field private G:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

.field private p:Lcom/color/support/widget/ColorLockPatternView;

.field private q:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private r:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private s:Z

.field private t:Landroid/os/CountDownTimer;

.field private w:Landroid/os/CountDownTimer;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->s:Z

    .line 281
    new-instance v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$2;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->F:Ljava/lang/Runnable;

    .line 458
    new-instance v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->G:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic A(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c:Z

    return p0
.end method

.method static synthetic B(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->C:I

    return p0
.end method

.method static synthetic C(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V
    .locals 2

    .line 6730
    sget v0, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(I)V

    .line 6731
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    .line 7064
    iget-boolean v0, v0, Lcom/android/settings/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 6732
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b:Z

    if-eqz v0, :cond_0

    .line 6733
    sget-object v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    const-string v1, "onCountDownFinish startListening"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6734
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p0}, Lcom/android/settings/b/a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->q:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3807
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 3809
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3811
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 3812
    invoke-virtual {v3}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getColumn()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x31

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3814
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private a(J)V
    .locals 2

    .line 357
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->n()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    const v1, 0x7f120865

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    .line 362
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->w:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 365
    :cond_1
    new-instance v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;J)V

    .line 396
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->w:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/content/Intent;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->C:I

    return p1
.end method

.method private b(J)V
    .locals 3

    .line 699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 701
    sget-object v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleAttemptLockout "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 703
    sget v0, Lcom/android/settings/password/ConfirmLockPattern$a;->c:I

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(I)V

    .line 704
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->c()V

    .line 705
    new-instance v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;J)V

    .line 723
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->t:Landroid/os/CountDownTimer;

    return-void

    .line 725
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleAttemptLockout invalid mills "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(ZLandroid/content/Intent;IIZ)V
    .locals 2

    .line 658
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 659
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    if-eqz p1, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p3, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    .line 667
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    .line 668
    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    .line 669
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string p4, ""

    .line 665
    :goto_0
    invoke-static {p1, p3, p4}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h()V

    .line 673
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->m:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    .line 2413
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ConfirmLockPattern;

    if-eqz p1, :cond_4

    .line 2415
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, -0x1

    .line 2418
    invoke-virtual {p1, p3, p2}, Lcom/android/settings/password/ConfirmLockPattern;->setResult(ILandroid/content/Intent;)V

    .line 2419
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->finish()V

    .line 675
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->g()V

    return-void

    :cond_5
    if-lez p3, :cond_6

    .line 678
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c()V

    .line 679
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(J)V

    goto :goto_2

    .line 683
    :cond_6
    sget p1, Lcom/android/settings/password/ConfirmLockPattern$a;->b:I

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(I)V

    .line 684
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->l()V

    :goto_2
    if-eqz p5, :cond_7

    .line 687
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->i()V

    :cond_7
    return-void

    .line 660
    :cond_8
    :goto_3
    sget-object p1, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    const-string p2, "onPasswordChecked, activity is finished"

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    return p0
.end method

.method static synthetic b(Ljava/util/List;)[B
    .locals 0

    .line 4135
    invoke-static {p0}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Ljava/util/List;)[B
    .locals 0

    .line 5135
    invoke-static {p0}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private d(I)V
    .locals 3

    .line 251
    sget-object v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$7;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 271
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    sget-object v2, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 264
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->g:Landroid/os/UserManager;

    iget v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(I)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    .line 260
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 275
    :goto_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e(I)V

    .line 278
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    return v0
.end method

.method static synthetic d(Ljava/util/List;)[B
    .locals 0

    .line 6135
    invoke-static {p0}, Lcom/color/support/widget/ColorLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private e(I)V
    .locals 6

    .line 747
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 750
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$7;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const-string v0, ""

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 780
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->C:I

    if-lez p1, :cond_2

    .line 782
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    const v2, 0x7f12098d

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 783
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 782
    invoke-virtual {p0, v2, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    .line 777
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    const v0, 0x7f120cd7

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 752
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 753
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "start_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 754
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    .line 3064
    iget-boolean v1, v1, Lcom/android/settings/b/a;->a:Z

    if-eqz v1, :cond_5

    .line 755
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o()V

    return-void

    .line 756
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f120865

    if-nez v1, :cond_6

    const-string v1, "language"

    .line 758
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 759
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 760
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 762
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 763
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    .line 765
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/settings/utils/ag$a;->d:I

    .line 764
    invoke-static {v1, v3, v2, v4}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 768
    :cond_7
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coloros/settings/utils/ag$a;->d:I

    .line 768
    invoke-static {p1, v4, v2, v5}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->m()V

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/android/settings/b/a;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    return-object p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->F:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->q:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->s:Z

    return p0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->l()V

    return-void
.end method

.method static synthetic l(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    return p0
.end method

.method private l()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 291
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->F:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/support/widget/ColorLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object p0
.end method

.method private m()V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->a()J

    move-result-wide v0

    .line 345
    sget-object v2, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "refreshFingerprintState time "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 347
    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    if-nez v2, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->n()V

    .line 350
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(J)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    return-void
.end method

.method static synthetic n(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    return p0
.end method

.method private n()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 427
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->getFailAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$4;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$4;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 449
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic o(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->f:I

    return p0
.end method

.method private o()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    .line 3072
    iget-boolean v0, v0, Lcom/android/settings/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 792
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->m()V

    .line 793
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    const v1, 0x7f120cd5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 795
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    const v1, 0x7f120865

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 799
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    const v1, 0x7f120cfc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method static synthetic p(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c:Z

    return p0
.end method

.method static synthetic q(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    return p0
.end method

.method static synthetic t(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->f:I

    return p0
.end method

.method static synthetic u(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c:Z

    return p0
.end method

.method static synthetic v(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    return p0
.end method

.method static synthetic y(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    return p0
.end method

.method static synthetic z(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a()Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public final a(ZLandroid/content/Intent;IIZ)V
    .locals 0

    .line 695
    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method public final b(I)I
    .locals 0

    const p1, 0x7f120c54

    return p1
.end method

.method public final d()V
    .locals 5

    .line 310
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    .line 311
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    .line 312
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    .line 313
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 309
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public final e()V
    .locals 0

    .line 219
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->e()V

    return-void
.end method

.method public final f()V
    .locals 0

    .line 240
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->f()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 297
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p2, p3, :cond_0

    .line 302
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4

    .line 319
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 320
    sget-object p2, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationError "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->E:Z

    if-eqz p2, :cond_0

    .line 322
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    sget-object p1, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    const-string p2, "onAuthenticationError stopListening"

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    return-void

    .line 327
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p2}, Lcom/android/settings/b/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(J)V

    return-void

    .line 330
    :cond_1
    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    if-nez p2, :cond_2

    .line 331
    sget-object p2, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o:Ljava/lang/String;

    const-string v0, "onAuthenticationError stopListening startListening"

    invoke-static {p2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    .line 334
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 335
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    .line 336
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->b()V

    :cond_2
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .locals 2

    .line 401
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onAuthenticationFailed(I)V

    .line 402
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    const v1, 0x7f120cfd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/b/a;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 404
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->n()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 409
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->E:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmLockPattern;

    const/4 v2, 0x0

    const v3, 0x7f0d01e4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 97
    invoke-virtual {v4, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a05d7

    .line 98
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    .line 1072
    iget-boolean v4, v4, Lcom/android/settings/b/a;->b:Z

    if-eqz v4, :cond_0

    .line 100
    iget-boolean v4, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a:Lcom/android/settings/b/a;

    .line 2064
    iget-boolean v4, v4, Lcom/android/settings/b/a;->a:Z

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    const v4, 0x7f0a02a3

    .line 103
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_1
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    const v1, 0x7f0a02eb

    .line 106
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x:Landroid/widget/TextView;

    const v1, 0x7f0a03bc

    .line 107
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorLockPatternView;

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    const v1, 0x7f0a02e9

    .line 109
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y:Landroid/widget/TextView;

    const v1, 0x7f0a070e

    .line 116
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 117
    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.android.settings.ConfirmCredentials.header"

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->z:Ljava/lang/CharSequence;

    .line 127
    :cond_2
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    .line 128
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    .line 127
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 129
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorLockPatternView;->setInStealthMode(Z)V

    .line 131
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->G:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorLockPatternView;->setOnPatternListener(Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;)V

    .line 132
    sget v1, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(I)V

    if-nez p3, :cond_3

    .line 138
    iget-boolean v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->l:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 143
    :cond_3
    new-instance v1, Lcom/android/settingslib/c/b;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v6, 0xdc

    const/high16 v8, 0x40000000    # 2.0f

    const v9, 0x3fa66666    # 1.3f

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10c000e

    .line 145
    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/settingslib/c/b;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->A:Lcom/android/settingslib/c/b;

    .line 147
    new-instance v1, Lcom/android/settingslib/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    const-wide/16 v13, 0x7d

    const/high16 v15, 0x40800000    # 4.0f

    const v16, 0x3e99999a    # 0.3f

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10c000f

    .line 149
    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v17

    new-instance v2, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$1;

    invoke-direct {v2, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$1;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V

    move-object v11, v1

    move-object/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Lcom/android/settingslib/c/c;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/c/b$b;)V

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->B:Lcom/android/settingslib/c/c;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "check_lock_result"

    .line 162
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 163
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v1, :cond_4

    .line 164
    new-instance v1, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v1}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v4, v0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v1, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_4
    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->E:Z

    .line 90
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->t:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->w:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 185
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->D:Z

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(Lcom/android/settings/password/CredentialCheckResultTracker$a;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 198
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->e:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a()V

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(J)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->p:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorLockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    sget v0, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(I)V

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(Lcom/android/settings/password/CredentialCheckResultTracker$a;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
