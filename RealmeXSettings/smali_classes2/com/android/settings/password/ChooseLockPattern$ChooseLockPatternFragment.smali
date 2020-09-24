.class public Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Lcom/android/internal/widget/LockPatternView;

.field protected e:Landroid/widget/TextView;

.field protected f:Lcom/google/android/setupcompat/template/FooterButton;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected i:I

.field protected j:Z

.field protected k:Z

.field private l:[B

.field private m:Z

.field private n:J

.field private o:Lcom/google/android/setupcompat/template/FooterButton;

.field private p:Landroid/content/res/ColorStateList;

.field private q:Landroid/widget/ScrollView;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

.field private t:Ljava/lang/Runnable;

.field private w:Lcom/android/settings/password/b;

.field private x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 244
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    const/4 v0, 0x4

    .line 278
    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    const/4 v1, 0x0

    .line 280
    invoke-static {v1, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 281
    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    .line 282
    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 283
    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 279
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->r:Ljava/util/List;

    .line 317
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 495
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    .line 497
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->t:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 861
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 862
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->o:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->p:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->o:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->q:Landroid/widget/ScrollView;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 672
    iget v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->i:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .line 4676
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->k:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4677
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    .line 4678
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 4679
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    return-void

    .line 4681
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "left footer button pressed, but stage of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t make sense"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V
    .locals 8

    .line 754
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    .line 756
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    .line 760
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->h:I

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x4

    .line 764
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 762
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 761
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    iget v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->h:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 768
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->j:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->k:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    .line 769
    iget v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->i:I

    goto :goto_3

    :cond_3
    iget v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->j:I

    :goto_3
    const/4 v5, -0x1

    const-string v6, ""

    if-ne v4, v5, :cond_4

    .line 771
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 773
    :cond_4
    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 775
    :goto_4
    iget v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->m:I

    if-ne v4, v5, :cond_5

    .line 776
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 778
    :cond_5
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->e:Landroid/widget/TextView;

    iget v5, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->m:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 781
    :goto_5
    sget-object v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->f:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-eq p1, v4, :cond_8

    sget-object v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne p1, v4, :cond_6

    goto :goto_6

    .line 788
    :cond_6
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->p:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_7

    .line 789
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 792
    :cond_7
    sget-object v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->e:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne p1, v4, :cond_9

    if-eqz v1, :cond_9

    .line 793
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a:Landroid/widget/TextView;

    const v4, 0x7f120ca8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 782
    :cond_8
    :goto_6
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f04012d

    .line 784
    invoke-virtual {v4, v5, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 785
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5849
    :cond_9
    :goto_7
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->k:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    sget-object v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    if-ne v1, v4, :cond_a

    .line 5850
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    goto :goto_8

    .line 5852
    :cond_a
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    .line 5853
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->k:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    iget v5, v5, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->d:I

    invoke-virtual {v1, v4, v5}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    .line 5854
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->k:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    iget-boolean v4, v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->e:Z

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    .line 800
    :goto_8
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->l:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;->f:I

    .line 6310
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->o:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    .line 801
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->l:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    iget-boolean v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;->g:Z

    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Z)V

    .line 804
    iget-boolean v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->n:Z

    if-eqz v1, :cond_b

    .line 805
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_9

    .line 807
    :cond_b
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 812
    :goto_9
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 815
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$1;->a:[I

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {v4}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_a

    .line 833
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 834
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a()V

    goto :goto_b

    .line 830
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_a

    .line 823
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 824
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a()V

    goto :goto_b

    .line 820
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->r:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_a

    .line 817
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :goto_a
    :pswitch_5
    move v3, v2

    :goto_b
    if-ne v0, p1, :cond_c

    if-eqz v3, :cond_d

    .line 844
    :cond_c
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ZLandroid/content/Intent;)V
    .locals 2

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 890
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->l:[B

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 891
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    if-nez p1, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 897
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 900
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 11

    .line 4687
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->l:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    const-string v1, " when button is "

    const-string v2, "expected ui stage "

    if-ne p1, v0, :cond_1

    .line 4688
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->d:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne p1, v0, :cond_0

    .line 4693
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->e:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    return-void

    .line 4689
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->d:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4694
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->l:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    if-ne p1, v0, :cond_4

    .line 4695
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->g:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne p1, v0, :cond_3

    .line 4866
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz p1, :cond_2

    const-string p1, "ChooseLockPattern"

    const-string v0, "startSaveAndFinish with an existing SaveAndFinishWorker."

    .line 4867
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 4871
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Z)V

    .line 4873
    new-instance p1, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {p1}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    .line 4874
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {p1, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 4876
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    const-string v1, "save_and_finish_worker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 4877
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 4878
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 4880
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "extra_require_password"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 4882
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->w:Lcom/android/settings/password/b;

    invoke-virtual {p1}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->m:Z

    iget-wide v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->n:J

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->l:[B

    iget v10, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->i:I

    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;[BI)V

    return-void

    .line 4696
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->g:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4700
    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->l:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;->e:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$b;

    if-ne p1, v0, :cond_6

    .line 4701
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->b:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne p1, v0, :cond_5

    .line 4705
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 4706
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 4707
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    goto :goto_0

    .line 4702
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Help screen is only mode with ok button, but stage is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 289
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "password"

    .line 296
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->l:[B

    .line 300
    :goto_0
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 515
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 516
    new-instance p1, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->w:Lcom/android/settings/password/b;

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/password/ChooseLockPattern;

    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->i:I

    const/4 v0, 0x0

    const-string v1, "for_cred_req_boot"

    .line 524
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    new-instance v2, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v2}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "extra_require_password"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "password"

    .line 529
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    .line 1169
    iput-boolean v3, v2, Lcom/android/settings/password/SaveChosenLockWorkerBase;->h:Z

    .line 532
    invoke-virtual {v2, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    .line 533
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->w:Lcom/android/settings/password/b;

    invoke-virtual {v1}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 534
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v8

    iget v10, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->i:I

    .line 533
    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;[BI)V

    :cond_0
    const-string v1, "for_fingerprint"

    .line 536
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->j:Z

    const-string v1, "for_face"

    .line 538
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->k:Z

    return-void

    .line 518
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Fragment contained in wrong activity"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d0063

    .line 545
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050014

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a067c

    .line 549
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 v0, 0x8

    .line 551
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 554
    :cond_0
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->j:Z

    if-eqz p2, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0806e7

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->k:Z

    if-eqz p2, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0806dd

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 561
    :cond_2
    :goto_0
    const-class p2, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/a;

    .line 562
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120cf6

    .line 564
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$8WgD6KpjGxzScjLldpFd4RryetM;

    invoke-direct {v1, p0}, Lcom/android/settings/password/-$$Lambda$8WgD6KpjGxzScjLldpFd4RryetM;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 1347
    iput-object v1, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    .line 1353
    iput p3, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const p3, 0x7f13027f

    .line 1359
    iput p3, v0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 568
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    .line 562
    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 570
    new-instance p3, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120cf7

    .line 572
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object p3

    new-instance v0, Lcom/android/settings/password/-$$Lambda$5vhvGZbBdYu7gX2Rvmc-TBjnI_0;

    invoke-direct {v0, p0}, Lcom/android/settings/password/-$$Lambda$5vhvGZbBdYu7gX2Rvmc-TBjnI_0;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 2347
    iput-object v0, p3, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v0, 0x5

    .line 2353
    iput v0, p3, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v0, 0x7f13027e

    .line 2359
    iput v0, p3, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 576
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    .line 570
    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 3350
    iget-object p3, p2, Lcom/google/android/setupcompat/template/a;->c:Lcom/google/android/setupcompat/template/FooterButton;

    .line 578
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    .line 4273
    iget-object p2, p2, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    .line 579
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->o:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 665
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 666
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 667
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 654
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 655
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    .line 657
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 658
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->a(Lcom/android/settings/password/SaveChosenLockWorkerBase$a;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 734
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->s:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->ordinal()I

    move-result v0

    const-string v1, "uiStage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 739
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v0

    const-string v1, "chosenPattern"

    .line 738
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->l:[B

    if-eqz v0, :cond_1

    const-string v1, "currentPattern"

    .line 743
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 586
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a066e

    .line 587
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a:Landroid/widget/TextView;

    const v0, 0x7f0a02eb

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    .line 589
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->p:Landroid/content/res/ColorStateList;

    const v0, 0x7f0a067a

    .line 590
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f0a03bc

    .line 591
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    .line 592
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->h:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->w:Lcom/android/settings/password/b;

    .line 594
    invoke-virtual {v1}, Lcom/android/settings/password/b;->a()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    .line 593
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    const v0, 0x7f0a02ba

    .line 597
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f0a05b6

    .line 599
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->q:Landroid/widget/ScrollView;

    const v0, 0x7f0a070e

    .line 605
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 607
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->d:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "confirm_credentials"

    .line 610
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "password"

    .line 613
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->l:[B

    const-string v3, "has_challenge"

    .line 614
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->m:Z

    const-string v1, "challenge"

    const-wide/16 v3, 0x0

    .line 616
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->n:J

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 622
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->e:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    .line 623
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->w:Lcom/android/settings/password/b;

    const/16 p2, 0x37

    const v1, 0x7f12177e

    .line 626
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->i:I

    .line 624
    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_0

    .line 629
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    :cond_0
    return-void

    .line 632
    :cond_1
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    return-void

    :cond_2
    const-string p1, "chosenPattern"

    .line 636
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 638
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->g:Ljava/util/List;

    .line 641
    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->l:[B

    if-nez p1, :cond_4

    const-string p1, "currentPattern"

    .line 642
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->l:[B

    .line 644
    :cond_4
    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    move-result-object p1

    const-string v0, "uiStage"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "save_and_finish_worker"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->x:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    return-void
.end method
