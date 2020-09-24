.class public Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;
.super Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;
.source "ChooseSimplePinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$b;,
        Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:F

.field private D:I

.field private E:Lcom/color/support/widget/ColorNumericKeyboard;

.field private F:Z

.field a:Landroid/widget/TextView;

.field b:Lcom/color/support/widget/ColorSimpleLock;

.field c:I

.field d:[Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field private final g:Landroid/os/Handler;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/color/support/widget/ColorSimpleLock;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcom/android/internal/widget/LockPatternUtils;

.field private o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

.field private w:Z

.field private x:Landroid/widget/TextView;

.field private y:Landroid/app/Dialog;

.field private z:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$b;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$b;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    .line 62
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->m:I

    .line 64
    sget-object v1, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    .line 65
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->w:Z

    const/high16 v0, 0x20000

    .line 73
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->D:I

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    iget v0, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 263
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    sget-object v1, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    if-ne v0, v1, :cond_3

    .line 264
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    iget p1, p1, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->c:I

    .line 265
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->r:Z

    if-eqz v0, :cond_1

    .line 266
    iget p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->A:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f120fbe

    goto :goto_0

    :cond_0
    const p1, 0x7f120b23

    .line 269
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "from_fingerprint_reset"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f120cae

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/settings/utils/ag$a;->a:I

    .line 273
    invoke-static {v0, v1, p1, v2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 276
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    iget v0, v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(II)V
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 435
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->C:F

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->j:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v2, v1, p2

    invoke-static {p1, p2, p2, v0, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 438
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->i:Landroid/widget/TextView;

    aput-object v2, v1, p2

    invoke-static {p1, p2, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 439
    iget p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->C:F

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v2, v1, p2

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p1, p2, v0, p2, v1}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 441
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->h:Landroid/widget/TextView;

    aput-object v2, v1, p2

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;)V
    .locals 10

    .line 305
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    .line 306
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Z)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Z)V

    .line 312
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b()V

    .line 314
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    if-ne p1, v0, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->i:Landroid/widget/TextView;

    aput-object v3, v0, v1

    invoke-static {p1, v1, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 316
    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->C:F

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    new-array v9, v2, [Landroid/view/View;

    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    aput-object p1, v9, v1

    invoke-static/range {v4 .. v9}, Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V

    .line 318
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    iget p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->C:F

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->j:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->k:Landroid/widget/TextView;

    aput-object v3, v0, v2

    invoke-static {p1, v2, v1, v2, v0}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    goto :goto_1

    .line 322
    :cond_1
    iget p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->C:F

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->j:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v3, v0, v1

    invoke-static {p1, v2, v1, v2, v0}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    .line 325
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->h:Landroid/widget/TextView;

    aput-object v3, v0, v1

    invoke-static {p1, v2, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 326
    iget p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->C:F

    new-array v0, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    aput-object v3, v0, v1

    invoke-static {p1, v2, v2, v1, v0}, Lcom/coloros/settings/utils/ag;->a(FZZZ[Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->f()Z

    move-result p1

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    return p0
.end method

.method private b()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setClearAll(Z)V

    const/4 v0, 0x0

    .line 471
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V
    .locals 5

    .line 3475
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 3476
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setDeleteLast(Z)V

    .line 3477
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->d:[Ljava/lang/String;

    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    add-int/lit8 v3, v2, -0x1

    const-string v4, ""

    aput-object v4, v0, v3

    sub-int/2addr v2, v1

    .line 3478
    iput v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    .line 3479
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 3480
    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c:I

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Landroid/app/Dialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->y:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Landroid/widget/TextView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 385
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->F:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    const-string v2, "123789"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$7;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$7;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Lcom/coloros/settings/feature/password/c;)V

    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    sget-object v2, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    if-ne v0, v2, :cond_6

    .line 399
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/z;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;)V

    .line 401
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c()V

    .line 402
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    const v1, 0x7f120c4d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 403
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 404
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    iget v1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/z;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 406
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->v:I

    const/high16 v1, 0x30000

    if-lt v0, v1, :cond_2

    .line 407
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c()V

    const v0, 0x7f120adf

    .line 408
    invoke-direct {p0, v0, v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(II)V

    return-void

    .line 1347
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1348
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1351
    :cond_3
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120ffc

    .line 1352
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$6;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$6;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    .line 1353
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120ffd

    new-instance v2, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$5;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$5;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    .line 1361
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120ffe

    new-instance v2, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    .line 1369
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1378
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->z:Lcolor/support/v7/app/AlertDialog;

    .line 1379
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->z:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 1380
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->z:Lcolor/support/v7/app/AlertDialog;

    invoke-static {v0}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    :cond_4
    :goto_0
    return-void

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->l:Ljava/lang/String;

    .line 414
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;)V

    .line 415
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c()V

    .line 416
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->o:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    sget-object v2, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    if-ne v0, v2, :cond_9

    .line 420
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 421
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSimpleLock;->setAllCode(Z)V

    .line 2332
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2336
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e:Ljava/lang/String;

    .line 3019
    sput-object v0, Lcom/coloros/settings/utils/z;->b:Ljava/lang/String;

    const/high16 v2, 0x20000

    .line 2338
    invoke-virtual {p0, v0, v2}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Ljava/lang/String;I)V

    .line 2340
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->p:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 2342
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->p:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_7
    return-void

    .line 424
    :cond_8
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->c()V

    .line 426
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;)V

    const v0, 0x7f120faa

    .line 427
    invoke-direct {p0, v0, v0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(II)V

    :cond_9
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 253
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 99
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 103
    iget v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->D:I

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->D:I

    .line 104
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->c()Z

    move-result v0

    const v1, 0x30001

    if-eqz v0, :cond_0

    .line 105
    iput v1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->D:I

    :cond_0
    const/4 v0, 0x0

    const-string v2, "change_title_for_fingerprint"

    .line 107
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->r:Z

    const-string v2, "change_title_for_face"

    .line 109
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->s:Z

    const/4 v0, 0x1

    const-string v2, "change_head_type"

    .line 111
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->A:I

    const-string v0, "start_type"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->B:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->D:I

    iget v4, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->v:I

    iget-object v5, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->u:[B

    iget-boolean v6, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->r:Z

    iget v7, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->A:I

    iget-object v8, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->B:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->s:Z

    new-instance v10, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$1;

    invoke-direct {v10, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$1;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    invoke-static/range {v2 .. v10}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;II[BZILjava/lang/String;ZLcom/coloros/settings/feature/password/c;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->y:Landroid/app/Dialog;

    .line 124
    iget p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->D:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x4

    .line 125
    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    goto :goto_0

    :cond_1
    const v0, 0x30002

    if-ne p1, v0, :cond_2

    const/4 p1, 0x6

    .line 127
    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->F:Z

    return-void

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "requested quality exception"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 138
    invoke-static {p2}, Lcom/coloros/settings/utils/ag;->e(Landroid/app/Activity;)F

    move-result p3

    iput p3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->C:F

    const p3, 0x7f0d021e

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 140
    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 1146
    iget p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->d:[Ljava/lang/String;

    const p2, 0x7f0a02f4

    .line 1148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->h:Landroid/widget/TextView;

    const p2, 0x7f0a02f5

    .line 1149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->i:Landroid/widget/TextView;

    const p2, 0x7f0a02f2

    .line 1150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    const p2, 0x7f0a02f3

    .line 1151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->k:Landroid/widget/TextView;

    .line 1152
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a:Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b()V

    const p2, 0x7f0a04c1

    .line 1154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorSimpleLock;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    const p2, 0x7f0a04c2

    .line 1155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorSimpleLock;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->j:Lcom/color/support/widget/ColorSimpleLock;

    .line 1156
    iget p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->D:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x30001

    if-ne p2, v2, :cond_0

    .line 1157
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p2, v1}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    .line 1158
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->j:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p2, v1}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    goto :goto_0

    :cond_0
    const v2, 0x30002

    if-ne p2, v2, :cond_1

    .line 1160
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->b:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    .line 1161
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->j:Lcom/color/support/widget/ColorSimpleLock;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorSimpleLock;->setSimpleLockType(I)V

    .line 1163
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p2, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->n:Lcom/android/internal/widget/LockPatternUtils;

    const p2, 0x7f0a0362

    .line 1164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->E:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 1165
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->E:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 1166
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->E:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v0, p2, Lcom/color/support/widget/ColorNumericKeyboard;->mDeleteStyle:Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setRightStyle(Lcom/color/support/widget/ColorNumericKeyboard$SideStyle;)V

    .line 1167
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->E:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ac(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    .line 1168
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->E:Lcom/color/support/widget/ColorNumericKeyboard;

    new-instance v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$2;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    invoke-virtual {p2, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    const p2, 0x7f0a04a0

    .line 1186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    .line 1187
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    new-instance v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$3;-><init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1197
    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->x:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onDestroy()V

    .line 233
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1238
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->y:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->z:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->z:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 222
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 227
    invoke-super {p0}, Lcom/coloros/settings/feature/password/ChooseLockBaseFragment;->onResume()V

    return-void
.end method
