.class public Lcom/color/support/widget/ColorNumberPicker;
.super Landroid/widget/LinearLayout;
.source "ColorNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorNumberPicker$g;,
        Lcom/color/support/widget/ColorNumberPicker$a;,
        Lcom/color/support/widget/ColorNumberPicker$b;,
        Lcom/color/support/widget/ColorNumberPicker$f;,
        Lcom/color/support/widget/ColorNumberPicker$c;,
        Lcom/color/support/widget/ColorNumberPicker$d;,
        Lcom/color/support/widget/ColorNumberPicker$e;
    }
.end annotation


# instance fields
.field private A:Lcom/color/support/widget/ColorNumberPicker$b;

.field private B:F

.field private C:J

.field private D:F

.field private E:Landroid/view/VelocityTracker;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Lcom/color/support/widget/ColorNumberPicker$a;

.field private Q:I

.field private R:Landroid/view/accessibility/AccessibilityManager;

.field private S:Lcom/color/support/d/i;

.field private T:Landroid/os/HandlerThread;

.field private U:Landroid/os/Handler;

.field private V:I

.field private W:I

.field private final a:I

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:F

.field private ar:F

.field private as:Ljava/lang/String;

.field private at:Z

.field private au:F

.field private av:F

.field private aw:F

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/widget/Scroller;

.field private final h:Landroid/widget/Scroller;

.field private final i:Lcom/color/support/widget/ColorNumberPicker$f;

.field private j:I

.field private k:I

.field private l:[Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/color/support/widget/ColorNumberPicker$e;

.field private q:Lcom/color/support/widget/ColorNumberPicker$d;

.field private r:Z

.field private s:Z

.field private t:Lcom/color/support/widget/ColorNumberPicker$c;

.field private u:J

.field private v:[I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 169
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorNumberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/widget/ColorNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/color/support/widget/ColorNumberPicker;->e:Landroid/util/SparseArray;

    const/4 p4, 0x1

    .line 104
    iput-boolean p4, p0, Lcom/color/support/widget/ColorNumberPicker;->r:Z

    const-wide/16 v0, 0x12c

    .line 107
    iput-wide v0, p0, Lcom/color/support/widget/ColorNumberPicker;->u:J

    const/high16 v0, -0x80000000

    .line 110
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->I:I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->Q:I

    const/4 v2, 0x5

    .line 135
    iput v2, p0, Lcom/color/support/widget/ColorNumberPicker;->V:I

    .line 136
    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->V:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    .line 178
    invoke-static {p0, v0}, Lcom/color/support/d/d;->a(Landroid/view/View;Z)V

    .line 179
    sget v2, Lcolor/support/v7/appcompat/R$style;->ColorNumberPicker:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 180
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    .line 181
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->R:Landroid/view/accessibility/AccessibilityManager;

    .line 182
    invoke-static {}, Lcom/color/support/d/i;->a()Lcom/color/support/d/i;

    move-result-object v2

    iput-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->S:Lcom/color/support/d/i;

    .line 183
    iget-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->S:Lcom/color/support/d/i;

    sget v3, Lcolor/support/v7/appcompat/R$raw;->color_numberpicker_click:I

    invoke-virtual {v2, p1, v3}, Lcom/color/support/d/i;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumberPicker;->aa:I

    .line 184
    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->V:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    .line 186
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 187
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMinHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->a:I

    .line 189
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMaxHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->b:I

    .line 191
    iget p3, p0, Lcom/color/support/widget/ColorNumberPicker;->a:I

    if-eq p3, v1, :cond_1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->b:I

    if-eq v2, v1, :cond_1

    if-gt p3, v2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_1
    :goto_0
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->c:I

    .line 198
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_internalMaxWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->j:I

    .line 200
    iget p3, p0, Lcom/color/support/widget/ColorNumberPicker;->c:I

    if-eq p3, v1, :cond_3

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->j:I

    if-eq v2, v1, :cond_3

    if-gt p3, v2, :cond_2

    goto :goto_1

    .line 202
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_3
    :goto_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorPickerAlignPosition:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->am:I

    .line 206
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_focusTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->an:I

    .line 207
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_startTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->d:I

    .line 208
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorPickerVisualWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->al:I

    .line 209
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorNOPickerPaddingLeft:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->ao:I

    .line 210
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorNOPickerPaddingRight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->ap:I

    .line 211
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorNormalTextColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 212
    sget v2, Lcolor/support/v7/appcompat/R$styleable;->ColorNumberPicker_colorFocusTextColor:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 213
    invoke-virtual {p0, p3, v1}, Lcom/color/support/widget/ColorNumberPicker;->a(II)V

    .line 214
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_numberpicker_ignore_bar_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->au:F

    .line 217
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_numberpicker_ignore_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->av:F

    .line 218
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_numberpicker_ignore_bar_spacing:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->aw:F

    .line 220
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->F:I

    .line 222
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->G:I

    .line 223
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->H:I

    .line 226
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 227
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->d:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    const-string p3, "sys-sans-en"

    .line 231
    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 232
    iget p3, p2, Landroid/graphics/Paint$FontMetrics;->top:F

    iput p3, p0, Lcom/color/support/widget/ColorNumberPicker;->aq:F

    .line 233
    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->ar:F

    .line 234
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->f:Landroid/graphics/Paint;

    .line 236
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    .line 237
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->h:Landroid/widget/Scroller;

    .line 238
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 239
    invoke-virtual {p0, p4}, Lcom/color/support/widget/ColorNumberPicker;->setImportantForAccessibility(I)V

    .line 241
    :cond_4
    new-instance p1, Lcom/color/support/widget/ColorNumberPicker$f;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorNumberPicker$f;-><init>(Lcom/color/support/widget/ColorNumberPicker;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->i:Lcom/color/support/widget/ColorNumberPicker$f;

    .line 242
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setWillNotDraw(Z)V

    .line 243
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private a(IIIII)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 840
    iget v5, v0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    iget v6, v0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    iget v7, v0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 842
    iget-object v8, v0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v7

    add-int/2addr v8, v5

    int-to-double v9, v4

    int-to-double v11, v6

    int-to-double v13, v7

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v15

    sub-double v13, v11, v13

    cmpl-double v13, v9, v13

    const/high16 v14, 0x40000000    # 2.0f

    if-lez v13, :cond_0

    move v13, v8

    int-to-double v7, v7

    mul-double/2addr v7, v15

    add-double/2addr v11, v7

    cmpg-double v7, v9, v11

    if-gez v7, :cond_1

    int-to-float v2, v1

    sub-int v1, v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    sub-int v3, v4, v6

    .line 844
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, v0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    return v2

    :cond_0
    move v13, v8

    .line 846
    :cond_1
    iget v1, v0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    sub-int v7, v6, v1

    const/high16 v8, 0x3f800000    # 1.0f

    if-gt v4, v7, :cond_2

    int-to-float v6, v2

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    sub-int v3, v4, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    div-float/2addr v2, v14

    add-float/2addr v6, v2

    return v6

    :cond_2
    add-int/2addr v6, v1

    if-lt v4, v6, :cond_3

    int-to-float v5, v2

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    sub-int v8, v13, v4

    int-to-float v3, v8

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    div-float/2addr v2, v14

    add-float/2addr v5, v2

    return v5

    :cond_3
    int-to-float v1, v3

    return v1
.end method

.method private a(IIF)I
    .locals 0

    sub-int p1, p2, p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private a(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 892
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 893
    invoke-static {p1, p3, p2}, Lcom/color/support/widget/ColorNumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    .line 248
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 656
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 657
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumberPicker;->r:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    return-void
.end method

.method private a(IZ)V
    .locals 1

    .line 922
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    if-ne v0, p1, :cond_0

    .line 923
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    return-void

    .line 927
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    if-eqz v0, :cond_1

    .line 928
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->e(I)I

    move-result p1

    goto :goto_0

    .line 930
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 931
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 934
    :goto_0
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    .line 935
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    if-eqz p2, :cond_2

    .line 938
    invoke-direct {p0, v0, p1}, Lcom/color/support/widget/ColorNumberPicker;->d(II)V

    .line 939
    iget-object p2, p0, Lcom/color/support/widget/ColorNumberPicker;->U:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 941
    iget-object p2, p0, Lcom/color/support/widget/ColorNumberPicker;->R:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 942
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 943
    iput v0, p2, Landroid/os/Message;->what:I

    .line 944
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 945
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->U:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 951
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    .line 952
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method private a(Z)V
    .locals 13

    .line 968
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->h:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 971
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->z:I

    if-eqz p1, :cond_1

    .line 973
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 975
    :cond_1
    iget-object v7, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 977
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method private a(ZJ)V
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->A:Lcom/color/support/widget/ColorNumberPicker$b;

    if-nez v0, :cond_0

    .line 1137
    new-instance v0, Lcom/color/support/widget/ColorNumberPicker$b;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorNumberPicker$b;-><init>(Lcom/color/support/widget/ColorNumberPicker;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->A:Lcom/color/support/widget/ColorNumberPicker$b;

    goto :goto_0

    .line 1139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1141
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->A:Lcom/color/support/widget/ColorNumberPicker$b;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorNumberPicker$b;->a(Lcom/color/support/widget/ColorNumberPicker$b;Z)V

    .line 1142
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->A:Lcom/color/support/widget/ColorNumberPicker$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/color/support/widget/ColorNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1076
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1077
    aget v1, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/color/support/widget/ColorNumberPicker;->c(II)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->f(I)V

    return-void
.end method

.method private a(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 277
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 278
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    rem-int/2addr p1, v2

    .line 279
    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 281
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 289
    invoke-virtual {p0, p1, v1}, Lcom/color/support/widget/ColorNumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method static synthetic a(Lcom/color/support/widget/ColorNumberPicker;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/color/support/widget/ColorNumberPicker;->N:Z

    return p0
.end method

.method static synthetic a(Lcom/color/support/widget/ColorNumberPicker;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->N:Z

    return p1
.end method

.method private b(I)I
    .locals 2

    .line 831
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    div-int/2addr p1, v0

    return p1
.end method

.method private b(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 875
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 876
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 885
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 883
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 881
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/color/support/widget/ColorNumberPicker;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->L:I

    return p0
.end method

.method private b()V
    .locals 5

    .line 900
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 901
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    .line 902
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 903
    :goto_0
    iget-object v3, p0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 905
    iget v3, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    sub-int v3, v2, v3

    .line 906
    iget-boolean v4, p0, Lcom/color/support/widget/ColorNumberPicker;->at:Z

    if-eqz v4, :cond_0

    .line 907
    invoke-direct {p0, v1, v3}, Lcom/color/support/widget/ColorNumberPicker;->c(II)I

    move-result v3

    goto :goto_1

    :cond_0
    add-int/2addr v3, v1

    .line 912
    :goto_1
    iget-boolean v4, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    if-eqz v4, :cond_1

    .line 913
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->e(I)I

    move-result v3

    .line 916
    :cond_1
    aput v3, v0, v2

    .line 917
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->f(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroid/widget/Scroller;)V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 1005
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->i()Z

    const/4 p1, 0x0

    .line 1007
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->c(I)V

    goto :goto_0

    .line 1009
    :cond_0
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->I:I

    :goto_0
    return-void
.end method

.method private b([I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1087
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1088
    aget v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/color/support/widget/ColorNumberPicker;->c(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1090
    :cond_0
    aget p1, p1, v0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->f(I)V

    return-void
.end method

.method static synthetic b(Lcom/color/support/widget/ColorNumberPicker;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->O:Z

    return p1
.end method

.method private c(II)I
    .locals 4

    .line 1056
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v1, -0x1

    .line 1061
    :goto_0
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-boolean v3, p0, Lcom/color/support/widget/ColorNumberPicker;->at:Z

    add-int/2addr v1, v3

    sub-int/2addr p1, v2

    add-int/2addr p1, p2

    .line 1062
    invoke-static {p1, v1}, Lcom/color/support/d/j;->a(II)I

    move-result p1

    .line 1064
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    if-ge p1, p2, :cond_2

    add-int/2addr v1, p1

    return v1

    :cond_2
    return v0
.end method

.method private c()V
    .locals 8

    .line 960
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->S:Lcom/color/support/d/i;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->aa:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/color/support/d/i;->a(Landroid/content/Context;IFFIIF)V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 1019
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->I:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1022
    :cond_0
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->I:I

    .line 1023
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->q:Lcom/color/support/widget/ColorNumberPicker$d;

    if-eqz v0, :cond_1

    .line 1024
    invoke-interface {v0, p0, p1}, Lcom/color/support/widget/ColorNumberPicker$d;->a(Lcom/color/support/widget/ColorNumberPicker;I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/ColorNumberPicker;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/color/support/widget/ColorNumberPicker;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/color/support/widget/ColorNumberPicker;->O:Z

    return p0
.end method

.method static synthetic d(Lcom/color/support/widget/ColorNumberPicker;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->K:I

    return p0
.end method

.method private d()V
    .locals 2

    const/16 v0, 0x12e

    const/4 v1, 0x0

    .line 964
    invoke-static {p0, v0, v1}, Lcom/oppo/util/ColorOSHapticFeedbackUtils;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method

.method private d(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1032
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->z:I

    if-lez p1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1040
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method private d(II)V
    .locals 1

    .line 1125
    iget-object p2, p0, Lcom/color/support/widget/ColorNumberPicker;->p:Lcom/color/support/widget/ColorNumberPicker$e;

    if-eqz p2, :cond_0

    .line 1126
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    invoke-interface {p2, p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker$e;->a(Lcom/color/support/widget/ColorNumberPicker;II)V

    :cond_0
    return-void
.end method

.method private e(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1047
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->c(II)I

    move-result p1

    return p1
.end method

.method static synthetic e(Lcom/color/support/widget/ColorNumberPicker;)J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/color/support/widget/ColorNumberPicker;->u:J

    return-wide v0
.end method

.method private e()V
    .locals 4

    .line 981
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    .line 982
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    .line 983
    array-length v1, v0

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->d:I

    mul-int/2addr v1, v2

    .line 984
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 985
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 986
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->k:I

    .line 987
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->d:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    const/4 v0, 0x0

    .line 989
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    .line 991
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->K:I

    .line 992
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->L:I

    return-void
.end method

.method static synthetic f(Lcom/color/support/widget/ColorNumberPicker;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    return p0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x1

    .line 996
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 997
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->d:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private f(I)V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->e:Landroid/util/SparseArray;

    .line 1099
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1103
    :cond_0
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1106
    :cond_1
    iget-object v2, p0, Lcom/color/support/widget/ColorNumberPicker;->l:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 1108
    aget-object v1, v2, v1

    goto :goto_1

    .line 1110
    :cond_2
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->g(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    .line 1113
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic g(Lcom/color/support/widget/ColorNumberPicker;)Landroid/util/SparseArray;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->e:Landroid/util/SparseArray;

    return-object p0
.end method

.method private g(I)Ljava/lang/String;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->t:Lcom/color/support/widget/ColorNumberPicker$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/color/support/widget/ColorNumberPicker$c;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/color/support/widget/ColorNumberPicker;->a(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private g()V
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->A:Lcom/color/support/widget/ColorNumberPicker$b;

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/color/support/widget/ColorNumberPicker;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->R:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->A:Lcom/color/support/widget/ColorNumberPicker$b;

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->i:Lcom/color/support/widget/ColorNumberPicker$f;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker$f;->a()V

    return-void
.end method

.method static synthetic i(Lcom/color/support/widget/ColorNumberPicker;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker;->as:Ljava/lang/String;

    return-object p0
.end method

.method private i()Z
    .locals 7

    .line 1172
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1174
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->z:I

    .line 1175
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 1178
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->h:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1179
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private j()V
    .locals 11

    .line 1215
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    int-to-double v1, v0

    iget v3, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    int-to-double v4, v3

    iget v6, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    int-to-double v7, v6

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v9

    mul-double/2addr v4, v7

    add-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->ab:I

    int-to-double v0, v0

    int-to-double v2, v3

    int-to-double v4, v6

    add-double/2addr v4, v9

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1216
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ac:I

    return-void
.end method

.method static synthetic j(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->c()V

    return-void
.end method

.method static synthetic k(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->d()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1186
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ad:I

    .line 1187
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ah:I

    .line 1188
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ae:I

    .line 1189
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ai:I

    .line 1190
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->af:I

    .line 1191
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->aj:I

    .line 1192
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->ag:I

    .line 1193
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->ak:I

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    .line 522
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->h:Landroid/widget/Scroller;

    .line 524
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 529
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 530
    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->z:I

    if-nez v2, :cond_1

    .line 531
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/ColorNumberPicker;->z:I

    :cond_1
    const/4 v2, 0x0

    .line 533
    iget v3, p0, Lcom/color/support/widget/ColorNumberPicker;->z:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/color/support/widget/ColorNumberPicker;->scrollBy(II)V

    .line 534
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->z:I

    .line 535
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 588
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 476
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->R:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 483
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumberPicker$a;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v0, v1, v4}, Lcom/color/support/widget/ColorNumberPicker$a;->a(II)V

    .line 511
    iput v3, p0, Lcom/color/support/widget/ColorNumberPicker;->M:I

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v0, v1, v7}, Lcom/color/support/widget/ColorNumberPicker$a;->a(II)V

    .line 489
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->M:I

    .line 490
    invoke-virtual {v0, v1, v6, v5}, Lcom/color/support/widget/ColorNumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 495
    :cond_2
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->M:I

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_3

    .line 497
    invoke-virtual {v0, p1, v4}, Lcom/color/support/widget/ColorNumberPicker$a;->a(II)V

    .line 500
    invoke-virtual {v0, v1, v7}, Lcom/color/support/widget/ColorNumberPicker$a;->a(II)V

    .line 502
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->M:I

    .line 503
    invoke-virtual {v0, v1, v6, v5}, Lcom/color/support/widget/ColorNumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    :cond_3
    :goto_0
    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 428
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->h()V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->Q:I

    if-ne v1, v0, :cond_5

    const/4 p1, -0x1

    .line 452
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->Q:I

    return v3

    .line 439
    :cond_3
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_4

    .line 440
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_5

    goto :goto_1

    .line 458
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 441
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->requestFocus()Z

    .line 442
    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->Q:I

    .line 443
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->h()V

    .line 444
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 445
    :goto_2
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->a(Z)V

    :cond_8
    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->h()V

    .line 423
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->h()V

    .line 470
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->P:Lcom/color/support/widget/ColorNumberPicker$a;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Lcom/color/support/widget/ColorNumberPicker$a;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorNumberPicker$a;-><init>(Lcom/color/support/widget/ColorNumberPicker;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->P:Lcom/color/support/widget/ColorNumberPicker$a;

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->P:Lcom/color/support/widget/ColorNumberPicker$a;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 670
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 632
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 624
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 661
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 723
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 724
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "touchEffect"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->T:Landroid/os/HandlerThread;

    .line 725
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->T:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 726
    new-instance v0, Lcom/color/support/widget/ColorNumberPicker$g;

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->T:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/color/support/widget/ColorNumberPicker$g;-><init>(Lcom/color/support/widget/ColorNumberPicker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->U:Landroid/os/Handler;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 731
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 732
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->h()V

    .line 733
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->T:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 735
    iput-object v1, p0, Lcom/color/support/widget/ColorNumberPicker;->T:Landroid/os/HandlerThread;

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->U:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v6, p0

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v7, 0x2

    div-int/2addr v0, v7

    int-to-float v0, v0

    .line 747
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->y:I

    .line 749
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->al:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    .line 750
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->am:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v7, :cond_0

    goto :goto_1

    .line 757
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/ColorNumberPicker;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->al:I

    sub-int/2addr v0, v2

    div-int/2addr v2, v7

    add-int/2addr v0, v2

    goto :goto_0

    .line 754
    :cond_1
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->al:I

    div-int/2addr v0, v7

    :goto_0
    int-to-float v0, v0

    .line 764
    :cond_2
    :goto_1
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->ao:I

    if-eqz v2, :cond_3

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 767
    :cond_3
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->ap:I

    if-eqz v2, :cond_4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :cond_4
    move v8, v0

    .line 772
    iget-object v9, v6, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    const/4 v0, 0x0

    move v10, v0

    move v11, v1

    .line 773
    :goto_2
    array-length v0, v9

    if-ge v10, v0, :cond_9

    .line 774
    aget v12, v9, v10

    .line 780
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->ab:I

    if-le v11, v0, :cond_5

    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->ac:I

    if-ge v11, v0, :cond_5

    .line 781
    invoke-direct {v6, v11}, Lcom/color/support/widget/ColorNumberPicker;->b(I)I

    move-result v0

    .line 782
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->ad:I

    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->ah:I

    int-to-float v0, v0

    invoke-direct {v6, v1, v2, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(IIF)I

    move-result v1

    .line 783
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->ae:I

    iget v3, v6, Lcom/color/support/widget/ColorNumberPicker;->ai:I

    invoke-direct {v6, v2, v3, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(IIF)I

    move-result v2

    .line 784
    iget v3, v6, Lcom/color/support/widget/ColorNumberPicker;->af:I

    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->aj:I

    invoke-direct {v6, v3, v4, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(IIF)I

    move-result v3

    .line 785
    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->ag:I

    iget v5, v6, Lcom/color/support/widget/ColorNumberPicker;->ak:I

    invoke-direct {v6, v4, v5, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(IIF)I

    move-result v0

    goto :goto_3

    .line 787
    :cond_5
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->ad:I

    .line 788
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->ae:I

    .line 789
    iget v3, v6, Lcom/color/support/widget/ColorNumberPicker;->af:I

    .line 790
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->ag:I

    .line 792
    :goto_3
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    .line 794
    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->d:I

    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->an:I

    move-object/from16 v0, p0

    move v1, v4

    move v3, v4

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorNumberPicker;->a(IIIII)F

    move-result v0

    .line 795
    iget-object v1, v6, Lcom/color/support/widget/ColorNumberPicker;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 796
    iget-object v1, v6, Lcom/color/support/widget/ColorNumberPicker;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_7

    .line 800
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->W:I

    if-ne v10, v0, :cond_6

    .line 801
    iget-object v0, v6, Lcom/color/support/widget/ColorNumberPicker;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    add-int v1, v11, v11

    .line 802
    iget v2, v6, Lcom/color/support/widget/ColorNumberPicker;->w:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    div-int/2addr v0, v7

    goto :goto_4

    :cond_6
    add-int v0, v11, v11

    .line 804
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->w:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->aq:F

    sub-float/2addr v0, v1

    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->ar:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/2addr v0, v7

    .line 807
    :goto_4
    iget-object v1, v6, Lcom/color/support/widget/ColorNumberPicker;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    int-to-float v0, v0

    .line 808
    iget-object v2, v6, Lcom/color/support/widget/ColorNumberPicker;->f:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v8, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    move-object/from16 v3, p1

    .line 810
    iget v1, v6, Lcom/color/support/widget/ColorNumberPicker;->an:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, -0x41000000    # -0.5f

    :goto_5
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v2

    if-gez v4, :cond_8

    .line 813
    iget v4, v6, Lcom/color/support/widget/ColorNumberPicker;->au:F

    iget v5, v6, Lcom/color/support/widget/ColorNumberPicker;->aw:F

    add-float/2addr v5, v4

    mul-float/2addr v5, v1

    mul-float/2addr v5, v0

    mul-float/2addr v4, v0

    .line 815
    iget v12, v6, Lcom/color/support/widget/ColorNumberPicker;->av:F

    mul-float/2addr v12, v0

    add-float/2addr v5, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v4, v13

    sub-float v14, v5, v4

    int-to-float v15, v11

    .line 816
    iget v7, v6, Lcom/color/support/widget/ColorNumberPicker;->w:I

    int-to-float v2, v7

    div-float/2addr v2, v13

    add-float/2addr v2, v15

    div-float/2addr v12, v13

    sub-float/2addr v2, v12

    add-float/2addr v4, v5

    int-to-float v5, v7

    div-float/2addr v5, v13

    add-float/2addr v15, v5

    add-float v16, v15, v12

    iget-object v5, v6, Lcom/color/support/widget/ColorNumberPicker;->f:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v14

    move v14, v2

    move v15, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/4 v7, 0x2

    goto :goto_5

    .line 826
    :cond_8
    :goto_6
    iget v0, v6, Lcom/color/support/widget/ColorNumberPicker;->w:I

    add-int/2addr v11, v0

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 297
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_7

    .line 304
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->h()V

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->B:F

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->D:F

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/color/support/widget/ColorNumberPicker;->C:J

    .line 307
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->J:Z

    .line 308
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->B:F

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->K:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 309
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->I:I

    if-nez p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->i:Lcom/color/support/widget/ColorNumberPicker$f;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumberPicker$f;->a(I)V

    goto :goto_0

    .line 313
    :cond_1
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->L:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 314
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->I:I

    if-nez p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->i:Lcom/color/support/widget/ColorNumberPicker$f;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorNumberPicker$f;->a(I)V

    .line 319
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 320
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 321
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 322
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->h:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 323
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumberPicker;->c(I)V

    goto :goto_1

    .line 324
    :cond_3
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->h:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 325
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->g:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 326
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->h:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 327
    :cond_4
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->B:F

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->K:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 329
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 328
    invoke-direct {p0, v1, v3, v4}, Lcom/color/support/widget/ColorNumberPicker;->a(ZJ)V

    goto :goto_1

    .line 330
    :cond_5
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->L:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 332
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 331
    invoke-direct {p0, v2, v0, v1}, Lcom/color/support/widget/ColorNumberPicker;->a(ZJ)V

    goto :goto_1

    .line 334
    :cond_6
    iput-boolean v2, p0, Lcom/color/support/widget/ColorNumberPicker;->J:Z

    :goto_1
    return v2

    :cond_7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->e()V

    .line 255
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->f()V

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->j()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 264
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->j:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->b(II)I

    move-result v0

    .line 265
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->b:I

    invoke-direct {p0, p2, v1}, Lcom/color/support/widget/ColorNumberPicker;->b(II)I

    move-result v1

    .line 266
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 268
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->c:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/color/support/widget/ColorNumberPicker;->a(III)I

    move-result p1

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ap:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->ao:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 270
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->a:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/color/support/widget/ColorNumberPicker;->a(III)I

    move-result p2

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorNumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 343
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->E:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 347
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->E:Landroid/view/VelocityTracker;

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->E:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_2

    goto/16 :goto_4

    .line 354
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 355
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->I:I

    if-eq v0, v3, :cond_3

    .line 356
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->B:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 357
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->F:I

    if-le v0, v1, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->h()V

    .line 359
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->c(I)V

    goto :goto_0

    .line 362
    :cond_3
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->D:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 363
    invoke-virtual {p0, v1, v0}, Lcom/color/support/widget/ColorNumberPicker;->scrollBy(II)V

    .line 364
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    .line 366
    :cond_4
    :goto_0
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->D:F

    goto/16 :goto_4

    .line 371
    :cond_5
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->g()V

    .line 372
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->i:Lcom/color/support/widget/ColorNumberPicker$f;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker$f;->a()V

    .line 373
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->E:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 374
    iget v5, p0, Lcom/color/support/widget/ColorNumberPicker;->H:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 375
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 376
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/color/support/widget/ColorNumberPicker;->G:I

    if-le v4, v5, :cond_6

    mul-int/2addr v0, v2

    .line 377
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorNumberPicker;->d(I)V

    .line 378
    invoke-direct {p0, v2}, Lcom/color/support/widget/ColorNumberPicker;->c(I)V

    goto :goto_3

    .line 380
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 381
    iget v5, p0, Lcom/color/support/widget/ColorNumberPicker;->B:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/color/support/widget/ColorNumberPicker;->C:J

    sub-long/2addr v5, v7

    .line 383
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->F:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 384
    iget-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->J:Z

    if-eqz p1, :cond_7

    .line 385
    iput-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->J:Z

    .line 386
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->performClick()Z

    goto :goto_2

    .line 388
    :cond_7
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    div-int/2addr v0, p1

    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_8

    .line 391
    invoke-direct {p0, v3}, Lcom/color/support/widget/ColorNumberPicker;->a(Z)V

    .line 392
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->i:Lcom/color/support/widget/ColorNumberPicker$f;

    invoke-virtual {p1, v3}, Lcom/color/support/widget/ColorNumberPicker$f;->b(I)V

    goto :goto_1

    :cond_8
    if-gez v0, :cond_9

    .line 395
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumberPicker;->a(Z)V

    .line 396
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->i:Lcom/color/support/widget/ColorNumberPicker$f;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorNumberPicker$f;->b(I)V

    .line 399
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->i()Z

    goto :goto_2

    .line 402
    :cond_a
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->i()Z

    .line 404
    :goto_2
    invoke-direct {p0, v1}, Lcom/color/support/widget/ColorNumberPicker;->c(I)V

    .line 406
    :goto_3
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->E:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 407
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->E:Landroid/view/VelocityTracker;

    :goto_4
    return v3
.end method

.method public scrollBy(II)V
    .locals 4

    .line 544
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    .line 545
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    .line 547
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    aget v1, p1, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    if-gt v1, v2, :cond_0

    .line 549
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    return-void

    .line 552
    :cond_0
    iget-boolean v1, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    aget v1, p1, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    if-lt v1, v2, :cond_1

    .line 554
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    return-void

    .line 558
    :cond_1
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    .line 559
    :cond_2
    :goto_0
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->k:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    .line 560
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    .line 561
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->b([I)V

    .line 562
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v3}, Lcom/color/support/widget/ColorNumberPicker;->a(IZ)V

    .line 563
    iget-boolean p2, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    aget p2, p1, p2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    if-gt p2, v1, :cond_2

    .line 564
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    goto :goto_0

    .line 567
    :cond_3
    :goto_1
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/color/support/widget/ColorNumberPicker;->k:I

    neg-int v2, v2

    if-ge v1, v2, :cond_4

    .line 568
    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->w:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    .line 569
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker;->a([I)V

    .line 570
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v3}, Lcom/color/support/widget/ColorNumberPicker;->a(IZ)V

    .line 571
    iget-boolean p2, p0, Lcom/color/support/widget/ColorNumberPicker;->s:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    aget p2, p1, p2

    iget v1, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    if-lt p2, v1, :cond_3

    .line 572
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker;->x:I

    iput p2, p0, Lcom/color/support/widget/ColorNumberPicker;->y:I

    goto :goto_1

    :cond_4
    if-eq v0, p2, :cond_5

    const/4 p1, 0x0

    .line 577
    invoke-virtual {p0, p1, p2, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->onScrollChanged(IIII)V

    :cond_5
    return-void
.end method

.method public setAlignPosition(I)V
    .locals 0

    .line 708
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->am:I

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->l:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 697
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->l:[Ljava/lang/String;

    .line 698
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    return-void
.end method

.method public setFormatter(Lcom/color/support/widget/ColorNumberPicker$c;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker;->t:Lcom/color/support/widget/ColorNumberPicker$c;

    if-ne p1, v0, :cond_0

    return-void

    .line 608
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->t:Lcom/color/support/widget/ColorNumberPicker$c;

    .line 609
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    return-void
.end method

.method public setIgnorable(Z)V
    .locals 1

    .line 1224
    iget-boolean v0, p0, Lcom/color/support/widget/ColorNumberPicker;->at:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1227
    :cond_0
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->at:Z

    .line 1229
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    .line 1230
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 674
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 680
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    .line 681
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->n:I

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    if-ge p1, v0, :cond_1

    .line 682
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    .line 685
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    .line 686
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void

    .line 678
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 636
    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 642
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    .line 643
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->m:I

    iget v0, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    if-le p1, v0, :cond_1

    .line 644
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->o:I

    .line 646
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->b()V

    .line 647
    invoke-virtual {p0}, Lcom/color/support/widget/ColorNumberPicker;->invalidate()V

    return-void

    .line 640
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 620
    iput-wide p1, p0, Lcom/color/support/widget/ColorNumberPicker;->u:J

    return-void
.end method

.method public setOnScrollListener(Lcom/color/support/widget/ColorNumberPicker$d;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->q:Lcom/color/support/widget/ColorNumberPicker$d;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/color/support/widget/ColorNumberPicker$e;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->p:Lcom/color/support/widget/ColorNumberPicker$e;

    return-void
.end method

.method public setPickerFocusColor(I)V
    .locals 1

    .line 1204
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ah:I

    .line 1205
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ai:I

    .line 1206
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->aj:I

    .line 1207
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->ak:I

    return-void
.end method

.method public setPickerNormalColor(I)V
    .locals 1

    .line 1197
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ad:I

    .line 1198
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->ae:I

    .line 1199
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorNumberPicker;->af:I

    .line 1200
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->ag:I

    return-void
.end method

.method public setPickerRowNumber(I)V
    .locals 0

    .line 702
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->V:I

    .line 703
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker;->W:I

    .line 704
    iget p1, p0, Lcom/color/support/widget/ColorNumberPicker;->V:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker;->v:[I

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 628
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorNumberPicker;->a(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 665
    iput-boolean p1, p0, Lcom/color/support/widget/ColorNumberPicker;->r:Z

    .line 666
    invoke-direct {p0}, Lcom/color/support/widget/ColorNumberPicker;->a()V

    return-void
.end method
