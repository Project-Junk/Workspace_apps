.class public Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "ColorChooseLockPatternFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;,
        Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;,
        Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "com.coloros.settings.feature.password.ColorChooseLockPatternFragment"


# instance fields
.field private A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

.field private B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

.field private C:Ljava/lang/Runnable;

.field protected a:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:J

.field private n:J

.field private o:[B

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/color/support/widget/ColorLockPatternView;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/color/support/widget/ColorLockPatternView;

.field private y:Landroid/app/Dialog;

.field private z:Lcom/android/settings/password/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->s:Ljava/util/List;

    .line 146
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$1;-><init>(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    .line 319
    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    .line 321
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$2;-><init>(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->C:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->C:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 681
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 682
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/color/support/widget/ColorLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;Ljava/util/List;)Z
    .locals 3

    .line 3756
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 3757
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 4023
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4024
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    .line 4026
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 4027
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result p0

    .line 4029
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isPatternRepeated mode="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isLockPatternEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 4037
    sget-object p0, Lcom/coloros/settings/utils/z;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->s:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->s:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2686
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    if-eqz v1, :cond_0

    .line 2687
    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b:Ljava/lang/String;

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2693
    :cond_0
    new-instance v1, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    invoke-direct {v1}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;-><init>()V

    iput-object v1, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    .line 2694
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 2696
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    const-string v3, "save_and_finish_worker"

    .line 2697
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 2698
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 2699
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 2700
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2702
    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->b:Ljava/lang/String;

    const-string v1, "startSaveAndFinish activity is null"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2705
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "extra_require_password"

    .line 2706
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2709
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "from_fingerprint_reset"

    .line 2710
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "from_email_reset"

    .line 2712
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2714
    iget-object v5, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    .line 3047
    iput-boolean v3, v5, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->j:Z

    .line 3051
    iput-boolean v1, v5, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->k:Z

    .line 2716
    iget-object v1, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->z:Lcom/android/settings/password/b;

    invoke-virtual {v1}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-boolean v8, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->f:Z

    iget-wide v9, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->m:J

    iget-boolean v11, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->g:Z

    iget-wide v12, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->n:J

    iget-object v14, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->s:Ljava/util/List;

    iget-object v15, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->o:[B

    iget v0, v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->k:I

    move/from16 v16, v0

    invoke-virtual/range {v5 .. v16}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJZJLjava/util/List;[BI)V

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Z
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->e:Z

    return v0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->l:F

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Lcom/color/support/widget/ColorLockPatternView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->x:Lcom/color/support/widget/ColorLockPatternView;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->q:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V
    .locals 8

    .line 601
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    .line 602
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    .line 607
    iget v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->i:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    .line 608
    :goto_0
    sget-object v5, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-eq p1, v5, :cond_2

    sget-object v5, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-ne p1, v5, :cond_1

    goto :goto_1

    .line 623
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->q:Landroid/widget/TextView;

    iget v5, p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->e:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 624
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->v:Landroid/widget/TextView;

    iget v5, p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->e:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 609
    :cond_2
    :goto_1
    iget v5, p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->e:I

    .line 610
    iget-boolean v6, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c:Z

    if-eqz v6, :cond_4

    if-eqz v1, :cond_3

    const v1, 0x7f120fbe

    goto :goto_2

    :cond_3
    const v1, 0x7f120865

    :goto_2
    move v5, v1

    .line 613
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "from_fingerprint_reset"

    .line 614
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const v5, 0x7f120cd9

    .line 618
    :cond_5
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->q:Landroid/widget/TextView;

    .line 619
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    sget v7, Lcom/coloros/settings/utils/ag$a;->c:I

    invoke-static {v6, v5, v7}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;II)I

    move-result v5

    .line 618
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 626
    :goto_3
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->f:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/4 v5, 0x4

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    if-ne p1, v1, :cond_6

    goto :goto_4

    .line 630
    :cond_6
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 628
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    :goto_5
    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/16 v6, 0x8

    if-ne p1, v1, :cond_8

    .line 635
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 637
    :cond_8
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 638
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 640
    :cond_9
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    :goto_6
    iget-boolean v1, p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->j:Z

    if-eqz v1, :cond_a

    .line 646
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorLockPatternView;->enableInput()V

    goto :goto_7

    .line 648
    :cond_a
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorLockPatternView;->disableInput()V

    .line 651
    :goto_7
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    sget-object v6, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Correct:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v1, v6}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 653
    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$3;->a:[I

    iget-object v6, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {v6}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v2, :cond_d

    if-eq v1, v3, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    if-eq v1, v5, :cond_b

    goto :goto_8

    .line 668
    :cond_b
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    .line 669
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->v:Landroid/widget/TextView;

    const v2, 0x7f120cde

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 664
    :cond_c
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    sget-object v2, Lcom/color/support/widget/ColorLockPatternView$DisplayMode;->Wrong:Lcom/color/support/widget/ColorLockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorLockPatternView;->setDisplayMode(Lcom/color/support/widget/ColorLockPatternView$DisplayMode;)V

    .line 665
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a()V

    goto :goto_8

    .line 655
    :cond_d
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->e:Z

    if-eqz v1, :cond_e

    .line 656
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a()V

    .line 657
    iput-boolean v4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->e:Z

    goto :goto_8

    .line 659
    :cond_e
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorLockPatternView;->clearPattern()V

    :goto_8
    if-eq v0, p1, :cond_f

    .line 674
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method public final a(ZLandroid/content/Intent;)V
    .locals 3

    .line 723
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    .line 724
    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string p2, "psw_pattern"

    const-string v2, "screen_lock"

    .line 1273
    invoke-static {v0, v2, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    new-instance p2, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.SET_UNLOCK_PASSWORD"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 1747
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "setOn"

    .line 1748
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1749
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1751
    invoke-virtual {v1, p2}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    if-nez p1, :cond_1

    .line 729
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2539
    iget p2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->k:I

    invoke-static {p1, p2}, Lcom/android/settings/notification/RedactionInterstitial;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 732
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 737
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c:Z

    if-eqz p1, :cond_2

    .line 738
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->d(Landroid/app/Activity;)V

    return-void

    .line 740
    :cond_2
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "password"

    .line 123
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->o:[B

    .line 127
    :goto_0
    sget-object p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->y:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->y:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 330
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 331
    new-instance v0, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->z:Lcom/android/settings/password/b;

    .line 332
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ChooseLockPattern;

    if-eqz v0, :cond_4

    .line 335
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->k:I

    const/4 v1, 0x0

    const-string v2, "for_cred_req_boot"

    .line 339
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 341
    new-instance v4, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    invoke-direct {v4}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;-><init>()V

    .line 342
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "extra_require_password"

    .line 343
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v2, "password"

    .line 346
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    .line 1169
    iput-boolean v3, v4, Lcom/android/settings/password/SaveChosenLockWorkerBase;->h:Z

    .line 348
    invoke-virtual {v4, p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 349
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->z:Lcom/android/settings/password/b;

    invoke-virtual {v2}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    .line 350
    invoke-static {v8}, Lcom/coloros/settings/utils/ag;->a([B)Ljava/util/List;

    move-result-object v7

    iget v9, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->k:I

    .line 349
    invoke-virtual/range {v4 .. v9}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZLjava/util/List;[BI)V

    :cond_0
    const-string v2, "android.app.extra.PASSWORD_COMPLEXITY"

    .line 353
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->j:I

    const-string v2, "change_title_for_fingerprint"

    .line 355
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c:Z

    const-string v2, "change_title_for_face"

    .line 357
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->d:Z

    const-string v2, "change_head_type"

    .line 358
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->i:I

    const-string v2, "start_type"

    .line 360
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->p:Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x10000

    iget v6, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->j:I

    iget-object v7, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->o:[B

    iget-boolean v8, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->c:Z

    iget v9, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->i:I

    iget-object v10, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->p:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->d:Z

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;II[BZILjava/lang/String;ZLcom/coloros/settings/feature/password/c;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->y:Landroid/app/Dialog;

    .line 365
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->h:Z

    if-eqz p1, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v2, -0x1

    const-string v3, "key_ui_mode"

    .line 372
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 374
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void

    .line 333
    :cond_4
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Fragment contained in wrong activity"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 401
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 402
    invoke-static {p3}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->l:F

    const v0, 0x7f0d01e4

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 404
    invoke-static {p3, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 406
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050063

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a020e

    .line 407
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 409
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 532
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDestroy()V

    .line 533
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->y:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 518
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 519
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 522
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 499
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 500
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    .line 502
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 513
    :cond_1
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 576
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 578
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->B:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->ordinal()I

    move-result v0

    const-string v1, "uiStage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 581
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->a(Ljava/util/List;)[B

    move-result-object v0

    const-string v1, "chosenPattern"

    .line 580
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->o:[B

    if-eqz v0, :cond_1

    const-string v1, "currentPattern"

    .line 585
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 589
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 417
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a02eb

    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->q:Landroid/widget/TextView;

    const v0, 0x7f0a079e

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->h:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 423
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a02e9

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->t:Landroid/widget/TextView;

    const v0, 0x7f0a03bc

    .line 429
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLockPatternView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    .line 430
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a:Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setOnPatternListener(Lcom/color/support/widget/ColorLockPatternView$OnPatternListener;)V

    .line 431
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->z:Lcom/android/settings/password/b;

    .line 432
    invoke-virtual {v1}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    .line 431
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorLockPatternView;->setLockPassword(Z)V

    const v0, 0x7f0a04a0

    .line 435
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    .line 436
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->u:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a02ec

    .line 441
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->v:Landroid/widget/TextView;

    const v0, 0x7f0a02ea

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->w:Landroid/widget/TextView;

    const v0, 0x7f0a03bd

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLockPatternView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->x:Lcom/color/support/widget/ColorLockPatternView;

    const v0, 0x7f0a070e

    .line 450
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 451
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->r:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 453
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "confirm_credentials"

    .line 454
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 456
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "password"

    .line 457
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->o:[B

    const-string v3, "has_challenge"

    .line 458
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->f:Z

    const-wide/16 v3, 0x0

    const-string v5, "challenge"

    .line 460
    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->m:J

    const-string v5, "has_face_challenge"

    .line 461
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->g:Z

    const-string v2, "face_challenge"

    .line 463
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->n:J

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    .line 469
    sget-object p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    .line 470
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->z:Lcom/android/settings/password/b;

    const/16 p2, 0x37

    const v0, 0x7f12177e

    .line 472
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->k:I

    .line 470
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 474
    sget-object p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    :cond_2
    return-void

    .line 477
    :cond_3
    sget-object p1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    return-void

    :cond_4
    const-string p1, "chosenPattern"

    .line 481
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 483
    invoke-static {p1}, Lcom/coloros/settings/utils/ag;->a([B)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->s:Ljava/util/List;

    .line 486
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->o:[B

    if-nez p1, :cond_6

    const-string p1, "currentPattern"

    .line 487
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->o:[B

    .line 489
    :cond_6
    invoke-static {}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->values()[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    move-result-object p1

    const-string v0, "uiStage"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->a(Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;)V

    .line 492
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "save_and_finish_worker"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;->A:Lcom/coloros/settings/feature/password/SaveLockPatternAndFinishWorker;

    return-void
.end method

.method public supportFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
