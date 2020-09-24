.class public Lcom/android/settings/widget/DotsPageIndicator;
.super Landroid/view/View;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/DotsPageIndicator$a;,
        Lcom/android/settings/widget/DotsPageIndicator$e;,
        Lcom/android/settings/widget/DotsPageIndicator$f;,
        Lcom/android/settings/widget/DotsPageIndicator$c;,
        Lcom/android/settings/widget/DotsPageIndicator$b;,
        Lcom/android/settings/widget/DotsPageIndicator$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DotsPageIndicator"


# instance fields
.field private A:[F

.field private B:[F

.field private C:F

.field private D:F

.field private E:[F

.field private F:Z

.field private final G:Landroid/graphics/Paint;

.field private final H:Landroid/graphics/Paint;

.field private final I:Landroid/graphics/Path;

.field private final J:Landroid/graphics/Path;

.field private final K:Landroid/graphics/Path;

.field private final L:Landroid/graphics/Path;

.field private final M:Landroid/graphics/RectF;

.field private N:Landroid/animation/ValueAnimator;

.field private O:[Landroid/animation/ValueAnimator;

.field private P:Landroid/animation/AnimatorSet;

.field private Q:Lcom/android/settings/widget/DotsPageIndicator$b;

.field private R:[Lcom/android/settings/widget/DotsPageIndicator$c;

.field private final S:Landroid/view/animation/Interpolator;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field private j:I

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:J

.field private r:F

.field private s:F

.field private t:F

.field private u:Landroidx/viewpager/widget/ViewPager;

.field private v:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private w:I

.field private x:I

.field private y:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-int v0, v0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/settings/g$a;->DotsPageIndicator:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    mul-int/lit8 p3, v0, 0x8

    const/4 v1, 0x2

    .line 134
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->j:I

    .line 136
    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->j:I

    div-int/2addr p3, v1

    int-to-float p3, p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    .line 137
    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->p:F

    mul-int/lit8 v0, v0, 0xc

    const/4 p3, 0x3

    .line 138
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->k:I

    const/16 p3, 0x190

    .line 140
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->l:J

    .line 142
    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->l:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->q:J

    const/4 p3, 0x4

    const v0, -0x7f000001

    .line 143
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->m:I

    const/4 p3, 0x1

    const/4 v0, -0x1

    .line 145
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->n:I

    .line 147
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->G:Landroid/graphics/Paint;

    .line 149
    iget-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->G:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->m:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->H:Landroid/graphics/Paint;

    .line 151
    iget-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->H:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->n:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    const p2, 0x10c000d

    .line 154
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->S:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    const p2, 0x10a0004

    .line 156
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->S:Landroid/view/animation/Interpolator;

    .line 160
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->I:Landroid/graphics/Path;

    .line 161
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    .line 162
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->K:Landroid/graphics/Path;

    .line 163
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->L:Landroid/graphics/Path;

    .line 164
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    .line 166
    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/DotsPageIndicator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    return p1
.end method

.method static synthetic a(Lcom/android/settings/widget/DotsPageIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->u:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private a()V
    .locals 6

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 244
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    .line 245
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    add-float/2addr v0, v2

    .line 246
    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    const/4 v2, 0x0

    .line 247
    :goto_0
    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    if-ge v2, v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->j:I

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->k:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    .line 251
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    .line 252
    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    .line 253
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->j:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    .line 254
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->b()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 1

    .line 2652
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->B:[F

    aput p2, v0, p1

    .line 2653
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->F:Z

    return p1
.end method

.method static synthetic a(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$c;)[Lcom/android/settings/widget/DotsPageIndicator$c;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->R:[Lcom/android/settings/widget/DotsPageIndicator$c;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    return p0
.end method

.method static synthetic b(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    return p1
.end method

.method private b()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->u:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->x:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->x:I

    .line 264
    :goto_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    if-lez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->x:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 1

    .line 2662
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->E:[F

    aput p2, v0, p1

    .line 2663
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->z:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->D:F

    return p1
.end method

.method static synthetic c(Lcom/android/settings/widget/DotsPageIndicator;)Lcom/android/settings/widget/DotsPageIndicator$b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->Q:Lcom/android/settings/widget/DotsPageIndicator$b;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 270
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 271
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->B:[F

    .line 272
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->B:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 273
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->E:[F

    .line 274
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->E:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 275
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    .line 276
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->D:F

    .line 277
    iput-boolean v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->z:Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/settings/widget/DotsPageIndicator;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->q:J

    return-wide v0
.end method

.method private d()V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->e()V

    .line 668
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->f()V

    .line 669
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->g()V

    .line 670
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->h()V

    .line 671
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->c()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->S:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->N:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->P:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->P:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/android/settings/widget/DotsPageIndicator;)[F
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    return-object p0
.end method

.method static synthetic g(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    return p0
.end method

.method private g()V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->Q:Lcom/android/settings/widget/DotsPageIndicator$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$b;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->Q:Lcom/android/settings/widget/DotsPageIndicator$b;

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$b;->cancel()V

    :cond_0
    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->j:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    .line 332
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->j:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->k:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    .line 547
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 548
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->D:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    return-object v0
.end method

.method private h()V
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->R:[Lcom/android/settings/widget/DotsPageIndicator$c;

    if-eqz v0, :cond_0

    .line 700
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 701
    invoke-virtual {v3}, Lcom/android/settings/widget/DotsPageIndicator$c;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$c;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->R:[Lcom/android/settings/widget/DotsPageIndicator$c;

    return-object p0
.end method

.method static synthetic i(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    return p0
.end method

.method static synthetic j(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->D:F

    return p0
.end method

.method static synthetic k(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->f()V

    return-void
.end method

.method static synthetic l(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 2

    .line 2657
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->B:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2658
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setPageCount(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    .line 236
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->a()V

    .line 237
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->c()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 13

    .line 558
    iget v6, p0, Lcom/android/settings/widget/DotsPageIndicator;->x:I

    if-eq p1, v6, :cond_6

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 563
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->x:I

    .line 566
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 567
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->d()V

    sub-int v0, p1, v6

    .line 573
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 574
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    aget v0, v0, p1

    const/4 v8, 0x2

    .line 1595
    new-array v1, v8, [F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    const/4 v9, 0x0

    aput v2, v1, v9

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 1598
    new-instance v11, Lcom/android/settings/widget/DotsPageIndicator$b;

    const/high16 v1, 0x3e800000    # 0.25f

    if-le p1, v6, :cond_1

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$e;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    sub-float v3, v0, v3

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-direct {v2, p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$e;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$a;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    sub-float/2addr v3, v0

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    invoke-direct {v2, p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$a;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    :goto_0
    move-object v5, v2

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, p1

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/DotsPageIndicator$b;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$f;)V

    iput-object v11, p0, Lcom/android/settings/widget/DotsPageIndicator;->Q:Lcom/android/settings/widget/DotsPageIndicator$b;

    .line 1603
    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$3;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1613
    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$4;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$4;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1630
    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->z:Z

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->l:J

    div-long/2addr v3, v1

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1631
    iget-wide v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->l:J

    const-wide/16 v11, 0x3

    mul-long/2addr v3, v11

    div-long/2addr v3, v1

    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1632
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->S:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 574
    iput-object v10, p0, Lcom/android/settings/widget/DotsPageIndicator;->N:Landroid/animation/ValueAnimator;

    .line 579
    new-array v0, v7, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->O:[Landroid/animation/ValueAnimator;

    :goto_2
    if-ge v9, v7, :cond_4

    .line 581
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->O:[Landroid/animation/ValueAnimator;

    if-le p1, v6, :cond_3

    add-int v1, v6, v9

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v6, -0x1

    sub-int/2addr v1, v9

    :goto_3
    int-to-long v2, v9

    iget-wide v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->l:J

    const-wide/16 v10, 0x8

    div-long/2addr v4, v10

    mul-long/2addr v2, v4

    .line 1638
    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1639
    new-instance v5, Lcom/android/settings/widget/DotsPageIndicator$5;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/widget/DotsPageIndicator$5;-><init>(Lcom/android/settings/widget/DotsPageIndicator;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1645
    iget-wide v10, p0, Lcom/android/settings/widget/DotsPageIndicator;->q:J

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1646
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1647
    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->S:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    aput-object v4, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 584
    :cond_4
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1681
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->P:Landroid/animation/AnimatorSet;

    .line 1682
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->P:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->O:[Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1683
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->P:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 587
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->b()V

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->invalidate()V

    :cond_6
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .line 321
    invoke-super {p0}, Landroid/view/View;->clearAnimation()V

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->d()V

    :cond_0
    return-void
.end method

.method getCurrentPage()I
    .locals 1

    .line 727
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->x:I

    return v0
.end method

.method getDotCenterY()F
    .locals 1

    .line 715
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    return v0
.end method

.method getSelectedColour()I
    .locals 1

    .line 711
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->n:I

    return v0
.end method

.method getSelectedDotX()F
    .locals 1

    .line 723
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    return v0
.end method

.method getUnselectedColour()I
    .locals 1

    .line 707
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->m:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 341
    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->u:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_f

    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 1349
    :cond_0
    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->I:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    const/4 v2, 0x0

    .line 1352
    :goto_0
    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    const/16 v4, 0x15

    const/high16 v5, -0x40800000    # -1.0f

    if-ge v2, v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 1356
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_c

    .line 1357
    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    aget v7, v6, v2

    aget v3, v6, v3

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->w:I

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-ne v2, v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->B:[F

    aget v6, v6, v2

    :goto_2
    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->E:[F

    aget v9, v9, v2

    .line 1401
    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    const/4 v10, 0x0

    cmpl-float v11, v6, v10

    if-eqz v11, :cond_3

    cmpl-float v12, v6, v5

    if-nez v12, :cond_5

    :cond_3
    cmpl-float v10, v9, v10

    if-nez v10, :cond_5

    .line 1403
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->x:I

    if-ne v2, v10, :cond_4

    iget-boolean v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->z:Z

    if-eq v10, v8, :cond_5

    .line 1407
    :cond_4
    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    aget v12, v12, v2

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_5
    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    if-lez v11, :cond_8

    cmpg-float v11, v6, v10

    if-gez v11, :cond_8

    .line 1410
    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    cmpl-float v11, v11, v5

    if-nez v11, :cond_8

    .line 1413
    iget-object v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->K:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    .line 1416
    iget-object v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->K:Landroid/graphics/Path;

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v11, v7, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1419
    iget-object v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sub-float v15, v7, v14

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    add-float/2addr v14, v7

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v11, v15, v5, v14, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1420
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->K:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    invoke-virtual {v5, v10, v13, v12, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1423
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    add-float/2addr v5, v7

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->k:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v5, v10

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    .line 1424
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    .line 1425
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->p:F

    add-float v10, v7, v5

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1426
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    .line 1427
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1428
    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    sub-float v5, v11, v5

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1429
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->K:Landroid/graphics/Path;

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    move-object/from16 v17, v5

    move/from16 v18, v14

    move/from16 v19, v15

    move/from16 v20, v12

    move/from16 v21, v8

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1432
    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    .line 1433
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    .line 1434
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1435
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->p:F

    add-float/2addr v8, v10

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    add-float/2addr v10, v7

    .line 1436
    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1437
    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1438
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->K:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    move-object/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v14

    move/from16 v23, v15

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1439
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_6

    .line 1440
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->K:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v8, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 1444
    :cond_6
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->L:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 1447
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->L:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v5, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1450
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sub-float v10, v3, v8

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    add-float/2addr v8, v3

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v5, v10, v11, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1451
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->L:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    const/high16 v10, -0x3ccc0000    # -180.0f

    const/4 v11, 0x1

    invoke-virtual {v5, v8, v13, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1454
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sub-float v5, v3, v5

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->k:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v5, v8

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    .line 1455
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    .line 1456
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->p:F

    sub-float v8, v3, v5

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1457
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    .line 1458
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1459
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    sub-float v5, v10, v5

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1460
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->L:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    move-object/from16 v17, v5

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v14

    move/from16 v21, v15

    move/from16 v22, v8

    move/from16 v23, v10

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1463
    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    .line 1464
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    .line 1465
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1466
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->p:F

    add-float/2addr v8, v10

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    .line 1467
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    sub-float v10, v8, v10

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1468
    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1469
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->L:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    move-object/from16 v17, v5

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v14

    move/from16 v22, v8

    move/from16 v23, v15

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1470
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_7

    .line 1471
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->L:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_7
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_8
    move v4, v10

    :goto_3
    cmpl-float v4, v6, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_9

    cmpg-float v4, v6, v5

    if-gez v4, :cond_9

    .line 1475
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v4, v4, v8

    if-nez v4, :cond_9

    .line 1478
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1481
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sub-float v10, v7, v8

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    add-float/2addr v8, v7

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v4, v10, v11, v8, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1482
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    const/high16 v10, 0x43340000    # 180.0f

    const/4 v11, 0x1

    invoke-virtual {v4, v8, v13, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1485
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    add-float v8, v7, v4

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->k:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v8, v10

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    .line 1486
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    mul-float v10, v6, v4

    sub-float/2addr v8, v10

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    .line 1487
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    mul-float v10, v6, v4

    sub-float v10, v8, v10

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1488
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    sub-float v10, v5, v6

    mul-float/2addr v4, v10

    sub-float v4, v8, v4

    .line 1489
    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1490
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1491
    iget-object v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v8

    move/from16 v22, v4

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1494
    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    .line 1495
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    .line 1496
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    mul-float v12, v10, v11

    add-float/2addr v12, v8

    iput v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1497
    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    iput v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    mul-float/2addr v11, v6

    add-float/2addr v8, v11

    .line 1498
    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1499
    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1500
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    move-object/from16 v16, v4

    move/from16 v17, v8

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1503
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sub-float v11, v3, v8

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    add-float/2addr v8, v3

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v4, v11, v12, v8, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1504
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    const/high16 v11, 0x43870000    # 270.0f

    const/high16 v12, 0x43340000    # 180.0f

    const/4 v13, 0x1

    invoke-virtual {v4, v8, v11, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1508
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    mul-float v11, v6, v8

    add-float/2addr v4, v11

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    .line 1509
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    mul-float v11, v6, v8

    add-float/2addr v11, v4

    iput v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1510
    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    iput v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v4

    .line 1511
    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1512
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1513
    iget-object v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v4

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1516
    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    .line 1517
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    .line 1518
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->b:F

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    mul-float/2addr v10, v8

    sub-float v10, v4, v10

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    .line 1519
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->c:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    mul-float/2addr v8, v6

    sub-float/2addr v4, v8

    .line 1520
    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    .line 1521
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->e:F

    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    .line 1522
    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->f:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->g:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->h:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->i:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->d:F

    move-object/from16 v16, v8

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v4

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_9
    cmpl-float v4, v6, v5

    if-nez v4, :cond_a

    .line 1525
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_a

    .line 1530
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sub-float v6, v7, v5

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->r:F

    add-float/2addr v3, v5

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->t:F

    invoke-virtual {v4, v6, v8, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1531
    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->M:Landroid/graphics/RectF;

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_a
    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v3, v9, v3

    if-lez v3, :cond_b

    .line 1539
    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    mul-float/2addr v9, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v7, v4, v9, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1543
    :cond_b
    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->J:Landroid/graphics/Path;

    .line 1362
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->I:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_4

    .line 1364
    :cond_c
    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->A:[F

    aget v3, v3, v2

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    iget-object v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->G:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1369
    :cond_d
    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->C:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    .line 1370
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_e

    .line 1371
    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->I:Landroid/graphics/Path;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 1374
    :cond_e
    iget-object v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->I:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->G:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1554
    iget v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->y:F

    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->s:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->o:F

    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->H:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_f
    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 283
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredHeight()I

    move-result v0

    .line 285
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 296
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredWidth()I

    move-result p2

    .line 298
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 300
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 303
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 309
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->a()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->v:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->v:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->F:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setSelectedPage(I)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->b()V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->v:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 222
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    .line 316
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->a()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->v:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 179
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->u:Landroidx/viewpager/widget/ViewPager;

    .line 180
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 181
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    .line 182
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->b()V

    return-void
.end method
