.class public Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;,
        Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;,
        Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$a;
    }
.end annotation


# instance fields
.field private A:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;

.field private B:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$a;

.field private C:F

.field private final D:Lcom/a/a/b;

.field private final E:Lcom/a/a/e;

.field private F:Lcom/a/a/f;

.field private G:Landroid/view/VelocityTracker;

.field private H:F

.field private I:I

.field private J:Landroid/animation/AnimatorSet;

.field private K:I

.field private L:I

.field private M:I

.field private final a:Ljava/lang/String;

.field private b:I

.field private c:F

.field private d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/content/res/ColorStateList;

.field private i:I

.field private j:F

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroid/graphics/RectF;

.field private s:F

.field private t:Landroid/graphics/Paint;

.field private u:F

.field private v:[F

.field private w:F

.field private x:Z

.field private y:Z

.field private z:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$b;->colorAbsorbSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b:I

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->r:Landroid/graphics/RectF;

    const v1, 0x3c1374bc    # 0.009f

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->u:F

    invoke-static {}, Lcom/a/a/i;->c()Lcom/a/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->D:Lcom/a/a/b;

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->D:Lcom/a/a/b;

    invoke-virtual {v1}, Lcom/a/a/b;->b()Lcom/a/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->E:Lcom/a/a/e;

    const-wide v1, 0x407f400000000000L    # 500.0

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    invoke-static {v1, v2, v3, v4}, Lcom/a/a/f;->a(DD)Lcom/a/a/f;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->F:Lcom/a/a/f;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->J:Landroid/animation/AnimatorSet;

    invoke-static {p0, v0}, Lcom/color/support/util/d;->a(Landroid/view/View;Z)V

    sget-object v1, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->h:Landroid/content/res/ColorStateList;

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbRadius:I

    const/high16 p3, 0x40800000    # 4.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->i:I

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbScaleRadius:I

    const p3, 0x406ae148    # 3.67f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->j:F

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressRadius:I

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->n:F

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressScaleRadius:I

    const/high16 p3, 0x40e00000    # 7.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->o:F

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarProgressColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->k:Landroid/content/res/ColorStateList;

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->l:Landroid/content/res/ColorStateList;

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarBackgroundRadius:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarBackgroundHighlightColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/a/a$d;->color_seekbar_background_highlight_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->K:I

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbShadowRadius:I

    const/high16 p3, 0x41600000    # 14.0f

    invoke-direct {p0, p3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    sget p2, Lcolor/support/v7/a/a$n;->ColorAbsorbSeekBar_colorAbsorbSeekBarThumbShadowColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/a/a$d;->color_seekbar_thumb_shadow_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->M:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e()V

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d()V

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c()V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->C:F

    return p0
.end method

.method static synthetic a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->C:F

    return p1
.end method

.method private a(Landroid/content/res/ColorStateList;I)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;I)I
    .locals 0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    return p1
.end method

.method private a(F)V
    .locals 2

    const/high16 v0, 0x42be0000    # 95.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->E:Lcom/a/a/e;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/a/a/e;->b(D)Lcom/a/a/e;

    goto :goto_1

    :cond_0
    const/high16 v0, -0x3d420000    # -95.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->E:Lcom/a/a/e;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->E:Lcom/a/a/e;

    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v2, v1, v0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    :goto_0
    iput v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    goto :goto_3

    :cond_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    :goto_1
    iput v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    goto :goto_3

    :cond_1
    sub-float p1, v2, p1

    add-float/2addr p1, v0

    :goto_2
    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    goto :goto_3

    :cond_2
    cmpg-float v3, p1, v0

    if-gez v3, :cond_3

    goto :goto_0

    :cond_3
    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    sub-float/2addr p1, v0

    goto :goto_2

    :goto_3
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;->a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V

    :cond_5
    return-void
.end method

.method private b(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->H:F

    return p1
.end method

.method static synthetic b(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->i:I

    return p0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a()V

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f()V

    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->n:F

    return p0
.end method

.method static synthetic c(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    return p1
.end method

.method private c()V
    .locals 9

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->E:Lcom/a/a/e;

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->F:Lcom/a/a/f;

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Lcom/a/a/f;)Lcom/a/a/e;

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->E:Lcom/a/a/e;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Lcom/a/a/g;)Lcom/a/a/e;

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/f/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/4 v5, 0x1

    aput v2, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x73

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$2;

    invoke-direct {v2, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$2;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    mul-float/2addr v8, v4

    aput v8, v2, v3

    iget v4, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    aput v4, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x57

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$3;

    invoke-direct {v4, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$3;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [I

    aput v3, v0, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    aput v3, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xca

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;

    invoke-direct {v3, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->v:[F

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->u:F

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v4

    iget v5, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    sub-float v5, p1, v5

    cmpl-float v5, v5, v1

    const/4 v6, 0x0

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    sub-float/2addr p1, v7

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_1
    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->v:[F

    array-length v7, v1

    :goto_2
    if-ge v6, v7, :cond_9

    aget v8, v1, v6

    mul-float/2addr v8, v2

    if-eqz v4, :cond_3

    sub-float v8, v2, v8

    :cond_3
    iget v9, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    sub-float v10, v8, v0

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_8

    iget v9, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    add-float v10, v8, v0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_6

    if-eqz v5, :cond_5

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_5

    :goto_3
    iput v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    iput-boolean v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->y:Z

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_9

    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    cmpg-float p1, p1, v8

    if-gez p1, :cond_9

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_9

    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    cmpl-float p1, p1, v8

    if-lez p1, :cond_9

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    iget p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    if-eq p1, v0, :cond_a

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    invoke-interface {p1, p0, v0, v3}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;->a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V

    :cond_a
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->G:Landroid/view/VelocityTracker;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->G:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a(F)V

    return-void
.end method

.method static synthetic d(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->j:F

    return p0
.end method

.method static synthetic d(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    return p1
.end method

.method private d()V
    .locals 1

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->n:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->i:I

    int-to-float v0, v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->H:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    return-void
.end method

.method static synthetic e(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->o:F

    return p0
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b:I

    new-instance v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->A:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->A:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;

    invoke-static {p0, v0}, Landroidx/core/f/t;->a(Landroid/view/View;Landroidx/core/f/a;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-static {p0, v1}, Landroidx/core/f/t;->b(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->A:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$c;->b()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method static synthetic f(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    return p0
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    return p0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private getEnd()I
    .locals 0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method private getStart()I
    .locals 0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method private h()V
    .locals 9

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->J:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const-string v0, "radiusIn"

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->i:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "radiusOut"

    new-array v3, v1, [F

    iget v6, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    aput v6, v3, v4

    iget v6, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->n:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v3, "thumbShadowRadius"

    new-array v6, v1, [I

    iget v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    aput v7, v6, v4

    aput v4, v6, v5

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v6, "backgroundRadius"

    new-array v7, v1, [F

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->H:F

    aput v8, v7, v4

    iget v8, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    aput v8, v7, v5

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v7, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v4

    aput-object v2, v8, v5

    aput-object v3, v8, v1

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroidx/core/f/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;-><init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g:Z

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;->a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g:Z

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    invoke-interface {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;->b(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_0
    return-void
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    return p0
.end method

.method public getThumbCenter()F
    .locals 4

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    add-float/2addr v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v3

    iget p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v3, p0

    int-to-float p0, v3

    add-float/2addr p0, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->B:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->B:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$a;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isLayoutRtl()Z

    move-result v1

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->l:Landroid/content/res/ColorStateList;

    invoke-static {v0, v3}, Lcom/color/support/widget/seekbar/a;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getWidth()I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->r:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->H:F

    sub-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->H:F

    add-float/2addr v7, v8

    invoke-virtual {v5, v2, v6, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->r:Landroid/graphics/RectF;

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->H:F

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->H:F

    iget-object v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->x:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    iput v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->w:F

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->x:Z

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getStart()I

    move-result v3

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    add-float/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->k:Landroid/content/res/ColorStateList;

    sget v4, Lcom/color/support/widget/seekbar/a;->b:I

    invoke-direct {v0, v3, v4}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a(Landroid/content/res/ColorStateList;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    sub-float v4, v1, v4

    iget v5, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    add-float/2addr v5, v1

    iget v6, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    sub-float v6, v1, v6

    iget v7, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    add-float/2addr v1, v7

    iget v7, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->C:F

    iget v8, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->j:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    mul-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->C:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    sub-float/2addr v2, v7

    sub-float/2addr v4, v7

    sub-float/2addr v6, v7

    :goto_1
    move v8, v2

    move v10, v3

    goto :goto_2

    :cond_2
    sub-float/2addr v3, v7

    sub-float/2addr v5, v7

    sub-float/2addr v1, v7

    goto :goto_1

    :goto_2
    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->M:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    sub-int/2addr v2, v3

    int-to-float v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    add-int/2addr v2, v3

    int-to-float v11, v2

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    int-to-float v12, v2

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->I:I

    int-to-float v13, v2

    iget-object v14, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->k:Landroid/content/res/ColorStateList;

    sget v7, Lcom/color/support/widget/seekbar/a;->b:I

    invoke-static {v0, v3, v7}, Lcom/color/support/widget/seekbar/a;->a(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    sub-float v9, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    add-float v11, v2, v3

    iget v12, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    iget v13, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->p:F

    iget-object v14, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v6

    move v10, v1

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->h:Landroid/content/res/ColorStateList;

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/color/support/widget/seekbar/a;->a(Landroid/view/View;Landroid/content/res/ColorStateList;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    sub-float v9, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    add-float v11, v1, v2

    iget v12, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    iget v13, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->q:F

    iget-object v14, v0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->t:Landroid/graphics/Paint;

    move v8, v4

    move v10, v5

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->L:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    move p2, v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->y:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->y:Z

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/a;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g()V

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->E:Lcom/a/a/e;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/a/a/e;->b(D)Lcom/a/a/e;

    iget-boolean v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b()V

    invoke-virtual {p0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setPressed(Z)V

    :cond_4
    invoke-static {p1, p0}, Lcom/color/support/widget/seekbar/a;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a(Landroid/view/MotionEvent;)V

    :cond_5
    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->h()V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->g:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->s:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->G:Landroid/view/VelocityTracker;

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->G:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAbsorbRatio(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->u:F

    return-void
.end method

.method public varargs setAbsorbValues([F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->v:[F

    return-void
.end method

.method public setBackgroundRadius(F)V
    .locals 0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->m:F

    invoke-direct {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c()V

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    if-gt v0, p1, :cond_0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "progress cannot be greater than max"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max cannot be greater than max"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->x:Z

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "progress must be greater than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
