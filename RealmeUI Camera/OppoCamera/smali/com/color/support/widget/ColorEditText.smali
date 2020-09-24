.class public Lcom/color/support/widget/ColorEditText;
.super Landroidx/appcompat/widget/j;
.source "ColorEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorEditText$a;,
        Lcom/color/support/widget/ColorEditText$e;,
        Lcom/color/support/widget/ColorEditText$b;,
        Lcom/color/support/widget/ColorEditText$c;,
        Lcom/color/support/widget/ColorEditText$d;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/graphics/RectF;

.field private G:Landroid/content/res/ColorStateList;

.field private H:Landroid/content/res/ColorStateList;

.field private I:I

.field private J:I

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Landroid/animation/ValueAnimator;

.field private O:Landroid/animation/ValueAnimator;

.field private P:Landroid/animation/ValueAnimator;

.field private Q:Z

.field private R:Z

.field private S:Landroid/graphics/Paint;

.field private T:Landroid/graphics/Paint;

.field private U:Landroid/graphics/Paint;

.field private V:I

.field private W:F

.field private final a:Lcom/color/support/widget/b$a;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Lcom/color/support/widget/h;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/view/animation/Interpolator;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/color/support/widget/ColorEditText$d;

.field private j:Lcom/color/support/widget/ColorEditText$c;

.field private k:I

.field private l:Landroid/content/Context;

.field private m:I

.field private n:Z

.field private o:Lcom/color/support/widget/ColorEditText$a;

.field private p:Ljava/lang/String;

.field private q:Lcom/color/support/widget/ColorEditText$e;

.field private r:Ljava/lang/CharSequence;

.field private s:Z

.field private t:Ljava/lang/CharSequence;

.field private u:Z

.field private v:Landroid/graphics/drawable/GradientDrawable;

.field private w:I

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lcom/color/support/widget/b$a;

    invoke-direct {v0, p0}, Lcom/color/support/widget/b$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    .line 70
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    .line 71
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->i:Lcom/color/support/widget/ColorEditText$d;

    .line 75
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->j:Lcom/color/support/widget/ColorEditText$c;

    .line 79
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->n:Z

    .line 81
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->p:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    const/4 v1, 0x3

    .line 97
    iput v1, p0, Lcom/color/support/widget/ColorEditText;->C:I

    .line 101
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->F:Landroid/graphics/RectF;

    .line 140
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->l:Landroid/content/Context;

    .line 141
    invoke-static {p0, v0}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    .line 142
    sget-object v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 143
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_quickDelete:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 144
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorEditTextErrorColor:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcolor/support/v7/appcompat/R$color;->color_error_color_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 145
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorEditText;->setFastDeletable(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_edit_text_delete_icon_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$drawable;->color_edit_text_delete_icon_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->e:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    .line 159
    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    :cond_1
    new-instance v0, Lcom/color/support/widget/ColorEditText$a;

    invoke-direct {v0, p0, p0}, Lcom/color/support/widget/ColorEditText$a;-><init>(Lcom/color/support/widget/ColorEditText;Landroid/view/View;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    .line 164
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    invoke-static {p0, v0}, Landroidx/core/g/u;->a(Landroid/view/View;Landroidx/core/g/a;)V

    const/4 v0, 0x1

    .line 165
    invoke-static {p0, v0}, Landroidx/core/g/u;->b(Landroid/view/View;I)V

    .line 166
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->l:Landroid/content/Context;

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_slide_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->p:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText$a;->a()V

    .line 169
    new-instance v0, Lcom/color/support/widget/h;

    invoke-direct {v0, p0}, Lcom/color/support/widget/h;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    iget-object v5, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget v7, p0, Lcom/color/support/widget/ColorEditText;->C:I

    iget v8, p0, Lcom/color/support/widget/ColorEditText;->x:I

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getCornerRadiiAsArray()[F

    move-result-object v9

    iget-object v10, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual/range {v5 .. v10}, Lcom/color/support/widget/h;->a(III[FLcom/color/support/widget/b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;F)F
    .locals 0

    .line 51
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->W:F

    return p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->V:I

    return p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;)Lcom/color/support/widget/b$a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    return-object p0
.end method

.method private a(F)V
    .locals 4

    .line 1043
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->j()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1047
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    .line 1048
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1049
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1050
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$3;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v3}, Lcom/color/support/widget/b$a;->j()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1060
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->a(Landroid/view/animation/Interpolator;)V

    .line 179
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->b(Landroid/view/animation/Interpolator;)V

    .line 180
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->b(I)V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 183
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->b:Landroid/view/animation/Interpolator;

    .line 184
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->b:Landroid/view/animation/Interpolator;

    .line 187
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    .line 190
    :goto_0
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText:[I

    sget v2, Lcolor/support/v7/appcompat/R$style;->Widget_ColorSupport_EditText_HintAnim_Line:I

    .line 191
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 196
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintEnabled:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    .line 197
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge p3, v2, :cond_1

    .line 198
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    .line 199
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/color/support/widget/ColorEditText;->setPadding(IIII)V

    return-void

    .line 203
    :cond_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 204
    iget-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz p3, :cond_2

    .line 205
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorHintAnimationEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    .line 209
    :cond_2
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_rectModePaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->aa:I

    .line 211
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_cornerRadius:I

    .line 212
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 213
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->y:F

    .line 214
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->z:F

    .line 215
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->A:F

    .line 216
    iput p3, p0, Lcom/color/support/widget/ColorEditText;->B:F

    .line 218
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    sget v1, Lcolor/support/v7/appcompat/R$attr;->colorPrimaryColor:I

    .line 219
    invoke-static {p1, v1, v0}, Lcom/color/support/d/c;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->J:I

    .line 220
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeWidth:I

    .line 221
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->C:I

    .line 222
    iget p3, p0, Lcom/color/support/widget/ColorEditText;->C:I

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->D:I

    .line 224
    iget-boolean p3, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz p3, :cond_3

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_label_cutout_padding:I

    .line 227
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->w:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_top:I

    .line 230
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->ab:I

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_textinput_line_padding_middle:I

    .line 233
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->ac:I

    .line 236
    :cond_3
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorBackgroundMode:I

    .line 237
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 239
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setBoxBackgroundMode(I)V

    .line 241
    iget p3, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    .line 242
    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_4
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 246
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_android_textColorHint:I

    .line 247
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    .line 250
    :cond_5
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorDefaultStrokeColor:I

    .line 251
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_default:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->I:I

    .line 252
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorDisabledStrokeColor:I

    .line 253
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_textinput_stroke_color_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorEditText;->K:I

    .line 255
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_collapsedTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 257
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorEditText_colorStrokeColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 259
    invoke-virtual {p0, p3, v1}, Lcom/color/support/widget/ColorEditText;->a(ILandroid/content/res/ColorStateList;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_6

    const-string p1, "sans-serif-medium"

    .line 261
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 262
    iget-object p3, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p3, p1}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Typeface;)V

    .line 265
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    .line 268
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->I:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->C:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    .line 271
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->K:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->C:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 273
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    .line 274
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->J:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    iget p2, p0, Lcom/color/support/widget/ColorEditText;->C:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->g()V

    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 2

    .line 901
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 902
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 903
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 904
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->w:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static synthetic a(Lcom/color/support/widget/ColorEditText;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->b(Z)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .line 593
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    .line 594
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 596
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 597
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v3, v2}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    .line 598
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/b$a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-nez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->K:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    .line 602
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->K:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/color/support/widget/b$a;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 604
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v2, v0}, Lcom/color/support/widget/b$a;->a(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    .line 606
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 611
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-nez p2, :cond_7

    .line 612
    :cond_4
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->d(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 607
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-eqz p2, :cond_7

    .line 608
    :cond_6
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->c(Z)V

    .line 615
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    if-eqz p1, :cond_8

    .line 616
    iget-object p2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/h;->a(Lcom/color/support/widget/b$a;)V

    :cond_8
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 417
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/color/support/widget/ColorEditText;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText;->p:Ljava/lang/String;

    return-object p0
.end method

.method private b(Z)V
    .locals 3

    .line 303
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 307
    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-nez v0, :cond_2

    .line 311
    invoke-virtual {p0, v2, v2, p1, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 312
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    goto :goto_0

    .line 314
    :cond_1
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-eqz p1, :cond_2

    .line 315
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 316
    iput-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 408
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 409
    move-object v1, v0

    check-cast v1, Landroid/text/Editable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const-string v0, ""

    .line 410
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->c()V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 864
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    if-eqz p1, :cond_1

    .line 865
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(F)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/b$a;->b(F)V

    :goto_0
    const/4 p1, 0x0

    .line 869
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    .line 870
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 871
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->m()V

    :cond_2
    return-void
.end method

.method private d()V
    .locals 0

    .line 500
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->f()V

    .line 501
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBoxBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorEditText"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->N:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 992
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    if-eqz p1, :cond_2

    .line 993
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(F)V

    goto :goto_0

    .line 995
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/b$a;->b(F)V

    .line 997
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/color/support/widget/b;

    invoke-virtual {p1}, Lcom/color/support/widget/b;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 998
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->n()V

    :cond_3
    const/4 p1, 0x1

    .line 1000
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    return-void
.end method

.method private e()V
    .locals 4

    .line 505
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getModePaddingTop()I

    move-result v0

    .line 506
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v1

    .line 507
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v2

    .line 508
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/g/u;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 523
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 525
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/b;

    if-nez v0, :cond_1

    .line 530
    new-instance v0, Lcom/color/support/widget/b;

    invoke-direct {v0}, Lcom/color/support/widget/b;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 533
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 562
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->d()V

    .line 563
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->a(F)V

    .line 565
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getGravity()I

    move-result v0

    .line 566
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/color/support/widget/b$a;->b(I)V

    .line 568
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/b$a;->a(I)V

    .line 570
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->G:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v0, 0x0

    .line 574
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/color/support/widget/ColorEditText;->r:Ljava/lang/CharSequence;

    .line 577
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->r:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x1

    .line 580
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->u:Z

    const/4 v1, 0x0

    .line 582
    invoke-direct {p0, v1, v0}, Lcom/color/support/widget/ColorEditText;->a(ZZ)V

    .line 583
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_2

    .line 584
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->e()V

    :cond_2
    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    .line 696
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 700
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->ab:I

    return v0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 484
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 3

    const/16 v0, 0x8

    .line 549
    new-array v0, v0, [F

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->z:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->y:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->B:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->A:F

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method private getModePaddingTop()I
    .locals 3

    .line 512
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 514
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->aa:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1}, Lcom/color/support/widget/b$a;->d()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 516
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->ab:I

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1}, Lcom/color/support/widget/b$a;->e()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->ac:I

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .line 682
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 688
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoundsTop()I

    move-result v1

    .line 689
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    .line 690
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v3

    .line 691
    iget-object v4, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 692
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()I
    .locals 2

    .line 725
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingTop()I

    move-result v0

    return v0

    .line 727
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 729
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method private j()V
    .locals 3

    .line 736
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    if-nez v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    .line 744
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 743
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 738
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->C:I

    :cond_2
    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->j()V

    .line 757
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->C:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->E:I

    if-eqz v1, :cond_1

    .line 758
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 761
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    return-void
.end method

.method private l()Z
    .locals 3

    .line 876
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 880
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/color/support/widget/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private m()V
    .locals 2

    .line 885
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->F:Landroid/graphics/RectF;

    .line 889
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/RectF;)V

    .line 890
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Landroid/graphics/RectF;)V

    .line 891
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Lcom/color/support/widget/b;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/b;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 895
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Lcom/color/support/widget/b;

    invoke-virtual {v0}, Lcom/color/support/widget/b;->c()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 950
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    if-nez v0, :cond_3

    .line 956
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->q()V

    goto :goto_0

    .line 959
    :cond_1
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    if-eqz v0, :cond_3

    .line 960
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->r()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 964
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->W:F

    :cond_3
    :goto_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 974
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->K:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->E:I

    goto :goto_0

    .line 976
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->E:I

    goto :goto_0

    .line 979
    :cond_2
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->I:I

    iput v0, p0, Lcom/color/support/widget/ColorEditText;->E:I

    .line 981
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->k()V

    :cond_3
    :goto_1
    return-void
.end method

.method private q()V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    .line 1006
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1007
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1008
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$1;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$1;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/16 v0, 0xff

    .line 1017
    iput v0, p0, Lcom/color/support/widget/ColorEditText;->V:I

    .line 1018
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1019
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->O:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private r()V
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    .line 1026
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1027
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1028
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorEditText$2;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorEditText$2;-><init>(Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1038
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 1039
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->R:Z

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private s()Z
    .locals 2

    .line 1064
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    .line 629
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/b$a;->a(Ljava/lang/CharSequence;)V

    .line 630
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-nez p1, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->m()V

    .line 633
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    if-eqz p1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/h;->b(Lcom/color/support/widget/b$a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->n:Z

    return-void
.end method

.method public a(ILandroid/content/res/ColorStateList;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/b$a;->a(ILandroid/content/res/ColorStateList;)V

    .line 676
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->p()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorEditText;->H:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Z)V

    .line 678
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v0, p1, p2}, Lcom/color/support/widget/h;->a(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 589
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorEditText;->a(ZZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->o:Lcom/color/support/widget/ColorEditText$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 471
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 453
    invoke-super {p0}, Landroidx/appcompat/widget/j;->dispatchStartTemporaryDetach()V

    .line 454
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->n:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->onStartTemporaryDetach()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 774
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 775
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 776
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 777
    iget-boolean v1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v1}, Lcom/color/support/widget/h;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, p1}, Lcom/color/support/widget/b$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v1, p1, v2}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;Lcom/color/support/widget/b$a;)V

    .line 784
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 785
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_3

    .line 786
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    .line 788
    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v1}, Lcom/color/support/widget/h;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 789
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 791
    :cond_4
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/color/support/widget/ColorEditText;->E:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V

    .line 794
    :cond_5
    :goto_1
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 795
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->D:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 796
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v2

    sub-int v5, v2, v1

    .line 797
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->V:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 798
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v7, 0x0

    int-to-float v10, v5

    .line 799
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->U:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 800
    :cond_6
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v1}, Lcom/color/support/widget/h;->a()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v7, 0x0

    int-to-float v12, v5

    .line 801
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    int-to-float v9, v1

    iget-object v11, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v12

    move v10, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 802
    iget v1, p0, Lcom/color/support/widget/ColorEditText;->W:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v11, v1, v2

    iget-object v13, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 804
    :cond_7
    iget-object v3, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v6

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->W:F

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    iget-object v8, p0, Lcom/color/support/widget/ColorEditText;->T:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/color/support/widget/ColorEditText;->S:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 807
    :cond_8
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 809
    :cond_9
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 913
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 914
    invoke-super {p0}, Landroidx/appcompat/widget/j;->drawableStateChanged()V

    return-void

    .line 918
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->Q:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 924
    iput-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->Q:Z

    .line 925
    invoke-super {p0}, Landroidx/appcompat/widget/j;->drawableStateChanged()V

    .line 926
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getDrawableState()[I

    move-result-object v1

    .line 929
    iget-boolean v2, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 931
    invoke-static {p0}, Landroidx/core/g/u;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->a(Z)V

    .line 934
    :cond_3
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->o()V

    .line 935
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_4

    .line 936
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    .line 937
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->p()V

    .line 938
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    if-eqz v0, :cond_4

    .line 939
    invoke-virtual {v0, v1}, Lcom/color/support/widget/b$a;->a([I)Z

    move-result v0

    or-int/2addr v0, v3

    .line 940
    iget-object v2, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/h;->a([I)V

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    .line 944
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->invalidate()V

    .line 946
    :cond_5
    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->Q:Z

    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .locals 2

    .line 715
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 718
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 538
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    return v0
.end method

.method public getDeleteButtonLeft()I
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 640
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLabelMarginTop()I
    .locals 2

    .line 707
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {v0}, Lcom/color/support/widget/b$a;->d()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 814
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onDraw(Landroid/graphics/Canvas;)V

    .line 815
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/h;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/j;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 325
    iget-boolean p2, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz p2, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->b(Z)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 433
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 434
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->j:Lcom/color/support/widget/ColorEditText$c;

    if-eqz p1, :cond_0

    .line 435
    invoke-interface {p1}, Lcom/color/support/widget/ColorEditText$c;->a()Z

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 439
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 825
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/j;->onLayout(ZIIII)V

    .line 826
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_3

    .line 827
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->v:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->h()V

    .line 830
    :cond_0
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eqz p1, :cond_1

    .line 831
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->e()V

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result p1

    .line 835
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 837
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->i()I

    move-result p3

    .line 838
    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    .line 840
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingTop()I

    move-result p5

    .line 842
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 838
    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/color/support/widget/b$a;->a(IIII)V

    .line 846
    iget-object p4, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result p5

    .line 847
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    .line 846
    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/color/support/widget/b$a;->b(IIII)V

    .line 848
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1}, Lcom/color/support/widget/b$a;->m()V

    .line 853
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->L:Z

    if-nez p1, :cond_2

    .line 854
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->m()V

    .line 856
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    iget-object p2, p0, Lcom/color/support/widget/ColorEditText;->a:Lcom/color/support/widget/b$a;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/h;->c(Lcom/color/support/widget/b$a;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 820
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 340
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 341
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorEditText;->k:I

    sub-int/2addr v0, v1

    .line 342
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorEditText;->k:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 349
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->s()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_1

    :goto_0
    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    if-le v1, v0, :cond_1

    goto :goto_0

    .line 356
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    if-eq v1, v5, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    goto :goto_2

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 396
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    if-ltz v2, :cond_5

    .line 386
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_b

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 388
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_b

    .line 369
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    if-eqz v0, :cond_b

    .line 370
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 371
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_7
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->i:Lcom/color/support/widget/ColorEditText$d;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/color/support/widget/ColorEditText$d;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 379
    :cond_8
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->c()V

    .line 380
    iput-boolean v3, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    return v5

    :cond_9
    if-eqz v0, :cond_b

    .line 359
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->h:Z

    if-eqz v0, :cond_b

    .line 360
    iput-boolean v5, p0, Lcom/color/support/widget/ColorEditText;->f:Z

    .line 361
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 362
    invoke-virtual {p0, v4, v4, p1, v4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return v5

    .line 403
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/j;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .line 492
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->x:I

    if-ne p1, v0, :cond_0

    return-void

    .line 495
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->x:I

    .line 496
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->d()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .line 542
    iget v0, p0, Lcom/color/support/widget/ColorEditText;->J:I

    if-eq v0, p1, :cond_0

    .line 543
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->J:I

    .line 544
    invoke-direct {p0}, Lcom/color/support/widget/ColorEditText;->p()V

    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 422
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    .line 424
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->k:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 426
    iput p1, p0, Lcom/color/support/widget/ColorEditText;->k:I

    :goto_0
    return-void
.end method

.method public setErrorState(Z)V
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/color/support/widget/ColorEditText;->ad:Lcom/color/support/widget/h;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/h;->a(Z)V

    return-void
.end method

.method public setFastDeletable(Z)V
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eq v0, p1, :cond_1

    .line 288
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    .line 289
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->g:Z

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    if-nez p1, :cond_0

    .line 292
    new-instance p1, Lcom/color/support/widget/ColorEditText$e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/color/support/widget/ColorEditText$e;-><init>(Lcom/color/support/widget/ColorEditText;Lcom/color/support/widget/ColorEditText$1;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    .line 293
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->q:Lcom/color/support/widget/ColorEditText$e;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->oppo_edit_text_drawable_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorEditText;->m:I

    .line 297
    iget p1, p0, Lcom/color/support/widget/ColorEditText;->m:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setCompoundDrawablePadding(I)V

    :cond_1
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 648
    iget-boolean v0, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    if-eq p1, v0, :cond_4

    .line 649
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    .line 650
    iget-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->s:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 651
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->u:Z

    .line 652
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 653
    iget-object p1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 655
    :cond_0
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 659
    iget-object v1, p0, Lcom/color/support/widget/ColorEditText;->t:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 660
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setTopHint(Ljava/lang/CharSequence;)V

    .line 662
    :cond_2
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    .line 664
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->u:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setOnTextDeletedListener(Lcom/color/support/widget/ColorEditText$d;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->i:Lcom/color/support/widget/ColorEditText$d;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 444
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/j;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 445
    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->length()I

    move-result p2

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setTextDeletedListener(Lcom/color/support/widget/ColorEditText$c;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText;->j:Lcom/color/support/widget/ColorEditText$c;

    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 2

    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0

    .line 769
    iput-boolean p1, p0, Lcom/color/support/widget/ColorEditText;->M:Z

    return-void
.end method
