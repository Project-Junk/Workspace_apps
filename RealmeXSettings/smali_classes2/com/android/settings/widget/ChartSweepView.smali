.class public Lcom/android/settings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# instance fields
.field private A:Landroid/view/MotionEvent;

.field private B:[Lcom/android/settings/widget/ChartSweepView;

.field private C:Landroid/view/View$OnClickListener;

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Point;

.field private e:Landroid/graphics/Rect;

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:I

.field private m:Landroid/text/SpannableStringBuilder;

.field private n:Landroid/text/DynamicLayout;

.field private o:Lcom/android/settings/widget/a;

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:Lcom/android/settings/widget/ChartSweepView;

.field private u:Lcom/android/settings/widget/ChartSweepView;

.field private v:F

.field private w:Landroid/graphics/Paint;

.field private x:I

.field private y:J

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->w:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->x:I

    const-wide/16 v1, 0x1

    .line 98
    iput-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->y:J

    .line 110
    new-array v1, v0, [Lcom/android/settings/widget/ChartSweepView;

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->B:[Lcom/android/settings/widget/ChartSweepView;

    .line 151
    new-instance v1, Lcom/android/settings/widget/ChartSweepView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/ChartSweepView$1;-><init>(Lcom/android/settings/widget/ChartSweepView;)V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->C:Landroid/view/View$OnClickListener;

    .line 123
    sget-object v1, Lcom/android/settings/g$a;->ChartSweepView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const p3, -0xffff01

    .line 126
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    const/4 v1, 0x6

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1217
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1218
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1219
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v1, :cond_3

    .line 1223
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1224
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1227
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v2, p2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1228
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    .line 1230
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1231
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 1233
    :cond_3
    iput-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    .line 1236
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    const/4 v1, -0x1

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setFollowAxis(I)V

    const/4 v1, 0x4

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighborMargin(F)V

    const/4 v1, 0x5

    .line 130
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setSafeRegion(I)V

    const/4 v1, 0x2

    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setLabelMinSize(I)V

    const/4 v1, 0x3

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setLabelTemplate(I)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/ChartSweepView;->setLabelColor(I)V

    const p3, 0x7f08050a

    .line 137
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 139
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->w:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->w:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->w:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 2

    .line 417
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result v1

    add-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result v1

    add-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method private static a(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 9

    .line 606
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    instance-of v0, v0, Lcom/android/settings/widget/c;

    if-eqz v0, :cond_0

    move-wide v7, p2

    move-wide p2, p4

    move-wide p4, v7

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    cmp-long v2, p2, v3

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    cmp-long v0, p4, v3

    if-eqz v0, :cond_2

    move v5, v6

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    invoke-interface {v0, p2, p3}, Lcom/android/settings/widget/a;->a(J)F

    move-result p2

    add-float/2addr p2, p6

    .line 616
    iget-object p3, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    invoke-interface {p3, p4, p5}, Lcom/android/settings/widget/a;->a(J)F

    move-result p3

    sub-float/2addr p3, p6

    .line 618
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 619
    iget p1, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    if-ne p1, v6, :cond_4

    if-eqz v5, :cond_3

    .line 620
    iget p1, p4, Landroid/graphics/Rect;->top:I

    float-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p4, Landroid/graphics/Rect;->bottom:I

    :cond_3
    if-eqz v2, :cond_6

    .line 621
    iget p1, p4, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 623
    iget p1, p4, Landroid/graphics/Rect;->left:I

    float-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p4, Landroid/graphics/Rect;->right:I

    :cond_5
    if-eqz v2, :cond_6

    .line 624
    iget p1, p4, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p4, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_1
    return-object p4
.end method

.method static synthetic a()V
    .locals 0

    return-void
.end method

.method private static b(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 1

    .line 748
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private b()V
    .locals 4

    .line 259
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->k:I

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v1, Landroid/text/TextPaint;->density:F

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 265
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->l:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 267
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->m:Landroid/text/SpannableStringBuilder;

    .line 268
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->m:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    invoke-static {v0, v1, v3}, Landroid/text/DynamicLayout$Builder;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 269
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout$Builder;->setIncludePad(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0, v2}, Landroid/text/DynamicLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/text/DynamicLayout$Builder;->build()Landroid/text/DynamicLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    .line 273
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->c()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->m:Landroid/text/SpannableStringBuilder;

    .line 277
    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    return-void
.end method

.method private static c(Lcom/android/settings/widget/ChartSweepView;)F
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    return p0
.end method

.method private c()V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->m:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->m:Landroid/text/SpannableStringBuilder;

    iget-wide v3, p0, Lcom/android/settings/widget/ChartSweepView;->p:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/a;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->q:J

    .line 287
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->m:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->d()V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    return-void

    .line 291
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->p:J

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->q:J

    return-void
.end method

.method private d()V
    .locals 5

    move-object v0, p0

    .line 301
    :goto_0
    iget v1, v0, Lcom/android/settings/widget/ChartSweepView;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 302
    iget-object v1, v0, Lcom/android/settings/widget/ChartSweepView;->t:Lcom/android/settings/widget/ChartSweepView;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 303
    invoke-static {v0}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v4, v0, Lcom/android/settings/widget/ChartSweepView;->t:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v4}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/settings/widget/ChartSweepView;->j:F

    .line 304
    iget-object v1, v0, Lcom/android/settings/widget/ChartSweepView;->t:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    invoke-static {v0}, Lcom/android/settings/widget/ChartSweepView;->b(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v4

    sub-float/2addr v1, v4

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    :goto_1
    div-float v3, v1, v2

    goto :goto_2

    .line 308
    :cond_0
    iget-object v1, v0, Lcom/android/settings/widget/ChartSweepView;->u:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v1, :cond_1

    .line 309
    invoke-static {v0}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v4, v0, Lcom/android/settings/widget/ChartSweepView;->u:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v4}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/settings/widget/ChartSweepView;->j:F

    .line 310
    invoke-static {v0}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iget-object v4, v0, Lcom/android/settings/widget/ChartSweepView;->u:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v4}, Lcom/android/settings/widget/ChartSweepView;->b(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v4

    sub-float/2addr v1, v4

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    neg-float v1, v1

    goto :goto_1

    .line 315
    :cond_1
    invoke-static {v0}, Lcom/android/settings/widget/ChartSweepView;->c(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v1

    iput v1, v0, Lcom/android/settings/widget/ChartSweepView;->j:F

    .line 321
    :cond_2
    :goto_2
    iget v1, v0, Lcom/android/settings/widget/ChartSweepView;->j:F

    iget v2, v0, Lcom/android/settings/widget/ChartSweepView;->i:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/settings/widget/ChartSweepView;->j:F

    .line 324
    iget v1, v0, Lcom/android/settings/widget/ChartSweepView;->v:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_4

    .line 325
    iput v3, v0, Lcom/android/settings/widget/ChartSweepView;->v:F

    .line 326
    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    .line 327
    iget-object v1, v0, Lcom/android/settings/widget/ChartSweepView;->t:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v1, :cond_3

    invoke-direct {v1}, Lcom/android/settings/widget/ChartSweepView;->d()V

    .line 328
    :cond_3
    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->u:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .locals 6

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 562
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 563
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 564
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetInset()F
    .locals 3

    .line 182
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 185
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float v0, v0

    add-float/2addr v2, v0

    return v2

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 189
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private getValidAfterDynamic()J
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->t:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method private getValidBeforeDynamic()J
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->u:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 631
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 632
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getAxis()Lcom/android/settings/widget/a;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    return-object v0
.end method

.method public getFollowAxis()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    return v0
.end method

.method public getLabelValue()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->q:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoint()F
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->p:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/a;->a(J)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->p:J

    return-wide v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 334
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 335
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 707
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v0

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v1

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    if-eqz v2, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 716
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->j:F

    const/high16 v4, 0x44800000    # 1024.0f

    sub-float/2addr v3, v4

    .line 717
    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->v:F

    add-float/2addr v3, v5

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 719
    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    invoke-virtual {v3, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 721
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 722
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->j:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->g:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 727
    :goto_0
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 728
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    .line 729
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 728
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 735
    :goto_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 701
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 702
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->d()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    if-eqz p1, :cond_0

    .line 642
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 643
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iput p2, v1, Landroid/graphics/Point;->x:I

    .line 646
    iput p2, v1, Landroid/graphics/Point;->y:I

    .line 647
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 648
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 652
    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 653
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 656
    :goto_0
    iget p1, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 657
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 659
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    neg-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 660
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 661
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 662
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 664
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    .line 666
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    neg-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 667
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 668
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 669
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 672
    :goto_1
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result p1

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v0

    .line 677
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    if-nez v1, :cond_2

    mul-int/lit8 p2, p1, 0x3

    .line 679
    invoke-virtual {p0, p2, v0}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 682
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p1, p1, 0x2

    .line 683
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 684
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    .line 687
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 688
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 690
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 p1, p1, 0x2

    .line 691
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 692
    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 695
    :goto_2
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->offset(II)V

    .line 696
    iget-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_6

    if-eq v2, v3, :cond_1

    return v1

    .line 479
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->x:I

    if-ne v0, v3, :cond_2

    return v4

    .line 483
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 486
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1594
    iget-wide v7, p0, Lcom/android/settings/widget/ChartSweepView;->r:J

    iget-wide v9, p0, Lcom/android/settings/widget/ChartSweepView;->s:J

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v1

    .line 1596
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v9

    iget v11, p0, Lcom/android/settings/widget/ChartSweepView;->f:F

    .line 1595
    invoke-direct/range {v5 .. v11}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v2

    .line 1598
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1599
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 488
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    .line 491
    :cond_4
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    if-ne v2, v4, :cond_5

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 493
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->z:F

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->A:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr p1, v5

    add-float/2addr v3, p1

    .line 495
    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {v3, p1, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    sub-float v1, p1, v2

    .line 497
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 499
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/android/settings/widget/a;->b(F)J

    move-result-wide v0

    goto :goto_0

    .line 501
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 502
    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->z:F

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->A:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr p1, v5

    add-float/2addr v3, p1

    .line 504
    iget p1, v1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v3, p1, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    sub-float v1, p1, v2

    .line 506
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 508
    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->o:Lcom/android/settings/widget/a;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/android/settings/widget/a;->b(F)J

    move-result-wide v0

    .line 512
    :goto_0
    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->y:J

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    .line 513
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    return v4

    .line 519
    :cond_6
    iget p1, p0, Lcom/android/settings/widget/ChartSweepView;->x:I

    if-ne p1, v3, :cond_7

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->performClick()Z

    goto :goto_1

    :cond_7
    if-ne p1, v4, :cond_8

    const/4 p1, 0x0

    .line 522
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->z:F

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->A:Landroid/view/MotionEvent;

    .line 524
    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->q:J

    iput-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->p:J

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    .line 531
    :cond_8
    :goto_1
    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->x:I

    return v4

    .line 435
    :cond_9
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    if-ne v2, v4, :cond_c

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    move v2, v4

    goto :goto_2

    :cond_a
    move v2, v1

    .line 437
    :goto_2
    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    invoke-virtual {v6}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    :goto_3
    move v5, v4

    goto :goto_5

    :cond_b
    move v5, v1

    goto :goto_5

    .line 440
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v6, v6, 0x8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_d

    move v2, v4

    goto :goto_4

    :cond_d
    move v2, v1

    .line 441
    :goto_4
    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->n:Landroid/text/DynamicLayout;

    invoke-virtual {v6}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    goto :goto_3

    .line 445
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v6

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 449
    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->B:[Lcom/android/settings/widget/ChartSweepView;

    array-length v8, v7

    move v9, v1

    :goto_6
    if-ge v9, v8, :cond_10

    aget-object v10, v7, v9

    .line 1411
    invoke-direct {p0, v6}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/view/MotionEvent;)F

    move-result v11

    .line 1412
    invoke-direct {v10, v6}, Lcom/android/settings/widget/ChartSweepView;->a(Landroid/view/MotionEvent;)F

    move-result v10

    cmpg-float v10, v10, v11

    if-gez v10, :cond_e

    move v10, v4

    goto :goto_7

    :cond_e
    move v10, v1

    :goto_7
    if-eqz v10, :cond_f

    return v1

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_10
    if-eqz v2, :cond_13

    .line 456
    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    if-ne v1, v4, :cond_11

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->z:F

    goto :goto_8

    .line 459
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->z:F

    .line 461
    :goto_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->A:Landroid/view/MotionEvent;

    .line 462
    iput v4, p0, Lcom/android/settings/widget/ChartSweepView;->x:I

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result p1

    if-nez p1, :cond_12

    .line 466
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    :cond_12
    return v4

    :cond_13
    if-eqz v5, :cond_14

    .line 471
    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->x:I

    return v4

    .line 474
    :cond_14
    iput v1, p0, Lcom/android/settings/widget/ChartSweepView;->x:I

    return v1
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    return-void
.end method

.method public setDragInterval(J)V
    .locals 0

    .line 174
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->y:J

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    return-void
.end method

.method public setFollowAxis(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->h:I

    return-void
.end method

.method public setLabelColor(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->l:I

    .line 255
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->b()V

    return-void
.end method

.method public setLabelMinSize(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->i:I

    .line 245
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->b()V

    return-void
.end method

.method public setLabelTemplate(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->k:I

    .line 250
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->b()V

    return-void
.end method

.method public setNeighborMargin(F)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->f:F

    return-void
.end method

.method public varargs setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->B:[Lcom/android/settings/widget/ChartSweepView;

    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0

    .line 393
    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->g:I

    return-void
.end method

.method public setValue(J)V
    .locals 0

    .line 358
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->p:J

    .line 359
    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->c()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 342
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 344
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
