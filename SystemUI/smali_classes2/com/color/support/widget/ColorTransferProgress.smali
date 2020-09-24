.class public Lcom/color/support/widget/ColorTransferProgress;
.super Lcom/color/support/widget/ColorLoadProgress;
.source "ColorTransferProgress.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FULLANGLE:F = 360.0f

.field private static final INITANGLE:F = 270.0f

.field private static final TAG:Ljava/lang/String; = "ColorDownAndUp"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mPath:Landroid/graphics/Path;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorTransferProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorTransferProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 56
    iput-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    .line 70
    invoke-virtual {p0}, Lcom/color/support/widget/ColorTransferProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_upload_or_download_strokewidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mStrokeWidth:I

    .line 71
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress_colorDefaultDrawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    sget p2, Lcolor/support/v7/appcompat/R$styleable;->ColorLoadProgress_colorLoadProgressColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaintColor:I

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-direct {p0}, Lcom/color/support/widget/ColorTransferProgress;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorTransferProgress;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 92
    iget-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 94
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 143
    const-class p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 101
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    iget v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/color/support/widget/ColorTransferProgress;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 108
    iget-object v1, p0, Lcom/color/support/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/color/support/widget/ColorTransferProgress;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    .line 112
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 113
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    const/16 v6, 0x10

    if-eq v3, v6, :cond_1

    const/16 v6, 0x50

    if-eq v3, v6, :cond_0

    move v3, v2

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorTransferProgress;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/color/support/widget/ColorTransferProgress;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    :goto_0
    add-int/2addr v4, v3

    .line 124
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/color/support/widget/ColorTransferProgress;->getWidth()I

    move-result v2

    sub-int/2addr v2, v5

    .line 125
    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/color/support/widget/ColorTransferProgress;->getWidth()I

    move-result v5

    .line 130
    :cond_3
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    move v3, v2

    move v4, v3

    move v5, v4

    .line 134
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/color/support/widget/ColorTransferProgress;->mStrokeWidth:I

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v2, v7

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v3, v7

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    iget-object v2, p0, Lcom/color/support/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 137
    iget-object v2, p0, Lcom/color/support/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 138
    iget-object v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/color/support/widget/ColorTransferProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 150
    iget v0, p0, Lcom/color/support/widget/ColorTransferProgress;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 151
    iget p0, p0, Lcom/color/support/widget/ColorTransferProgress;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/color/support/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/color/support/widget/ColorTransferProgress;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorTransferProgress;->setMeasuredDimension(II)V

    return-void
.end method
