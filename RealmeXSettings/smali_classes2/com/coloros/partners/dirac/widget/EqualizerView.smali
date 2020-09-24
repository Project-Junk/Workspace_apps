.class public Lcom/coloros/partners/dirac/widget/EqualizerView;
.super Landroid/view/View;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerViewListener;,
        Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_COLOR:I = -0xff0100

.field private static final ENABLE_LINE:Z = false

.field private static final LINE_WIDTH_DEFAULT:I = 0x19

.field private static final MAX_PROGRESS_DEFAULT:I = 0x6

.field private static final MIN_PROGRESS_DEFAULT:I = -0x6

.field private static final SEEKBAR_THUMB_HEIGHT_DEFAULT:I = 0x4

.field private static final SEEK_BAR_COUNT_DEFAULT:I = 0x3


# instance fields
.field private mLineColor:Landroid/content/res/ColorStateList;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineWidth:I

.field private mListener:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

.field private mMaxProgress:I

.field private mMinProgress:I

.field private mSeekBarProgressStartEndColorArr:[I

.field private mSeekBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;",
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

.field private mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x19

    .line 43
    iput v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLineWidth:I

    const/4 v1, 0x6

    .line 44
    iput v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMaxProgress:I

    const/4 v2, -0x6

    .line 45
    iput v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMinProgress:I

    const/4 v3, 0x3

    .line 46
    iput v3, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarCount:I

    const/16 v4, 0x2d

    .line 47
    iput v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarBgWidth:I

    .line 48
    iput v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarProgressWidth:I

    const/16 v4, 0x54

    .line 49
    iput v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarThumbWidth:I

    const/4 v4, 0x4

    .line 50
    iput v4, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarThumbHeight:I

    .line 54
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLinePaint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030071

    .line 75
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBarProgressStartEndColorArr:[I

    .line 76
    sget-object v6, Lcom/android/settings/g$a;->EqualizerView:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 77
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarCount:I

    const v6, 0x7f0705ee

    .line 79
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 78
    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarBgWidth:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0705f3

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v6, 0x7

    .line 80
    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarProgressWidth:I

    const p1, 0x7f0705f5

    .line 83
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/16 v5, 0x9

    .line 82
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarThumbWidth:I

    const/16 p1, 0x8

    .line 84
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarThumbHeight:I

    .line 85
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMinProgress:I

    const/4 p1, 0x5

    .line 86
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMaxProgress:I

    .line 87
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLineWidth:I

    .line 88
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    .line 89
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    const p1, -0xff0100

    .line 90
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLinePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLineWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iput-boolean v7, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchDisabled:Z

    .line 98
    iput-boolean v7, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBarsInited:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/partners/dirac/widget/EqualizerView;)Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/partners/dirac/widget/EqualizerView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->reDraw()V

    return-void
.end method

.method private drawLineBetweenSeekBar(Landroid/graphics/Canvas;Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;)V
    .locals 8

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 112
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbX()I

    move-result v0

    .line 113
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbY()I

    move-result p2

    .line 114
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbX()I

    move-result v1

    .line 115
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbY()I

    move-result p3

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 117
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbX()I

    move-result v0

    .line 118
    invoke-virtual {p2}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbY()I

    move-result p2

    .line 119
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getWidth()I

    move-result v1

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbX()I

    move-result v0

    .line 123
    invoke-virtual {p3}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getThumbY()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    move p3, p2

    :goto_1
    int-to-float v3, v0

    int-to-float v4, p2

    int-to-float v5, v1

    int-to-float v6, p3

    .line 127
    iget-object v7, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getTouchedSeekBar(II)I
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p1, "EqualizerView"

    const-string p2, "mSeekBars is null!!"

    .line 133
    invoke-static {p1, p2}, Lcom/coloros/partners/dirac/a/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->isInside(IIZ)Z

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
    .locals 17

    move-object/from16 v0, p0

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarCount:I

    div-int/2addr v1, v2

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    const/4 v2, 0x0

    .line 148
    :goto_0
    iget v3, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 149
    new-instance v7, Landroid/graphics/Rect;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getPaddingLeft()I

    move-result v3

    mul-int v5, v1, v2

    add-int/2addr v3, v5

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getPaddingTop()I

    move-result v5

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getPaddingLeft()I

    move-result v6

    add-int/lit8 v16, v2, 0x1

    mul-int v8, v1, v16

    add-int/2addr v6, v8

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {v7, v3, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    iget-object v3, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    new-instance v15, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v8, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMinProgress:I

    iget v9, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMaxProgress:I

    iget v10, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarBgWidth:I

    iget v11, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarProgressWidth:I

    iget v12, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarThumbWidth:I

    iget v13, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarThumbHeight:I

    iget-object v5, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBarProgressStartEndColorArr:[I

    mul-int/lit8 v2, v2, 0x2

    aget v14, v5, v2

    add-int/2addr v2, v4

    aget v2, v5, v2

    move-object v5, v15

    move-object v4, v15

    move v15, v2

    invoke-direct/range {v5 .. v15}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;-><init>(Landroid/content/Context;Landroid/graphics/Rect;IIIIIIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v16

    goto :goto_0

    .line 158
    :cond_0
    iput-boolean v4, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBarsInited:Z

    .line 159
    iget-object v1, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTempProgress:[I

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->setProgress([I)V

    const/4 v1, 0x0

    .line 161
    iput-object v1, v0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTempProgress:[I

    :cond_1
    return-void
.end method

.method private reDraw()V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->invalidate()V

    return-void
.end method

.method private startProgressAnim(Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;I)V
    .locals 2

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerViewListener;

    invoke-direct {v1, p0, p0}, Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerViewListener;-><init>(Lcom/coloros/partners/dirac/widget/EqualizerView;Lcom/coloros/partners/dirac/widget/EqualizerView;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->startProgressAnim(Landroid/content/Context;ILcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1, p2}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setProgress(I)V

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->reDraw()V

    return-void
.end method


# virtual methods
.method public getAllProgress()[I
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->getProgress()I

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
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMaxProgress:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mMinProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBarsInited:Z

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->initSeekBars()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    invoke-virtual {v1, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 210
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

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    if-eqz v0, :cond_5

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setThumbY(I)V

    .line 224
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getAllProgress()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;->onProgressUpdate([I)V

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->reDraw()V

    goto :goto_1

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    if-eqz v0, :cond_5

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setProgressFromThumbY(I)V

    .line 235
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

    if-eqz p1, :cond_4

    .line 236
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getAllProgress()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;->onUpdateFinished([I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerView;->getTouchedSeekBar(II)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 214
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchDisabled:Z

    if-nez v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    .line 216
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchedSeekBar:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    invoke-virtual {p1, v1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setPressed(Z)V

    .line 238
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->reDraw()V

    :cond_5
    :goto_1
    return v1
.end method

.method public setEqualizerListener(Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mListener:Lcom/coloros/partners/dirac/widget/EqualizerView$EqualizerListener;

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
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBarsInited:Z

    if-nez v0, :cond_1

    .line 257
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTempProgress:[I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekBars:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    aget v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/coloros/partners/dirac/widget/EqualizerView;->startProgressAnim(Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/EqualizerView;->reDraw()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mTouchDisabled:Z

    return-void
.end method

.method public setmSeekbarCount(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerView;->mSeekbarCount:I

    return-void
.end method
