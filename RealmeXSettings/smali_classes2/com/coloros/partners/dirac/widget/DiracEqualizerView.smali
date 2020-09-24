.class public Lcom/coloros/partners/dirac/widget/DiracEqualizerView;
.super Landroid/view/View;
.source "DiracEqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;,
        Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_COLOR:I = -0xff0100

.field private static final ENABLE_LINE:Z = false

.field private static final LINE_WIDTH_DEFAULT:I = 0x19

.field private static final SEEKBAR_THUMB_HEIGHT_DEFAULT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DolbyEqualizerView"


# instance fields
.field private mLineColor:Landroid/content/res/ColorStateList;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:I

.field private mListener:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

.field private mMaxProgress:I

.field private mMinProgress:I

.field private mSeekBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekBarsInited:Z

.field private mSeekbarBgWidth:I

.field private mSeekbarCount:I

.field private mSeekbarProgressWidth:I

.field private mSeekbarThumbHeight:I

.field private mSeekbarThumbWidth:I

.field private mTempProgress:[I

.field private mTouchDisabled:Z

.field private mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x19

    .line 42
    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLineWidth:I

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMaxProgress:I

    .line 44
    iput v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMinProgress:I

    const/4 v2, 0x3

    .line 45
    iput v2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarCount:I

    const/16 v3, 0x2d

    .line 46
    iput v3, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarBgWidth:I

    .line 47
    iput v3, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarProgressWidth:I

    const/16 v3, 0x54

    .line 48
    iput v3, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarThumbWidth:I

    const/4 v3, 0x4

    .line 49
    iput v3, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarThumbHeight:I

    .line 52
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLinePaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 72
    sget-object v5, Lcom/android/settings/g$a;->EqualizerView:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const p3, 0x7f0b0010

    .line 74
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    const/4 v5, 0x1

    .line 73
    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarCount:I

    const p3, 0x7f07038f

    .line 76
    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 75
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarBgWidth:I

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070392

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/4 p3, 0x7

    .line 77
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarProgressWidth:I

    const p1, 0x7f070394

    .line 80
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/16 p3, 0x9

    .line 79
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarThumbWidth:I

    const/16 p1, 0x8

    .line 81
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarThumbHeight:I

    const p1, 0x7f0b000f

    .line 83
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 p3, 0x6

    .line 82
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMinProgress:I

    const p1, 0x7f0b000e

    .line 85
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 p3, 0x5

    .line 84
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMaxProgress:I

    .line 86
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLineWidth:I

    .line 87
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    .line 88
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    const p1, -0xff0100

    .line 89
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLinePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getDrawableState()[I

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLineWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iput-boolean v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchDisabled:Z

    .line 97
    iput-boolean v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBarsInited:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/partners/dirac/widget/DiracEqualizerView;)Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/partners/dirac/widget/DiracEqualizerView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->reDraw()V

    return-void
.end method

.method private drawLineBetweenSeekBar(Landroid/graphics/Canvas;Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;)V
    .locals 8

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 111
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbX()I

    move-result v0

    .line 112
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbY()I

    move-result p2

    .line 113
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbX()I

    move-result v1

    .line 114
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbY()I

    move-result p3

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 116
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbX()I

    move-result v0

    .line 117
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbY()I

    move-result p2

    .line 118
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getWidth()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbX()I

    move-result v0

    .line 122
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getThumbY()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    move p3, p2

    :goto_1
    int-to-float v3, v0

    int-to-float v4, p2

    int-to-float v5, v1

    int-to-float v6, p3

    .line 126
    iget-object v7, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getTouchedSeekBar(II)I
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "DolbyEqualizerView"

    const-string p2, "getTouchedSeekBar mSeekBars is null!!"

    .line 132
    invoke-static {p1, p2}, Lcom/coloros/partners/dolby/a/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->isInside(IIZ)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initSeekBars()V
    .locals 13

    .line 145
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarCount:I

    div-int/2addr v0, v1

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    const/4 v1, 0x0

    .line 147
    :goto_0
    iget v2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarCount:I

    if-ge v1, v2, :cond_0

    .line 148
    new-instance v5, Landroid/graphics/Rect;

    .line 149
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getPaddingLeft()I

    move-result v2

    mul-int v3, v0, v1

    add-int/2addr v2, v3

    .line 150
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getPaddingTop()I

    move-result v3

    .line 151
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getPaddingLeft()I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    mul-int v6, v0, v1

    add-int/2addr v4, v6

    .line 152
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    new-instance v12, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v6, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMinProgress:I

    iget v7, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMaxProgress:I

    iget v8, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarBgWidth:I

    iget v9, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarProgressWidth:I

    iget v10, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarThumbWidth:I

    iget v11, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekbarThumbHeight:I

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;-><init>(Landroid/content/Context;Landroid/graphics/Rect;IIIIII)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBarsInited:Z

    .line 157
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTempProgress:[I

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->setProgress([I)V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTempProgress:[I

    :cond_1
    return-void
.end method

.method private reDraw()V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->invalidate()V

    return-void
.end method

.method private startProgressAnim(Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;I)V
    .locals 1

    .line 168
    new-instance v0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;

    invoke-direct {v0, p0, p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerViewListener;-><init>(Lcom/coloros/partners/dirac/widget/DiracEqualizerView;Lcom/coloros/partners/dirac/widget/DiracEqualizerView;)V

    invoke-virtual {p1, p2, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->startProgressAnim(ILcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar$AnimationListener;)V

    .line 169
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->reDraw()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 204
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAllProgress()[I
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->getProgress()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMaxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mMinProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 182
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 183
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBarsInited:Z

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->initSeekBars()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 196
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    invoke-virtual {v1, p1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    if-eqz v0, :cond_5

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->setThumbY(I)V

    .line 223
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getAllProgress()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;->onProgressUpdate([I)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->reDraw()V

    goto :goto_1

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    if-eqz v0, :cond_5

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->setProgressFromThumbY(I)V

    .line 234
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->setActive(Z)V

    .line 235
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

    if-eqz p1, :cond_4

    .line 236
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getAllProgress()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;->onUpdateFinished([I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->getTouchedSeekBar(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 213
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchDisabled:Z

    if-nez v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    .line 215
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    invoke-virtual {p1, v1}, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;->setActive(Z)V

    .line 238
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->reDraw()V

    :cond_5
    :goto_1
    return v1
.end method

.method public setEqualizerListener(Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/DiracEqualizerView$EqualizerListener;

    return-void
.end method

.method public varargs setProgress([I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 252
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBarsInited:Z

    if-nez v0, :cond_1

    .line 257
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTempProgress:[I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;

    aget v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->startProgressAnim(Lcom/coloros/partners/dirac/widget/DiracEqualizerSeekBar;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->reDraw()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/DiracEqualizerView;->mTouchDisabled:Z

    return-void
.end method
