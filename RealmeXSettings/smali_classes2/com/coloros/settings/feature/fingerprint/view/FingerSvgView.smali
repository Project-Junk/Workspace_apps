.class public Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;
.super Landroid/view/View;
.source "FingerSvgView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;
    }
.end annotation


# static fields
.field public static final HEIGHT_SIZE:I = 0x1f5

.field private static final TAG:Ljava/lang/String; = "FingerSvgView"

.field public static final WIDTH_SIZE:I = 0x1a4


# instance fields
.field private mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

.field private mGlyphStrings:[Ljava/lang/String;

.field private mScale:F

.field private mTraceColor:I

.field private mViewportHeight:F

.field private mViewportWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mScale:F

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mScale:F

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 32
    iput p3, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mScale:F

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static getShader(Landroid/view/View;II)Landroid/graphics/Shader;
    .locals 9

    .line 150
    new-instance v8, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v8
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 52
    sget-object v0, Lcom/android/settings/g$a;->OppoFingerAnimatedSvgView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    const/high16 v1, 0x43d20000    # 420.0f

    .line 53
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mViewportWidth:F

    const/4 v0, 0x3

    const v1, 0x43fa8000    # 501.0f

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mViewportHeight:F

    .line 55
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const p2, 0x7f0602a4

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mTraceColor:I

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "init : mViewportWidth = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mViewportWidth:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mViewportHeight = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mViewportHeight:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerSvgView"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const p2, 0x7f0602b4

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mTraceColor:I

    :cond_2
    return-void
.end method

.method private rebuildGlyphData()V
    .locals 10

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphStrings:[Ljava/lang/String;

    array-length v0, v0

    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rebuildGlyphData : mGlyphStrings.length = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerSvgView"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    .line 86
    new-array v1, v0, [Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    .line 87
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    iget v3, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mScale:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 89
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 90
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x1

    .line 91
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const v5, 0x40066666    # 2.1f

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 93
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 97
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    new-instance v7, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;-><init>(Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$1;)V

    aput-object v7, v6, v5

    .line 98
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v6, v6, v5

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v6, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    .line 100
    :try_start_0
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphStrings:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v6}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    .line 101
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "Couldn\'t parse path"

    .line 103
    invoke-static {v2, v7, v6}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :goto_1
    new-instance v6, Landroid/graphics/PathMeasure;

    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    invoke-direct {v6, v7, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 106
    :goto_2
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    iget-object v7, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v8, v7, v5

    aget-object v7, v7, v5

    iget v7, v7, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mLength:F

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v8, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mLength:F

    goto :goto_2

    .line 109
    :cond_0
    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v6, v6, v5

    iput-object v3, v6, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public fillBackground(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mTraceColor:I

    .line 135
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mTraceColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphData:[Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView$GlyphData;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 67
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->rebuildGlyphData()V

    return-void
.end method

.method public reset(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mTraceColor:I

    .line 140
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setGlyphStrings([Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mGlyphStrings:[Ljava/lang/String;

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 77
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/view/FingerSvgView;->mScale:F

    :cond_0
    return-void
.end method
