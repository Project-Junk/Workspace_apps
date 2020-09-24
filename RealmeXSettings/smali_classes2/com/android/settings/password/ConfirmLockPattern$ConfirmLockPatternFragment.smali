.class public Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/CredentialCheckResultTracker$a;
.implements Lcom/android/settingslib/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings/password/CredentialCheckResultTracker$a;",
        "Lcom/android/settingslib/c/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Lcom/android/settingslib/c/b;

.field private C:Lcom/android/settingslib/c/c;

.field private D:Ljava/lang/Runnable;

.field private E:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private o:Lcom/android/internal/widget/LockPatternView;

.field private p:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private q:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private r:Z

.field private s:Landroid/os/CountDownTimer;

.field private t:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->r:Z

    .line 406
    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->D:Ljava/lang/Runnable;

    .line 455
    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->E:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->p:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    return-object p0
.end method

.method private a(J)V
    .locals 3

    .line 608
    sget v0, Lcom/android/settings/password/ConfirmLockPattern$a;->c:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d(I)V

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 610
    new-instance v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    sub-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    .line 626
    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->s:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;I)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/content/Intent;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->b(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    .line 439
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPattern;->setResult(ILandroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->finish()V

    const p1, 0x7f010046

    const v0, 0x7f010047

    .line 441
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/ConfirmLockPattern;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->D:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(ZLandroid/content/Intent;IIZ)V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    if-eqz p1, :cond_4

    if-eqz p5, :cond_0

    .line 565
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->g:Landroid/os/UserManager;

    iget p4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e:I

    invoke-static {p1, p3, p4}, Lcom/android/settings/password/c;->a(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;I)V

    .line 568
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->m:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    .line 1425
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->r:Z

    if-nez p1, :cond_3

    .line 1428
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->r:Z

    .line 1430
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ConfirmLockPattern;

    if-eqz p1, :cond_3

    .line 1432
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 2268
    :cond_1
    iget p3, p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    .line 1435
    sget p4, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->b:I

    if-ne p3, p4, :cond_2

    .line 1436
    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 1437
    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->C:Lcom/android/settingslib/c/c;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->l()[[Ljava/lang/Object;

    move-result-object p4

    new-instance p5, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$ConfirmLockPatternFragment$3Ey5ST0YzVLtroPUoqRvL7G-4II;

    invoke-direct {p5, p1, p2}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$ConfirmLockPatternFragment$3Ey5ST0YzVLtroPUoqRvL7G-4II;-><init>(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V

    invoke-virtual {p3, p4, p5, p0}, Lcom/android/settingslib/c/c;->a([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/c/a;)V

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    .line 1446
    invoke-virtual {p1, p3, p2}, Lcom/android/settings/password/ConfirmLockPattern;->setResult(ILandroid/content/Intent;)V

    .line 1447
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern;->finish()V

    .line 570
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/c;->a(Landroid/app/Activity;)V

    return-void

    :cond_4
    if-lez p3, :cond_5

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->c()V

    .line 574
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(J)V

    goto :goto_1

    .line 578
    :cond_5
    sget p1, Lcom/android/settings/password/ConfirmLockPattern$a;->b:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d(I)V

    .line 2415
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2416
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->D:Ljava/lang/Runnable;

    const-wide/16 p3, 0xbb8

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    if-eqz p5, :cond_6

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->i()V

    :cond_6
    return-void
.end method

.method static synthetic c(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->p:Landroid/os/AsyncTask;

    return-object p0
.end method

.method private d(I)V
    .locals 2

    .line 360
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$1;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 392
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    const p1, 0x7f120cd7

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->c(I)V

    .line 384
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 385
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 386
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_2

    .line 362
    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->z:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    .line 363
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->m()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 367
    :goto_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->A:Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    .line 368
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 370
    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->w:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 372
    :goto_1
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->j:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e:I

    .line 374
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    .line 373
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(I)V

    .line 376
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 377
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 378
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 398
    :goto_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 0

    .line 154
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->r:Z

    return p0
.end method

.method static synthetic e(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object p0
.end method

.method private k()I
    .locals 3

    .line 312
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->l:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120c9c

    return v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->b()Z

    move-result v0

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v0, 0x7f120ccc

    return v0

    :cond_1
    const v0, 0x7f120c9e

    return v0

    :cond_2
    if-eqz v0, :cond_3

    const v0, 0x7f120cc3

    return v0

    :cond_3
    const v0, 0x7f120c9d

    return v0
.end method

.method private l()[[Ljava/lang/Object;
    .locals 8

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->w:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d:Landroid/widget/Button;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 335
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 336
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 337
    :goto_1
    aget-object v6, v1, v3

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 338
    aget-object v6, v1, v3

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 340
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    aget-object v1, v1, v2

    array-length v1, v1

    filled-new-array {v3, v1}, [I

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    move v3, v2

    .line 343
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 344
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move v5, v2

    .line 345
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 346
    aget-object v6, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method public static synthetic lambda$3Ey5ST0YzVLtroPUoqRvL7G-4II(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V

    return-void
.end method

.method private m()I
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->l:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120ca0

    return v0

    :cond_0
    const v0, 0x7f120865

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 634
    instance-of v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v2, :cond_4

    .line 635
    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 636
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p7, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    if-eqz p7, :cond_1

    move/from16 v7, p6

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-eqz p7, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    if-eqz p7, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, v1

    :goto_3
    const/high16 v10, 0x3f800000    # 1.0f

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v3 .. v16}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void

    .line 643
    :cond_4
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->B:Lcom/android/settingslib/c/b;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/settingslib/c/b;->a(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(ZLandroid/content/Intent;IIZ)V
    .locals 0

    .line 590
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->b(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method protected final b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const p1, 0x7f120c49

    return p1

    .line 603
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized user type:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const p1, 0x7f120c48

    return p1

    :cond_2
    const p1, 0x7f120c47

    return p1
.end method

.method protected final d()V
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 304
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->e()V

    .line 305
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->t:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 307
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 354
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->f()V

    .line 355
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->B:Lcom/android/settingslib/c/b;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->l()[[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/c/b;->a([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/c/a;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method protected final j()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmLockPattern;

    .line 1268
    iget v1, v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    .line 187
    sget v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->a:I

    if-ne v1, v2, :cond_0

    const v1, 0x7f0d011b

    goto :goto_0

    :cond_0
    const v1, 0x7f0d0119

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 186
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02eb

    .line 192
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->t:Landroid/widget/TextView;

    const v2, 0x7f0a03bc

    .line 193
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    const v2, 0x7f0a067a

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->w:Landroid/widget/TextView;

    const v2, 0x7f0a026e

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->j:Landroid/widget/TextView;

    const v2, 0x7f0a0391

    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->x:Landroid/view/View;

    const v2, 0x7f0a0573

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->y:Landroid/view/View;

    const v2, 0x7f0a070e

    .line 202
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 203
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "com.android.settings.ConfirmCredentials.header"

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->z:Ljava/lang/CharSequence;

    const-string v3, "com.android.settings.ConfirmCredentials.details"

    .line 209
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->A:Ljava/lang/CharSequence;

    .line 213
    :cond_1
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    .line 214
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    .line 213
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 215
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 217
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->E:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 218
    sget v2, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    invoke-direct {v0, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d(I)V

    if-nez p3, :cond_2

    .line 230
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->l:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 235
    :cond_2
    new-instance v2, Lcom/android/settingslib/c/b;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v5, 0xdc

    const/high16 v7, 0x40000000    # 2.0f

    const v8, 0x3fa66666    # 1.3f

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v9, 0x10c000e

    .line 237
    invoke-static {v3, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/c/b;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->B:Lcom/android/settingslib/c/b;

    .line 239
    new-instance v2, Lcom/android/settingslib/c/c;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const-wide/16 v12, 0x7d

    const/high16 v14, 0x40800000    # 4.0f

    const v15, 0x3e99999a    # 0.3f

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c000f

    .line 241
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v16

    new-instance v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v3, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    move-object v10, v2

    move-object/from16 v17, v3

    invoke-direct/range {v10 .. v17}, Lcom/android/settingslib/c/c;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/c/b$b;)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->C:Lcom/android/settingslib/c/c;

    .line 249
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "check_lock_result"

    .line 252
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 253
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v2, :cond_3

    .line 254
    new-instance v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_3
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 270
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->s:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(Lcom/android/settings/password/CredentialCheckResultTracker$a;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 283
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->e:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a()V

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->a(J)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->o:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    sget v0, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->d(I)V

    .line 295
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->q:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(Lcom/android/settings/password/CredentialCheckResultTracker$a;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
