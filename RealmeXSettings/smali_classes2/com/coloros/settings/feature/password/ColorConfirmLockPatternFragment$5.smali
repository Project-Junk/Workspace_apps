.class final Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;
.super Ljava/lang/Object;
.source "ColorConfirmLockPatternFragment.java"

# interfaces
.implements Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a(Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/content/Intent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 521
    invoke-static {}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "startVerifyPatternForFace activity == null return"

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->n(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v1

    .line 525
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->o(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v8

    .line 526
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "face_challenge"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 528
    new-instance v9, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;

    invoke-direct {v9, p0, p2, p1, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$1;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;Landroid/content/Intent;Ljava/util/List;I)V

    .line 550
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    if-ne v1, v8, :cond_1

    .line 552
    invoke-static {p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->q(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v3

    .line 553
    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->b(Ljava/util/List;)[B

    move-result-object v4

    move-wide v5, v6

    move v7, v8

    move-object v8, v9

    .line 551
    invoke-static/range {v3 .. v8}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->verifyPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p1

    goto :goto_0

    .line 557
    :cond_1
    invoke-static {p2}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->r(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v3

    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->a(Ljava/util/List;)[B

    move-result-object v4

    const/4 v5, 0x1

    .line 556
    invoke-static/range {v3 .. v9}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->verifyTiedProfileChallenge(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BZJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 550
    :goto_0
    invoke-static {p2, p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    return v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;)Z
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onPatternCleared()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 474
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->i(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->j(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 479
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 480
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    sget-object v1, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 481
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->k(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)V

    .line 482
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    sget v1, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;I)V

    return-void

    .line 487
    :cond_1
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorLockPatternView;->setEnabled(Z)V

    .line 489
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 491
    iget-object v3, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "has_face_challenge"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 493
    invoke-static/range {p1 .. p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    invoke-static {}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPatternDetected patternToString is null"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 498
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    if-nez v0, :cond_5

    if-eqz v3, :cond_3

    goto :goto_0

    .line 1613
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 1615
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->x(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/content/Intent;I)V

    return-void

    .line 1619
    :cond_4
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->y(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v0

    .line 1620
    iget-object v1, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    .line 1621
    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->z(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v2

    .line 1622
    invoke-static/range {p1 .. p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->d(Ljava/util/List;)[B

    move-result-object v3

    new-instance v5, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;

    invoke-direct {v5, v6, v4, v7, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$3;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;Landroid/content/Intent;Ljava/util/List;I)V

    .line 1620
    invoke-static {v2, v3, v0, v5}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->checkPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BILcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    .line 500
    :cond_5
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    .line 1565
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->s(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v8

    .line 1566
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->t(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v14

    .line 1567
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v5, "challenge"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1569
    new-instance v15, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v4, p1

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5$2;-><init>(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;Landroid/content/Intent;ZLjava/util/List;I)V

    .line 1596
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    if-ne v8, v14, :cond_6

    .line 1598
    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->v(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v9

    .line 1599
    invoke-static/range {p1 .. p1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->c(Ljava/util/List;)[B

    move-result-object v10

    move-wide v11, v12

    move v13, v14

    move-object v14, v15

    .line 1597
    invoke-static/range {v9 .. v14}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->verifyPattern(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;

    move-result-object v1

    goto :goto_1

    .line 1603
    :cond_6
    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->w(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lcom/coloros/settings/utils/ag;->a(Ljava/util/List;)[B

    move-result-object v10

    const/4 v11, 0x1

    .line 1602
    invoke-static/range {v9 .. v15}, Lcom/color/compat/internal/widget/LockPatternCheckerNative;->verifyTiedProfileChallenge(Lcom/color/compat/internal/widget/LockPatternUtilsNative;[BZJILcom/color/compat/internal/widget/LockPatternCheckerNative$OnVerifyCallbackNative;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 1596
    :goto_1
    invoke-static {v0, v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    .line 1606
    :cond_7
    invoke-direct {v6, v7, v4}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a(Ljava/util/List;Landroid/content/Intent;)V

    return-void

    .line 509
    :cond_8
    iget-object v0, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->m(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;

    move-result-object v0

    iget-object v1, v6, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->l(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)I

    move-result v1

    invoke-virtual {v0, v2, v4, v2, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->a(ZLandroid/content/Intent;II)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final onPatternStart()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment$5;->a:Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;->h(Lcom/coloros/settings/feature/password/ColorConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
