.class public Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings/password/CredentialCheckResultTracker$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private A:Lcom/android/settingslib/c/b;

.field private B:Lcom/android/settingslib/c/c;

.field private o:Lcom/android/settings/widget/ImeAwareEditText;

.field private p:Lcom/android/internal/widget/TextViewInputDisabler;

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

.field private t:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/os/CountDownTimer;

.field private y:Z

.field private z:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/os/AsyncTask;
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->q:Landroid/os/AsyncTask;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .line 532
    new-instance v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr p1, v1

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;J)V

    .line 551
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->x:Landroid/os/CountDownTimer;

    .line 552
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->l()V

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    .line 482
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    const p1, 0x7f010046

    const v0, 0x7f010047

    .line 484
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/ConfirmLockPassword;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 0

    .line 6412
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    return p0
.end method

.method static synthetic d(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    return p0
.end method

.method static synthetic e(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->l()V

    return-void
.end method

.method private k()[Landroid/view/View;
    .locals 2

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->d:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 317
    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    .line 364
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 365
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->p:Lcom/android/internal/widget/TextViewInputDisabler;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->z:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v2}, Lcom/android/settings/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->a()V

    return-void
.end method

.method public static synthetic lambda$2lDR1FDFZgyz74LdOUey8eufuQk(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$hdbG3G881E10D4rPJjQZNvD3EtM(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->l()V

    return-void
.end method

.method private m()V
    .locals 8

    .line 383
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->q:Landroid/os/AsyncTask;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->s:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 389
    array-length v0, v2

    if-nez v0, :cond_1

    goto :goto_1

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->p:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 397
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_4

    .line 3412
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-eqz v0, :cond_3

    .line 3416
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v4, 0x0

    const-string v1, "challenge"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3418
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    .line 3419
    iget v6, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->f:I

    .line 3420
    new-instance v7, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v7, p0, v3, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V

    if-ne v0, v6, :cond_2

    .line 3438
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    move-wide v3, v4

    move v5, v6

    move-object v6, v7

    .line 3439
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;[BJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    .line 3441
    invoke-static/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;[BZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->q:Landroid/os/AsyncTask;

    return-void

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    invoke-virtual {v0, v1, v3, v1, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    return-void

    .line 3447
    :cond_4
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    .line 3448
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v4, p0, v3, v2, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;[BI)V

    invoke-static {v1, v2, v0, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;[BILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->q:Landroid/os/AsyncTask;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    new-instance v0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hdbG3G881E10D4rPJjQZNvD3EtM;

    invoke-direct {v0, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hdbG3G881E10D4rPJjQZNvD3EtM;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(ZLandroid/content/Intent;IIZ)V
    .locals 2

    .line 3496
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->p:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-eqz p1, :cond_4

    if-eqz p5, :cond_0

    .line 3499
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->g:Landroid/os/UserManager;

    iget p4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    invoke-static {p1, p3, p4}, Lcom/android/settings/password/c;->a(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;I)V

    .line 3502
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->m:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    .line 4470
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->s:Z

    if-nez p1, :cond_3

    .line 4473
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->s:Z

    .line 4475
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ConfirmLockPassword;

    if-eqz p1, :cond_3

    .line 4477
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 5268
    :cond_1
    iget p3, p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    .line 4480
    sget p4, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->b:I

    if-ne p3, p4, :cond_2

    .line 4481
    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->B:Lcom/android/settingslib/c/c;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->k()[Landroid/view/View;

    move-result-object p4

    new-instance p5, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$2lDR1FDFZgyz74LdOUey8eufuQk;

    invoke-direct {p5, p1, p2}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$2lDR1FDFZgyz74LdOUey8eufuQk;-><init>(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/Intent;)V

    .line 6066
    invoke-virtual {p3, p4, p5, p3}, Lcom/android/settingslib/c/b;->a([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/c/a;)V

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    .line 4489
    invoke-virtual {p1, p3, p2}, Lcom/android/settings/password/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 4490
    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    .line 3504
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/c;->a(Landroid/app/Activity;)V

    return-void

    :cond_4
    if-lez p3, :cond_5

    .line 3507
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->c()V

    .line 3508
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 3510
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(J)V

    goto :goto_2

    .line 6277
    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz p1, :cond_6

    const p1, 0x7f120cab

    goto :goto_1

    :cond_6
    const p1, 0x7f120cac

    .line 3512
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->c(I)V

    :goto_2
    if-eqz p5, :cond_7

    .line 3515
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->i()V

    :cond_7
    return-void
.end method

.method protected final b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 291
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz p1, :cond_0

    const p1, 0x7f120c46

    return p1

    :cond_0
    const p1, 0x7f120c4c

    return p1

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unrecognized user type:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz p1, :cond_3

    const p1, 0x7f120c45

    return p1

    :cond_3
    const p1, 0x7f120c4b

    return p1

    .line 285
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz p1, :cond_5

    const p1, 0x7f120c44

    return p1

    :cond_5
    const p1, 0x7f120c4a

    return p1
.end method

.method protected final d()V
    .locals 5

    .line 359
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->e()V

    .line 301
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->t:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setAlpha(F)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 322
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->f()V

    .line 323
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->A:Lcom/android/settingslib/c/b;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->k()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hdbG3G881E10D4rPJjQZNvD3EtM;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hdbG3G881E10D4rPJjQZNvD3EtM;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 3066
    invoke-virtual {v0, v1, v2, v0}, Lcom/android/settingslib/c/b;->a([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/c/a;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method protected final j()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a011f

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0457

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->m()V

    return-void

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 180
    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p3

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword;

    .line 1268
    iget v0, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    .line 185
    sget v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->a:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0118

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0116

    :goto_0
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a04ba

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    .line 192
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 194
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p2}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 195
    new-instance p2, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p2, v0}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->p:Lcom/android/internal/widget/TextViewInputDisabler;

    const p2, 0x7f0a02eb

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->t:Landroid/widget/TextView;

    .line 198
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->t:Landroid/widget/TextView;

    if-nez p2, :cond_1

    const p2, 0x7f0a066e

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->t:Landroid/widget/TextView;

    :cond_1
    const p2, 0x7f0a067a

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->w:Landroid/widget/TextView;

    const p2, 0x7f0a026e

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->j:Landroid/widget/TextView;

    const/high16 p2, 0x40000

    const/4 v0, 0x1

    if-eq p2, p3, :cond_3

    const/high16 p2, 0x50000

    if-eq p2, p3, :cond_3

    const/high16 p2, 0x60000

    if-eq p2, p3, :cond_3

    const/high16 p2, 0x80000

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v0

    .line 203
    :goto_2
    iput-boolean p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->z:Landroid/view/inputmethod/InputMethodManager;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_b

    const-string p3, "com.android.settings.ConfirmCredentials.header"

    .line 213
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    const-string v2, "com.android.settings.ConfirmCredentials.details"

    .line 215
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 217
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2255
    iget-boolean p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->l:Z

    if-eqz p3, :cond_5

    .line 2256
    iget-boolean p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz p3, :cond_4

    const p3, 0x7f120c9b

    goto :goto_3

    :cond_4
    const p3, 0x7f120ca5

    goto :goto_3

    .line 2259
    :cond_5
    iget-boolean p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz p3, :cond_6

    const p3, 0x7f120c9a

    goto :goto_3

    :cond_6
    const p3, 0x7f120ca4

    .line 218
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 220
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2264
    iget-boolean p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->l:Z

    if-eqz p2, :cond_9

    .line 2265
    iget-boolean p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz p2, :cond_8

    const p2, 0x7f120c97

    goto :goto_4

    :cond_8
    const p2, 0x7f120ca1

    goto :goto_4

    .line 2268
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->b()Z

    move-result p2

    .line 2269
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    shl-int/lit8 p2, p2, 0x2

    shl-int/lit8 v0, v2, 0x1

    add-int/2addr p2, v0

    .line 2271
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    add-int/2addr p2, v0

    .line 2273
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPassword;->a()[I

    move-result-object v0

    aget p2, v0, p2

    .line 221
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->w:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_b
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p2}, Lcom/android/settings/widget/ImeAwareEditText;->getInputType()I

    move-result p2

    .line 227
    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->y:Z

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    const/16 p2, 0x12

    :goto_5
    invoke-virtual {p3, p2}, Lcom/android/settings/widget/ImeAwareEditText;->setInputType(I)V

    .line 230
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->o:Lcom/android/settings/widget/ImeAwareEditText;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "com.android.internal.R.string.config_headlineFontFamily"

    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 230
    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    new-instance p2, Lcom/android/settingslib/c/b;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x10c000e

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/c/b;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->A:Lcom/android/settingslib/c/b;

    .line 237
    new-instance p2, Lcom/android/settingslib/c/c;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000f

    .line 239
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/android/settingslib/c/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->B:Lcom/android/settingslib/c/c;

    .line 241
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "check_lock_result"

    .line 244
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 245
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez p2, :cond_d

    .line 246
    new-instance p2, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {p2}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {p2, v0, p3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 248
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_d
    return-object p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 574
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->m()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 328
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->x:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 331
    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->x:Landroid/os/CountDownTimer;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(Lcom/android/settings/password/CredentialCheckResultTracker$a;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 343
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->a()V

    .line 347
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(J)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->l()V

    .line 350
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->e:I

    .line 352
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(I)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->r:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(Lcom/android/settings/password/CredentialCheckResultTracker$a;)V

    return-void
.end method
