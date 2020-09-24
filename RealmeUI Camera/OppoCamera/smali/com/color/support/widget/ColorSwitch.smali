.class public Lcom/color/support/widget/ColorSwitch;
.super Landroid/widget/CompoundButton;
.source "ColorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSwitch$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Landroid/graphics/drawable/Drawable;

.field private P:Landroid/graphics/drawable/Drawable;

.field private Q:Landroid/graphics/drawable/Drawable;

.field private R:Landroid/animation/AnimatorSet;

.field private S:Landroid/animation/AnimatorSet;

.field private T:Landroid/animation/AnimatorSet;

.field private U:Landroid/animation/AnimatorSet;

.field private V:Lcom/color/support/d/i;

.field private W:I

.field private a:I

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Lcom/color/support/widget/ColorSwitch$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/graphics/RectF;

.field private s:Landroid/graphics/RectF;

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->s:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    iput v0, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    .line 72
    iput v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    .line 80
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    .line 97
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    .line 107
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->ac:Z

    .line 127
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setSoundEffectsEnabled(Z)V

    .line 128
    invoke-static {p0, v0}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    .line 129
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorSwitchStyle:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 130
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    .line 131
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    .line 132
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    .line 133
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barUncheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    .line 134
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barCheckedColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    .line 135
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    .line 136
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->g:I

    .line 137
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->h:I

    .line 138
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->i:I

    .line 139
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_circlePadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    .line 140
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_loadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    .line 141
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->j:I

    .line 142
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_barCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->k:I

    .line 143
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->l:I

    .line 144
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_innerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->m:I

    .line 145
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleUncheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->n:I

    .line 146
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_outerCircleCheckedDisabledColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->o:I

    .line 148
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedCheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->M:Landroid/graphics/drawable/Drawable;

    .line 149
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedUncheckedDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->N:Landroid/graphics/drawable/Drawable;

    .line 150
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingCheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->O:Landroid/graphics/drawable/Drawable;

    .line 151
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingUncheckedBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->P:Landroid/graphics/drawable/Drawable;

    .line 152
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSwitch_themedLoadingDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorSwitch;->Q:Landroid/graphics/drawable/Drawable;

    .line 154
    iget p3, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    .line 155
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_switch_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    .line 157
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$bool;->color_switch_theme_enable:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    .line 158
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->e()V

    .line 159
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->f()V

    .line 161
    invoke-static {}, Lcom/color/support/d/i;->a()Lcom/color/support/d/i;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    .line 162
    iget-object p2, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    sget p3, Lcolor/support/v7/appcompat/R$raw;->color_switch_sound_on:I

    invoke-virtual {p2, p1, p3}, Lcom/color/support/d/i;->a(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->W:I

    .line 163
    iget-object p2, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    sget p3, Lcolor/support/v7/appcompat/R$raw;->color_switch_sound_off:I

    invoke-virtual {p2, p1, p3}, Lcom/color/support/d/i;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->aa:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 341
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 342
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 343
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 234
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->V:Lcom/color/support/d/i;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->W:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->aa:I

    :goto_0
    move v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/color/support/d/i;->a(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 363
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->k:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->j:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    .line 368
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    int-to-float v4, v1

    int-to-float v5, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v10, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(Z)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    .line 287
    invoke-static {v2, v1, v3, v0}, Landroidx/core/g/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x2

    .line 289
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "circleScaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x85

    .line 290
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 292
    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-static {p0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 293
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0xfa

    .line 294
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 296
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getCircleTranslation()I

    move-result v5

    .line 298
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    :cond_0
    move v6, v7

    goto :goto_0

    .line 299
    :cond_1
    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    .line 301
    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    .line 303
    :goto_0
    new-array v8, v2, [I

    aput v5, v8, v7

    const/4 v5, 0x1

    aput v6, v8, v5

    const-string v6, "circleTranslation"

    invoke-static {p0, v6, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x17f

    .line 304
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 306
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getInnerCircleAlpha()F

    move-result v8

    if-eqz p1, :cond_3

    move v0, v1

    .line 308
    :cond_3
    new-array v1, v2, [F

    aput v8, v1, v7

    aput v0, v1, v5

    const-string v0, "innerCircleAlpha"

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x64

    .line 309
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 311
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getBarColor()I

    move-result v1

    if-eqz p1, :cond_4

    .line 312
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    .line 313
    :goto_1
    new-array v2, v2, [I

    aput v1, v2, v7

    aput p1, v2, v5

    const-string p1, "barColor"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1c2

    .line 314
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 318
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 319
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 321
    iget-object p1, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 3

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 374
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 375
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->o:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->n:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 380
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 411
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 412
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->h:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 413
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->m:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->l:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 418
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->s:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->I:Landroid/graphics/Paint;

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->J:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->K:Landroid/graphics/Paint;

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 5

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->z:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 433
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 434
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 435
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 437
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->A:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 438
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 440
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private f()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->g()V

    .line 174
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->h()V

    .line 175
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->i()V

    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 7

    .line 444
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 448
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 449
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 450
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 451
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 452
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 454
    iget v6, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {p1, v6, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 455
    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private g()V
    .locals 8

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 179
    invoke-static {v0, v1, v2, v3}, Landroidx/core/g/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 180
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->S:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    .line 181
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "circleScale"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x1b1

    .line 183
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 185
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "loadingScale"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 186
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x226

    .line 187
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 189
    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "loadingAlpha"

    invoke-static {p0, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 190
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 194
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v4, 0x320

    .line 195
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->S:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private h()V
    .locals 4

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 206
    invoke-static {v0, v1, v2, v3}, Landroidx/core/g/b/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorSwitch;->T:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    .line 208
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "loadingAlpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 209
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x64

    .line 210
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 212
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->T:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private i()V
    .locals 3

    .line 216
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSwitch;->U:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 217
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "loadingRotation"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    .line 218
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0x320

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private j()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    const/4 v1, 0x0

    .line 239
    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    .line 240
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorSwitch;->setTactileFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method private k()I
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->O:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->P:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->M:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->N:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-object v0
.end method

.method private m()V
    .locals 6

    .line 387
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 390
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    goto :goto_0

    .line 392
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 393
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    goto :goto_1

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 398
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    .line 400
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->p:I

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 401
    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 404
    :goto_1
    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 406
    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private n()V
    .locals 5

    .line 423
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 424
    iget-object v1, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 425
    iget-object v2, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 426
    iget-object v3, p0, Lcom/color/support/widget/ColorSwitch;->r:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/color/support/widget/ColorSwitch;->f:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 427
    iget-object v4, p0, Lcom/color/support/widget/ColorSwitch;->s:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private o()Z
    .locals 3

    .line 673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->G:Z

    return v0
.end method

.method public b()V
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    .line 482
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->U:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->S:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 487
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->ad:Lcom/color/support/widget/ColorSwitch$a;

    if-eqz v0, :cond_1

    .line 488
    invoke-interface {v0}, Lcom/color/support/widget/ColorSwitch$a;->a()V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 666
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->b()V

    .line 669
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 661
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBarColor()I
    .locals 1

    .line 615
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    return v0
.end method

.method public getCircleScale()F
    .locals 1

    .line 629
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    return v0
.end method

.method public getCircleScaleX()F
    .locals 1

    .line 597
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    return v0
.end method

.method public getCircleTranslation()I
    .locals 1

    .line 588
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    return v0
.end method

.method public getInnerCircleAlpha()F
    .locals 1

    .line 606
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    return v0
.end method

.method public getLoadingAlpha()F
    .locals 1

    .line 647
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->A:F

    return v0
.end method

.method public getLoadingRotation()F
    .locals 1

    .line 656
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    return v0
.end method

.method public getLoadingScale()F
    .locals 1

    .line 638
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->z:F

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 552
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 553
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 516
    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->F:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 545
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->F:Z

    .line 547
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->a(Landroid/graphics/Canvas;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->f(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->m()V

    .line 331
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->n()V

    .line 332
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->b(Landroid/graphics/Canvas;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->e(Landroid/graphics/Canvas;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->c(Landroid/graphics/Canvas;)V

    .line 335
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->d(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 539
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 522
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 523
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->a:I

    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->q:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->b:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorSwitch;->setMeasuredDimension(II)V

    .line 525
    iget-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->ac:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 526
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->ac:Z

    .line 527
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 528
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    :goto_0
    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    goto :goto_1

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    :cond_2
    iput p2, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    .line 532
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    .line 533
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    :goto_3
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 464
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    .line 465
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->G:Z

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->b()V

    return v2

    .line 472
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->C:Z

    if-eqz v0, :cond_2

    return v2

    .line 475
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBarColor(I)V
    .locals 0

    .line 610
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->y:I

    .line 611
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 258
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->H:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 259
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    .line 260
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 262
    iget-object v0, p0, Lcom/color/support/widget/ColorSwitch;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->F:Z

    if-eqz v0, :cond_2

    .line 265
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->b(Z)V

    goto :goto_5

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v0, v1

    goto :goto_0

    .line 268
    :cond_3
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setCircleTranslation(I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 270
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->u:I

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setCircleTranslation(I)V

    :goto_2
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 272
    :goto_3
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setInnerCircleAlpha(F)V

    if-eqz p1, :cond_7

    .line 273
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->c:I

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/color/support/widget/ColorSwitch;->d:I

    :goto_4
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setBarColor(I)V

    .line 278
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    if-eqz v0, :cond_9

    .line 279
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSwitch;->a(Z)V

    .line 280
    iput-boolean v1, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    .line 282
    :cond_9
    invoke-direct {p0}, Lcom/color/support/widget/ColorSwitch;->j()V

    .line 283
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleScale(F)V
    .locals 0

    .line 619
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->w:F

    .line 620
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleScaleX(F)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->v:F

    .line 593
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setCircleTranslation(I)V
    .locals 0

    .line 583
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->t:I

    .line 584
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 625
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public setInnerCircleAlpha(F)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->x:F

    .line 602
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingAlpha(F)V
    .locals 0

    .line 642
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->A:F

    .line 643
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingRotation(F)V
    .locals 0

    .line 651
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->B:F

    .line 652
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingScale(F)V
    .locals 0

    .line 633
    iput p1, p0, Lcom/color/support/widget/ColorSwitch;->z:F

    .line 634
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->invalidate()V

    return-void
.end method

.method public setLoadingStyle(Z)V
    .locals 0

    .line 579
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->D:Z

    return-void
.end method

.method public setOnLoadingStateChangedListener(Lcom/color/support/widget/ColorSwitch$a;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/color/support/widget/ColorSwitch;->ad:Lcom/color/support/widget/ColorSwitch$a;

    return-void
.end method

.method public setShouldPlaySound(Z)V
    .locals 0

    .line 559
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->ab:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSwitch;->G:Z

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    return-void
.end method
