.class public Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;
.super Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;
.source "ChooseComplexPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;
    }
.end annotation


# instance fields
.field private A:Landroid/app/Dialog;

.field private B:Lcolor/support/v7/app/AlertDialog;

.field private C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Landroid/view/MenuItem;

.field private H:F

.field private I:Z

.field private J:[B

.field private K:Lcom/color/support/widget/ColorNumericKeyboard;

.field protected a:Lcom/color/support/widget/ColorEditText;

.field protected b:Landroid/widget/TextView;

.field protected c:Lcom/color/support/widget/ColorEditText;

.field protected d:Landroid/widget/TextView;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Landroid/widget/TextView;

.field protected n:I

.field protected o:J

.field private w:Landroid/animation/AnimatorSet;

.field private x:Ljava/lang/String;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;-><init>()V

    const/4 v0, 0x4

    .line 68
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->e:I

    const/16 v0, 0x10

    .line 69
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f:I

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g:I

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->h:I

    .line 72
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->i:I

    .line 73
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->j:I

    .line 74
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    .line 75
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->l:I

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->w:Landroid/animation/AnimatorSet;

    .line 109
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    const/high16 v0, 0x20000

    .line 111
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)Lcom/color/support/widget/ColorNumericKeyboard;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    return-object p0
.end method

.method private a(Landroid/text/Editable;Z)V
    .locals 5

    .line 665
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 666
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f:I

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 668
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120cb6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f:I

    .line 669
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p2

    if-lez p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    .line 675
    invoke-interface {p1, v0, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 521
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->x:Ljava/lang/String;

    .line 522
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 523
    sget-object p1, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    .line 524
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g()V

    .line 526
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120fa9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 527
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Z)V

    .line 528
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->c:Lcom/color/support/widget/ColorEditText;

    aput-object v3, v2, p1

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->z:Landroid/widget/TextView;

    aput-object v3, v2, v0

    invoke-static {v1, v0, p1, v0, v2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    goto :goto_0

    .line 531
    :cond_0
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->c:Lcom/color/support/widget/ColorEditText;

    aput-object v3, v2, p1

    invoke-static {v1, v0, p1, v0, v2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 534
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    new-array v7, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    aput-object v1, v7, p1

    invoke-static/range {v2 .. v7}, Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->d:Landroid/widget/TextView;

    aput-object v3, v2, p1

    invoke-static {v1, p1, v2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 539
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    aput-object v3, v2, p1

    invoke-static {v1, v0, v0, p1, v2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 541
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    aput-object v3, v2, p1

    invoke-static {v1, v0, v2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 542
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 317
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->f()Z

    move-result p1

    if-nez p1, :cond_0

    .line 320
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .line 798
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getPasswordTypeFormDmp(Landroid/content/Context;)I

    move-result p1

    .line 800
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->e:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)Landroid/app/Dialog;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->A:Landroid/app/Dialog;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .line 432
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iget v2, v2, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 437
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    sget-object v2, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    if-ne v1, v2, :cond_4

    .line 438
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iget v0, v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->c:I

    .line 439
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->r:Z

    if-eqz v1, :cond_2

    .line 440
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f120fbe

    goto :goto_0

    :cond_1
    const v0, 0x7f120b23

    .line 443
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "from_fingerprint_reset"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f120cae

    .line 447
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 448
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/settings/utils/ag$a;->a:I

    .line 447
    invoke-static {v1, v2, v0, v3}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 450
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iget v1, v1, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .line 458
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iget v2, v2, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->e:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 463
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iget v1, v1, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private g()V
    .locals 3

    .line 475
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 476
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->e()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Z)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->G:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 622
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 623
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->G:Landroid/view/MenuItem;

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    return-void
.end method

.method protected a()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->I:Z

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 631
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 632
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f:I

    if-ge v0, v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 634
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->G:Landroid/view/MenuItem;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 638
    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->e:I

    if-ge v0, v4, :cond_1

    .line 639
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 641
    :cond_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 644
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    invoke-direct {p0, p1, v2}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Landroid/text/Editable;Z)V

    return-void

    .line 647
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Landroid/text/Editable;Z)V

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 15

    .line 546
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    sget-object v2, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_21

    .line 1681
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->e:I

    const/4 v6, 0x0

    if-ge v1, v2, :cond_1

    const v1, 0x7f120cb7

    .line 1682
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    :cond_1
    move v1, v5

    move v2, v1

    move v7, v2

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    .line 1692
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_7

    .line 1693
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-lt v12, v13, :cond_6

    const/16 v13, 0x7f

    if-le v12, v13, :cond_2

    goto :goto_3

    :cond_2
    const/16 v13, 0x30

    if-lt v12, v13, :cond_3

    const/16 v13, 0x39

    if-gt v12, v13, :cond_3

    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/16 v13, 0x41

    if-lt v12, v13, :cond_4

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    const/16 v13, 0x61

    if-lt v12, v13, :cond_5

    const/16 v13, 0x7a

    if-gt v12, v13, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    const v1, 0x7f120ca9

    .line 1696
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    :cond_7
    const/high16 v1, 0x20000

    .line 1712
    iget v12, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    const v13, 0x7f100024

    const/high16 v14, 0x30000

    if-eq v1, v12, :cond_8

    if-ne v14, v12, :cond_9

    :cond_8
    if-gtz v2, :cond_17

    if-lez v7, :cond_9

    goto/16 :goto_6

    .line 1724
    :cond_9
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    if-ne v14, v1, :cond_a

    .line 1725
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f:I

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/z;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1726
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120adf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    :cond_a
    const/high16 v12, 0x60000

    if-ne v12, v1, :cond_10

    .line 1729
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g:I

    if-ge v2, v1, :cond_b

    .line 1731
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100021

    iget v6, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g:I

    .line 1733
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1730
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    .line 1734
    :cond_b
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    if-ge v8, v1, :cond_c

    .line 1736
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    invoke-virtual {v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    .line 1738
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1735
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    .line 1739
    :cond_c
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->i:I

    if-ge v11, v1, :cond_d

    .line 1741
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100022

    iget v6, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->i:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->i:I

    .line 1743
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1740
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    .line 1744
    :cond_d
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->h:I

    if-ge v10, v1, :cond_e

    .line 1746
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100026

    iget v6, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->h:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->h:I

    .line 1748
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1745
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    .line 1749
    :cond_e
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->j:I

    if-ge v7, v1, :cond_f

    .line 1751
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100025

    iget v6, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->j:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->j:I

    .line 1753
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1750
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    .line 1754
    :cond_f
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->l:I

    if-ge v9, v1, :cond_15

    .line 1756
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100023

    iget v6, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->l:I

    invoke-virtual {v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->l:I

    .line 1758
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1755
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    :cond_10
    const/high16 v7, 0x40000

    if-ne v7, v1, :cond_11

    move v1, v4

    goto :goto_4

    :cond_11
    move v1, v5

    :goto_4
    const/high16 v7, 0x50000

    .line 1762
    iget v9, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    if-ne v7, v9, :cond_12

    goto :goto_5

    :cond_12
    move v4, v5

    :goto_5
    if-nez v1, :cond_13

    if-eqz v4, :cond_14

    :cond_13
    if-nez v2, :cond_14

    const v1, 0x7f120cb2

    .line 1764
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_14
    if-eqz v4, :cond_15

    if-nez v8, :cond_15

    const v1, 0x7f120cb3

    .line 1767
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 1770
    :cond_15
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1777
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->J:[B

    if-nez v4, :cond_16

    .line 1778
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->u:[B

    iget v8, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor([BI)[B

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->J:[B

    .line 1781
    :cond_16
    iget-object v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->J:[B

    .line 1770
    iget v7, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    invoke-virtual {v1, v2, v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory([B[BI)Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, 0x7f120cb1

    .line 1771
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 1715
    :cond_17
    :goto_6
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_18

    .line 1717
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    if-ge v8, v1, :cond_19

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    invoke-virtual {v1, v13, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    .line 1719
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1717
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_18
    const v1, 0x7f120cba

    .line 1723
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_19
    :goto_7
    if-eqz v6, :cond_1a

    .line 555
    iput-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->x:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 559
    :cond_1a
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/z;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 560
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 561
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f120c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 562
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 563
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1b
    const/16 v1, 0x8

    .line 565
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/z;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 566
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 570
    invoke-static {}, Lcom/coloros/b/b;->a()Landroid/content/pm/OppoPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v5

    :cond_1c
    if-eqz v5, :cond_1d

    .line 574
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Ljava/lang/String;)V

    return-void

    .line 2488
    :cond_1d
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 2489
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_8

    .line 2492
    :cond_1e
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120ffc

    .line 2493
    invoke-virtual {v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$5;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$5;-><init>(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)V

    .line 2494
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120ffd

    new-instance v3, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$4;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$4;-><init>(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)V

    .line 2501
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120ffe

    new-instance v3, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$3;-><init>(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;Ljava/lang/String;)V

    .line 2508
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2514
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->B:Lcolor/support/v7/app/AlertDialog;

    .line 2515
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->B:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 2516
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->B:Lcolor/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    :cond_1f
    :goto_8
    return-void

    .line 579
    :cond_20
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Ljava/lang/String;)V

    return-void

    .line 581
    :cond_21
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    sget-object v2, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    if-ne v1, v2, :cond_25

    .line 582
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3019
    sput-object v0, Lcom/coloros/settings/utils/z;->b:Ljava/lang/String;

    .line 585
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Ljava/lang/String;I)V

    .line 586
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;I)V

    .line 587
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_22

    .line 589
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_22
    return-void

    .line 592
    :cond_23
    iput-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->x:Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 594
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->C:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    .line 595
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Z)V

    .line 596
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g()V

    .line 598
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120fab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Ljava/lang/String;Z)V

    .line 599
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    const v1, 0x7f120faa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 600
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->d:Landroid/widget/TextView;

    aput-object v2, v1, v5

    invoke-static {v0, v5, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 603
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->c:Lcom/color/support/widget/ColorEditText;

    aput-object v2, v1, v5

    invoke-static {v0, v5, v5, v4, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 605
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_24

    .line 606
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Z)V

    .line 607
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-static {v0, v5, v4, v5, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 609
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    aput-object v2, v1, v5

    invoke-static {v0, v4, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void

    .line 611
    :cond_24
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-static {v0, v5, v4, v5, v2}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 613
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    aput-object v2, v1, v5

    invoke-static {v0, v4, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    :cond_25
    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 347
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 352
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 155
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "lockscreen.use_numeric_keyboard"

    .line 159
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->I:Z

    .line 160
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    const-string v2, "lockscreen.request_password_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    :try_start_0
    const-string v1, "lockscreen.password_min"

    .line 162
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->e:I

    .line 163
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 164
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    .line 162
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->e:I

    const-string v1, "lockscreen.password_max"

    .line 165
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->f:I

    const-string v1, "lockscreen.password_min_letters"

    .line 167
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 169
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    .line 167
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g:I

    const-string v1, "lockscreen.password_min_uppercase"

    .line 170
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->h:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 172
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    .line 170
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->h:I

    const-string v1, "lockscreen.password_min_lowercase"

    .line 173
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 175
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    .line 173
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->i:I

    const-string v1, "lockscreen.password_min_numeric"

    .line 176
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 178
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    .line 176
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->k:I

    const-string v1, "lockscreen.password_min_symbols"

    .line 179
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 181
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    .line 179
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->j:I

    const-string v1, "lockscreen.password_min_nonletter"

    .line 182
    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->l:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 184
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "OppoChooseLockPassword"

    const-string v2, "onCreate getRequestedMinimumPasswordLength exception !"

    .line 186
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    const-string v2, "change_title_for_fingerprint"

    .line 188
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->r:Z

    const-string v2, "change_title_for_face"

    .line 190
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->s:Z

    const-string v1, "change_head_type"

    .line 192
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->E:I

    const-string v1, "start_type"

    .line 194
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->F:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->D:I

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->v:I

    iget-object v5, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->u:[B

    iget-boolean v6, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->r:Z

    iget v7, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->E:I

    iget-object v8, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->F:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->s:Z

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;II[BZILjava/lang/String;ZLcom/coloros/settings/feature/password/c;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->A:Landroid/app/Dialog;

    .line 198
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    .line 199
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 200
    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->p:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->n:I

    .line 201
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 207
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0e000d

    .line 208
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0490

    .line 209
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 210
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "change_head_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f1214ed

    .line 213
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    const p2, 0x7f0a0492

    .line 215
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->G:Landroid/view/MenuItem;

    .line 216
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->G:Landroid/view/MenuItem;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 244
    invoke-static {p2}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->H:F

    const p3, 0x7f0d021f

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0a02eb

    .line 1252
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b:Landroid/widget/TextView;

    const p3, 0x7f0a02ec

    .line 1253
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->d:Landroid/widget/TextView;

    .line 1254
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->g()V

    const p3, 0x7f0a04ba

    .line 1255
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    const p3, 0x7f0a0362

    .line 1256
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 1257
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a()Z

    move-result p3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1258
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p3, v1}, Lcom/color/support/widget/ColorNumericKeyboard;->setVisibility(I)V

    .line 1259
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 1260
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v2, p3, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {p3, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 1261
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p3, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 1262
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v2, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$1;-><init>(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)V

    invoke-virtual {p3, v2}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    .line 1279
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorNumericKeyboard;->requestFocus()Z

    goto :goto_0

    .line 1281
    :cond_0
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->K:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setVisibility(I)V

    :goto_0
    const p3, 0x7f0a04bb

    .line 1283
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/color/support/widget/ColorEditText;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->c:Lcom/color/support/widget/ColorEditText;

    .line 1284
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p3, p0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1285
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p3, p0}, Lcom/color/support/widget/ColorEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p3, 0x7f0a04a0

    .line 1286
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    const p3, 0x7f0a02f2

    .line 1287
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    const p3, 0x7f0a02f3

    .line 1288
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->z:Landroid/widget/TextView;

    .line 1289
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->m:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1290
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1291
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1292
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    :cond_1
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    new-instance v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;-><init>(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a05d7

    .line 1308
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 1309
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->f()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1311
    iget-object p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->y:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :cond_3
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 362
    invoke-super {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onDestroy()V

    .line 1367
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->A:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->A:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->B:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->B:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
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

    .line 657
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->c()V

    .line 658
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->d()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 221
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0a0490

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v0, 0x7f0a0492

    if-eq v1, v0, :cond_0

    .line 237
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->c()V

    .line 234
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->d()V

    return v3

    .line 227
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 229
    invoke-static {v0}, Lcom/coloros/settings/utils/ag;->c(Landroid/app/Activity;)V

    return v3
.end method

.method public onResume()V
    .locals 4

    .line 333
    invoke-super {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onResume()V

    .line 334
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->q:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->n:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->o:J

    .line 335
    iget-wide v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 342
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
