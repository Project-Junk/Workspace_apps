.class public Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;
.super Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;
.source "ConfirmComplexPasswordFragment.java"

# interfaces
.implements Lcom/android/settings/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;
    }
.end annotation


# static fields
.field private static final x:[I


# instance fields
.field private A:Landroid/os/CountDownTimer;

.field private B:Landroid/os/CountDownTimer;

.field private C:Z

.field private D:Z

.field private E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

.field private F:I

.field private G:Landroid/widget/TextView;

.field private H:Lcom/android/settings/b/a;

.field private I:Z

.field private J:Z

.field private K:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Landroid/os/Vibrator;

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Landroid/hardware/biometrics/BiometricManager;

.field w:Landroid/view/View$OnClickListener;

.field private y:Landroid/content/Context;

.field private z:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 67
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->x:[I

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

    .line 59
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    .line 74
    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    .line 85
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->O:Z

    .line 195
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;-><init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->w:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->F:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Lcom/android/settings/b/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    return-object p0
.end method

.method private a(J)V
    .locals 4

    .line 528
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 530
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleAttemptLockout "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmComplexPasswordFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    .line 533
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;)V

    .line 534
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->c()V

    .line 535
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;-><init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;J)V

    .line 550
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$5;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->A:Landroid/os/CountDownTimer;

    return-void

    .line 552
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleAttemptLockout invalid mills "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    .line 275
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;ZLandroid/content/Intent;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(ZLandroid/content/Intent;II)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 10

    .line 343
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    if-nez v0, :cond_0

    const-string p1, "ConfirmComplexPasswordFragment"

    const-string p2, "startVerifyPasswordForFace mIntent == null"

    .line 344
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    const-string v3, "face_challenge"

    .line 347
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 349
    iget v8, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    .line 350
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v9, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;

    invoke-direct {v9, p0, p2, v8}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;-><init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;Landroid/content/Intent;I)V

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->K:Landroid/os/AsyncTask;

    return-void
.end method

.method private a(ZLandroid/content/Intent;II)V
    .locals 7

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPasswordChecked matched="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " timeoutMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmComplexPasswordFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 432
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->L:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "onPasswordChecked, input is null"

    .line 437
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_6

    .line 440
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->L:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 441
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->L:Ljava/lang/String;

    .line 6019
    sput-object p1, Lcom/coloros/settings/utils/z;->b:Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    .line 443
    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    goto :goto_0

    :cond_2
    const-string p4, ""

    .line 442
    :goto_0
    invoke-static {p1, p3, p4}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 444
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->L:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string p3, "password"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_1

    .line 446
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onPasswordChecked mPin="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->L:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 449
    iget p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 450
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 451
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_4
    const/4 p1, -0x1

    .line 453
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 454
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->Q:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    .line 455
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 456
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.INTENT"

    .line 457
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/IntentSender;

    if-eqz v1, :cond_5

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroidx/fragment/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void

    :cond_6
    if-lez p3, :cond_7

    .line 467
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 469
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->clear()V

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(J)V

    return-void

    .line 472
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    const/4 p1, 0x0

    .line 473
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->P:Ljava/lang/String;

    .line 474
    sget-object p1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;)V

    return-void

    :cond_8
    :goto_2
    const-string p1, "onPasswordChecked, activity is finished"

    .line 433
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(J)V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f120b23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->C:Z

    .line 653
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->B:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 656
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;-><init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;J)V

    .line 687
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->B:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 577
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->O:Z

    if-eqz v0, :cond_0

    return-void

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 582
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 584
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v2, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 585
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 586
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 589
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 590
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->J:Z

    return v0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Landroid/os/AsyncTask;
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->K:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z
    .locals 0

    .line 7338
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    return p0
.end method

.method private f()V
    .locals 7

    .line 298
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    .line 5064
    iget-boolean v0, v0, Lcom/android/settings/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->g()V

    goto :goto_1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    const-string v2, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f120b23

    if-eqz v2, :cond_1

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    .line 305
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/coloros/settings/utils/ag$a;->b:I

    .line 304
    invoke-static {v2, v4, v3, v5}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    .line 309
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/coloros/settings/utils/ag$a;->b:I

    .line 308
    invoke-static {v0, v5, v3, v6}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->C:Z

    return v0
.end method

.method private g()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    .line 5072
    iget-boolean v0, v0, Lcom/android/settings/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->h()V

    .line 322
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->C:Z

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f120cad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f120b23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f120cfc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    return v0
.end method

.method private h()V
    .locals 4

    .line 641
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->a()J

    move-result-wide v0

    .line 642
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "refreshFingerprintState time "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfirmComplexPasswordFragment"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 644
    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->C:Z

    return-void
.end method

.method static synthetic h(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 7557
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    .line 7558
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;)V

    .line 7559
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    .line 8064
    iget-boolean v0, v0, Lcom/android/settings/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 7560
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->J:Z

    if-eqz v0, :cond_0

    const-string v0, "ConfirmComplexPasswordFragment"

    const-string v1, "onCountDownFinish startListening"

    .line 7561
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7562
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {p0}, Lcom/android/settings/b/a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    return p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->C:Z

    return p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->h()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 570
    iget-wide v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 571
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(Z)V

    :cond_0
    return-void
.end method

.method protected final a()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->p:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 261
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->a(I)Z

    move-result v0

    return v0
.end method

.method protected final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .locals 2

    const-string v0, "ConfirmComplexPasswordFragment"

    const-string v1, "handleNext()"

    .line 334
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final d()V
    .locals 12

    const-string v0, "ConfirmComplexPasswordFragment"

    const-string v1, "onEditorCompleted"

    .line 486
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->e:I

    if-ge v2, v3, :cond_1

    return-void

    .line 495
    :cond_1
    iput-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->L:Ljava/lang/String;

    .line 496
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->K:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 497
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    if-nez v2, :cond_3

    const-string v1, "onEditorCompleted mIntent == null"

    .line 500
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v4, "has_challenge"

    .line 503
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 505
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    const-string v5, "has_face_challenge"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onEditorCompleted verifyChallenge="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " verifyFaceChallenge="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    if-nez v2, :cond_5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 6402
    :cond_4
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    .line 6403
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$4;-><init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v2, v1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->K:Landroid/os/AsyncTask;

    return-void

    .line 6338
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    instance-of v6, v6, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-eqz v6, :cond_8

    .line 6369
    iget-object v3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    if-nez v3, :cond_6

    const-string v1, "startVerifyPassword mIntent == null"

    .line 6370
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v2, :cond_7

    const-wide/16 v6, 0x0

    const-string v0, "challenge"

    .line 6374
    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 6375
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    .line 6376
    iget-object v10, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v11, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$3;

    move-object v2, v11

    move-object v3, p0

    move-object v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$3;-><init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;Landroid/content/Intent;ZLjava/lang/String;I)V

    move-object v2, v10

    move-object v3, v1

    move-wide v4, v8

    move v6, v0

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->K:Landroid/os/AsyncTask;

    return-void

    .line 6397
    :cond_7
    invoke-direct {p0, v1, v4}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    .line 519
    :cond_8
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    invoke-direct {p0, v3, v4, v3, v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public final e()V
    .locals 5

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updataUi() mTipStage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmComplexPasswordFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(Z)V

    .line 282
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->f()V

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f120cab

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    if-ne v0, v1, :cond_3

    .line 287
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(Z)V

    .line 288
    iget v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->F:I

    if-lez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f12098d

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->F:I

    .line 290
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 289
    invoke-virtual {p0, v1, v2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 596
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p2, p3, :cond_0

    .line 601
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 5

    .line 617
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onAuthenticationError "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConfirmComplexPasswordFragment"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->M:Z

    if-eqz p2, :cond_0

    .line 619
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onAuthenticationError stopListening"

    .line 620
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    return-void

    .line 624
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {p2}, Lcom/android/settings/b/a;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    .line 626
    invoke-direct {p0, v1, v2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(J)V

    return-void

    .line 627
    :cond_1
    iget-boolean p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->C:Z

    if-nez p2, :cond_2

    const-string p2, "onAuthenticationError stopListening startListening"

    .line 628
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    .line 631
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    if-nez p1, :cond_2

    .line 632
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    .line 633
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->b()V

    :cond_2
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .locals 3

    .line 692
    sget-object v0, Lcom/coloros/settings/utils/ag;->a:[J

    .line 6698
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6711
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->N:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 6712
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "vibrator"

    .line 6714
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->N:Landroid/os/Vibrator;

    .line 6702
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->N:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    .line 6704
    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f120cce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 694
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/b/a;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .line 608
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 610
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 611
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->y:Landroid/content/Context;

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->y:Landroid/content/Context;

    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->Q:Landroid/hardware/biometrics/BiometricManager;

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->setHasOptionsMenu(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->z:Landroid/content/Intent;

    .line 1269
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1270
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->p:I

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 101
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->I:Z

    .line 102
    new-instance p1, Lcom/android/settings/b/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->n:I

    invoke-direct {p1, v0, p0, v2}, Lcom/android/settings/b/a;-><init>(Landroid/content/Context;Lcom/android/settings/b/a$a;I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    .line 103
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->M:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120fa9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    .line 121
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->e:I

    const/16 p2, 0x10

    .line 122
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->f:I

    const/4 p2, 0x1

    .line 123
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->g:I

    const/4 p2, 0x0

    .line 124
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->h:I

    .line 125
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->i:I

    .line 126
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->j:I

    .line 127
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->k:I

    .line 128
    iput p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->l:I

    .line 129
    sget-object p3, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->E:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    .line 130
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->f()V

    const p3, 0x7f0a04a0

    .line 131
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->G:Landroid/widget/TextView;

    .line 132
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->G:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 135
    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/android/settings/m;->c(Landroid/content/Context;I)I

    move-result v0

    .line 136
    invoke-static {p3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p3

    .line 137
    invoke-virtual {p3, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2169
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v1, 0x7f0a03c7

    invoke-virtual {p3, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2172
    invoke-virtual {p3, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 2175
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v1, "device_policy"

    invoke-virtual {p3, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    .line 2177
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 2178
    invoke-virtual {p3, v0}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result p3

    invoke-direct {v1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2177
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0a00c6

    .line 2179
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 2181
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2182
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080a33

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2184
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 2183
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2186
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2187
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 2188
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2189
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->M:Z

    .line 115
    invoke-super {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 212
    invoke-super {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->onPause()V

    .line 213
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    .line 3064
    iget-boolean v0, v0, Lcom/android/settings/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFrontSensor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {v0, v1}, Lcom/android/settings/b/a;->a(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->A:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    const-string v0, "ConfirmComplexPasswordFragment"

    const-string v2, "onPause"

    .line 218
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->A:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->K:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 223
    iput-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->K:Landroid/os/AsyncTask;

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->B:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 227
    iput-object v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->B:Landroid/os/CountDownTimer;

    .line 228
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 229
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->C:Z

    .line 231
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->J:Z

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->c()V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 238
    invoke-super {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->onResume()V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deadline = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLockInput = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmComplexPasswordFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-wide v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 242
    iget-wide v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->o:J

    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(J)V

    goto :goto_0

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->D:Z

    .line 246
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;)V

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->J:Z

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->b()V

    .line 252
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->J:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    .line 4064
    iget-boolean v0, v0, Lcom/android/settings/b/a;->a:Z

    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFrontSensor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->H:Lcom/android/settings/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/b/a;->a(Z)V

    :cond_3
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
