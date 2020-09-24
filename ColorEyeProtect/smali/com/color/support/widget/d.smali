.class Lcom/color/support/widget/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/d$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Rect;


# instance fields
.field private final b:Landroid/widget/EditText;

.field private final c:Lcom/color/support/widget/b$a;

.field private d:Landroid/content/res/ColorStateList;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/color/support/widget/b;

.field private i:Landroid/content/res/ColorStateList;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/animation/AnimatorSet;

.field private n:Z

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ColorEditText$b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:F

.field private s:F

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/color/support/widget/d;->a:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    new-instance p1, Lcom/color/support/widget/b$a;

    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-direct {p1, v0}, Lcom/color/support/widget/b$a;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    iget-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/b$a;->a(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/b$a;->b(Landroid/view/animation/Interpolator;)V

    iget-object p0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    const p1, 0x800033

    invoke-virtual {p0, p1}, Lcom/color/support/widget/b$a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/d;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/d;->r:F

    return p1
.end method

.method private a(F)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/color/support/widget/d;->f:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/d;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget p0, p0, Lcom/color/support/widget/d;->f:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private a(IIF)I
    .locals 4

    const/4 p0, 0x0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_0

    return p1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p0

    if-ltz v0, :cond_1

    return p2

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, p3

    mul-float/2addr v0, p0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    add-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0xff

    if-le v0, p1, :cond_2

    move v0, p1

    :cond_2
    if-le v1, p1, :cond_3

    move v1, p1

    :cond_3
    if-le v2, p1, :cond_4

    move v2, p1

    :cond_4
    if-le p0, p1, :cond_5

    move p0, p1

    :cond_5
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/color/support/widget/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/d;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/d;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/d;->a(ZZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/d;->a(ZZZ)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/support/widget/d;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/color/support/widget/d;->n:Z

    invoke-direct {p0, p1}, Lcom/color/support/widget/d;->b(Z)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/color/support/widget/d;->b(ZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/color/support/widget/d;->c(ZZ)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/d;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/color/support/widget/d;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/d;->s:F

    return p1
.end method

.method private b()Landroid/text/Layout$Alignment;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextAlignment()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_1
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    :cond_2
    :goto_1
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const p0, 0x800003

    if-eq v0, p0, :cond_0

    const p0, 0x800005

    if-eq v0, p0, :cond_2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/color/support/widget/d;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/color/support/widget/d;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/d;->b(ZZZ)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/d;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorEditText$b;

    invoke-interface {v1, p1}, Lcom/color/support/widget/ColorEditText$b;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/d;->g()V

    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHighlightColor(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/color/support/widget/d;->r:F

    iput p1, p0, Lcom/color/support/widget/d;->s:F

    iput p1, p0, Lcom/color/support/widget/d;->t:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/d;->p:Z

    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/d;->q:Z

    iget-object p0, p0, Lcom/color/support/widget/d;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/d;->g()V

    invoke-direct {p0, v0, v0, p2}, Lcom/color/support/widget/d;->b(ZZZ)V

    :goto_0
    return-void
.end method

.method private b(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/d;->p:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/color/support/widget/d;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    const p2, 0x3e99999a    # 0.3f

    invoke-direct {p0, p2}, Lcom/color/support/widget/d;->a(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHighlightColor(I)V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/color/support/widget/d;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    iget p0, p0, Lcom/color/support/widget/d;->e:I

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setHighlightColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/d;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/d;->t:F

    return p1
.end method

.method private c()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/color/support/widget/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/d;->e()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/d;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorEditText$b;

    invoke-interface {v1, p1}, Lcom/color/support/widget/ColorEditText$b;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/color/support/widget/d;->r:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/color/support/widget/d;->s:F

    iput p1, p0, Lcom/color/support/widget/d;->t:F

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/color/support/widget/d;->b(ZZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v0, p2}, Lcom/color/support/widget/d;->b(ZZZ)V

    :goto_0
    return-void
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p0

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private e()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object p0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-interface {v0, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 9

    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/a/a$e;->color_edit_text_shake_amplitude:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xd9

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/color/support/widget/d$2;

    invoke-direct {v5, p0}, Lcom/color/support/widget/d$2;-><init>(Lcom/color/support/widget/d;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v0, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/color/support/widget/d$a;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/color/support/widget/d$a;-><init>(Lcom/color/support/widget/d$1;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v5, Lcom/color/support/widget/d$a;->a:I

    int-to-long v7, v5

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/color/support/widget/d$3;

    invoke-direct {v5, p0}, Lcom/color/support/widget/d$3;-><init>(Lcom/color/support/widget/d;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x85

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x50

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/color/support/widget/d$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/d$4;-><init>(Lcom/color/support/widget/d;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/d;->m:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/color/support/widget/d;->m:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v6

    aput-object v0, v7, v2

    aput-object v5, v7, v3

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/color/support/widget/d;->m:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/color/support/widget/d$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/d$5;-><init>(Lcom/color/support/widget/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/d;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/d;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 1

    iget-object p0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(III[FLcom/color/support/widget/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/d;->d:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/d;->e:I

    iput p1, p0, Lcom/color/support/widget/d;->f:I

    iput p2, p0, Lcom/color/support/widget/d;->g:I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const-string p1, "sans-serif-medium"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p2, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p2, p1}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p5}, Lcom/color/support/widget/b$a;->k()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/b$a;->a(F)V

    iget-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p5}, Lcom/color/support/widget/b$a;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/b$a;->b(I)V

    iget-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p5}, Lcom/color/support/widget/b$a;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/b$a;->a(I)V

    new-instance p1, Lcom/color/support/widget/b;

    invoke-direct {p1}, Lcom/color/support/widget/b;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/d;->h:Lcom/color/support/widget/b;

    iget-object p1, p0, Lcom/color/support/widget/d;->h:Lcom/color/support/widget/b;

    invoke-virtual {p1, p4}, Lcom/color/support/widget/b;->setCornerRadii([F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/d;->k:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/color/support/widget/d;->k:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/d;->g:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/d;->l:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/color/support/widget/d;->f()V

    iget-object p1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    new-instance p2, Lcom/color/support/widget/d$1;

    invoke-direct {p2, p0}, Lcom/color/support/widget/d$1;-><init>(Lcom/color/support/widget/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, p5}, Lcom/color/support/widget/d;->b(Lcom/color/support/widget/b$a;)V

    invoke-virtual {p0, p5}, Lcom/color/support/widget/d;->a(Lcom/color/support/widget/b$a;)V

    return-void
.end method

.method a(ILandroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/b$a;->a(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lcom/color/support/widget/d;->p:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/color/support/widget/d;->n:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/color/support/widget/d;->s:F

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/color/support/widget/d;->s:F

    neg-float v1, v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    sget-object v5, Lcom/color/support/widget/d;->a:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result v5

    if-nez v5, :cond_1

    int-to-float v5, v1

    :goto_2
    sget-object v7, Lcom/color/support/widget/d;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_1
    int-to-float v5, v2

    goto :goto_2

    :goto_3
    iget-object v5, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget-object v8, p0, Lcom/color/support/widget/d;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v5, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v4, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/color/support/widget/d;->c()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v7, p0, Lcom/color/support/widget/d;->b:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    invoke-direct {p0}, Lcom/color/support/widget/d;->b()Landroid/text/Layout$Alignment;

    move-result-object v5

    iget-object v6, p0, Lcom/color/support/widget/d;->l:Landroid/graphics/Paint;

    iget v7, p0, Lcom/color/support/widget/d;->t:F

    invoke-direct {p0, v7}, Lcom/color/support/widget/d;->a(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_2

    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_4

    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    int-to-float v1, v1

    :goto_4
    add-float/2addr v4, v1

    move v6, v1

    move v8, v4

    goto :goto_5

    :cond_4
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_5

    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_7

    invoke-direct {p0}, Lcom/color/support/widget/d;->h()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    sub-int/2addr v3, v1

    int-to-float v1, v3

    sub-float v2, v1, v4

    move v8, v1

    move v6, v2

    goto :goto_5

    :cond_7
    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v2, v4, v2

    sub-float/2addr v1, v2

    goto :goto_4

    :goto_5
    sget-object v1, Lcom/color/support/widget/d;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v1

    sget-object v1, Lcom/color/support/widget/d;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    iget-object v10, p0, Lcom/color/support/widget/d;->l:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    return-void
.end method

.method a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 7

    iget-object v0, p0, Lcom/color/support/widget/d;->k:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result p5

    iget v1, p0, Lcom/color/support/widget/d;->f:I

    iget v2, p0, Lcom/color/support/widget/d;->r:F

    invoke-direct {p0, p5, v1, v2}, Lcom/color/support/widget/d;->a(IIF)I

    move-result p5

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float v4, p3

    iget-object v6, p0, Lcom/color/support/widget/d;->k:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p2

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/color/support/widget/d;->k:Landroid/graphics/Paint;

    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result p5

    iget p6, p0, Lcom/color/support/widget/d;->f:I

    iget v0, p0, Lcom/color/support/widget/d;->r:F

    invoke-direct {p0, p5, p6, v0}, Lcom/color/support/widget/d;->a(IIF)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, p4

    iget-object v6, p0, Lcom/color/support/widget/d;->k:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 3

    iget-object v0, p0, Lcom/color/support/widget/d;->h:Lcom/color/support/widget/b;

    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b;->setBounds(Landroid/graphics/Rect;)V

    instance-of v0, p2, Lcom/color/support/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/d;->h:Lcom/color/support/widget/b;

    check-cast p2, Lcom/color/support/widget/b;

    invoke-virtual {p2}, Lcom/color/support/widget/b;->b()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/color/support/widget/b;->a(Landroid/graphics/RectF;)V

    :cond_0
    iget-object p2, p0, Lcom/color/support/widget/d;->h:Lcom/color/support/widget/b;

    iget v0, p0, Lcom/color/support/widget/d;->g:I

    iget v1, p0, Lcom/color/support/widget/d;->f:I

    iget v2, p0, Lcom/color/support/widget/d;->r:F

    invoke-direct {p0, p3, v1, v2}, Lcom/color/support/widget/d;->a(IIF)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Lcom/color/support/widget/b;->setStroke(II)V

    iget-object p0, p0, Lcom/color/support/widget/d;->h:Lcom/color/support/widget/b;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/b;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method a(Landroid/graphics/Canvas;Lcom/color/support/widget/b$a;)V
    .locals 4

    iget-object v0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    iget-object v1, p0, Lcom/color/support/widget/d;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/d;->f:I

    iget v3, p0, Lcom/color/support/widget/d;->r:F

    invoke-direct {p0, v1, v2, v3}, Lcom/color/support/widget/d;->a(IIF)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    iget-object v1, p0, Lcom/color/support/widget/d;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/d;->f:I

    iget v3, p0, Lcom/color/support/widget/d;->r:F

    invoke-direct {p0, v1, v2, v3}, Lcom/color/support/widget/d;->a(IIF)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->b(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p2}, Lcom/color/support/widget/b$a;->h()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/color/support/widget/b$a;->b(F)V

    iget-object p0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method a(Lcom/color/support/widget/b$a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/color/support/widget/b$a;->p()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/d;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Lcom/color/support/widget/b$a;->o()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/d;->j:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    iget-object v0, p0, Lcom/color/support/widget/d;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    iget-object p0, p0, Lcom/color/support/widget/d;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/b$a;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/d;->a(ZZ)V

    return-void
.end method

.method a([I)V
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/b$a;->a([I)Z

    return-void
.end method

.method a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/support/widget/d;->n:Z

    return p0
.end method

.method b(Lcom/color/support/widget/b$a;)V
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p1}, Lcom/color/support/widget/b$a;->n()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/b$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method c(Lcom/color/support/widget/b$a;)V
    .locals 5

    invoke-virtual {p1}, Lcom/color/support/widget/b$a;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/color/support/widget/b$a;->b()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/color/support/widget/b$a;->a(IIII)V

    iget-object v0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/color/support/widget/b$a;->b(IIII)V

    iget-object p0, p0, Lcom/color/support/widget/d;->c:Lcom/color/support/widget/b$a;

    invoke-virtual {p0}, Lcom/color/support/widget/b$a;->m()V

    return-void
.end method
