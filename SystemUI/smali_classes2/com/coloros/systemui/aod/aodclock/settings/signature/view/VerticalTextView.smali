.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;
.super Landroid/view/View;
.source "VerticalTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;,
        Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_SHOW_ALL_STRING:Ljava/lang/String; = "..."


# instance fields
.field private mChineseWordWdth:F

.field private mColor:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDrawText:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mGravity:I

.field private mIsHorizontal:Z

.field private mLengthRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSpacing:F

.field private mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

.field private mText:Ljava/lang/String;

.field private mVerticalwordHeight:F

.field private mViewHeight:I

.field private mViewHeightMode:I

.field private mViewMaxHeight:I

.field private mViewMaxWidth:I

.field private mViewWidth:I

.field private mViewWidthMode:I

.field private mWordHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    const p1, 0x800003

    .line 48
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mGravity:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 52
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    .line 63
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    const p1, 0x800003

    .line 48
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mGravity:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 52
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    .line 68
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    const p1, 0x800003

    .line 48
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mGravity:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 52
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    .line 73
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    const p1, 0x800003

    .line 48
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mGravity:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 52
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    .line 78
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->init()V

    return-void
.end method

.method private drawDebugLine(Landroid/graphics/Canvas;FFF)V
    .locals 7

    .line 557
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float v3, p3, v0

    add-float v4, p2, p4

    iget-object p4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget p4, p4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v5, p3, p4

    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    .line 537
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 538
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->createLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 539
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 540
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 541
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mGravity:I

    const v5, 0x800003

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    const v5, 0x800005

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 546
    :cond_1
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    float-to-int v3, v4

    shr-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 544
    :cond_2
    :goto_1
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v3

    float-to-int v3, v4

    goto :goto_3

    .line 542
    :cond_3
    :goto_2
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    float-to-int v3, v3

    :goto_3
    int-to-float v3, v3

    int-to-float v0, v0

    .line 548
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 552
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSpacing:F

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;)V
    .locals 10

    .line 485
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    float-to-int v1, v0

    float-to-int v0, v0

    .line 488
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_6

    .line 489
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->setString(Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLengthRecord:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLengthRecord:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 494
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mGravity:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_0

    .line 495
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    sub-int/2addr v4, v3

    shr-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_0
    const v5, 0x800005

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 497
    :cond_1
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    goto :goto_1

    :cond_2
    move v3, v0

    .line 503
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->createLinearGradient()Landroid/graphics/LinearGradient;

    move-result-object v4

    .line 505
    :goto_2
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-virtual {v5}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nextString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 506
    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-static {v6}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;)I

    move-result v6

    if-nez v6, :cond_3

    int-to-float v3, v3

    .line 508
    iget v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mVerticalwordHeight:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 512
    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v6, v1

    int-to-float v7, v3

    .line 513
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 516
    iget v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_4

    .line 517
    iget v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mVerticalwordHeight:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 519
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v7, 0x42b40000    # 90.0f

    int-to-float v8, v1

    int-to-float v9, v3

    .line 520
    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 522
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->createrotateLinearGradient(II)Landroid/graphics/LinearGradient;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 523
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v3, v9, v3

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 528
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v9, v3

    float-to-int v3, v9

    goto :goto_2

    :cond_5
    int-to-float v1, v1

    .line 531
    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private getTextLength(Ljava/lang/CharSequence;)I
    .locals 0

    .line 213
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->getTextLength(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 3

    .line 82
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mColor:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    .line 89
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDebugPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDebugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDebugPaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private measureHorizontalWords()V
    .locals 14

    .line 255
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 258
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v2, v3

    sub-float/2addr v1, v4

    mul-float/2addr v2, v3

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move v7, v2

    move v2, v5

    move v6, v2

    .line 262
    :goto_0
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v2, v8, :cond_9

    .line 263
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 264
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_4

    .line 270
    :cond_0
    iget-object v10, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-virtual {v10, v8}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->setString(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v1

    .line 274
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-virtual {v10}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nextString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    :goto_2
    if-nez v6, :cond_1

    .line 277
    invoke-virtual {p0, v10, v8}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->spliteHorizontalString(Ljava/lang/String;F)I

    move-result v11

    .line 278
    invoke-direct {p0, v10}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v12

    if-lt v11, v12, :cond_2

    .line 279
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v11, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v8, v10

    goto :goto_1

    .line 283
    :cond_2
    iget-object v12, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    cmpg-float v12, v12, v1

    if-gtz v12, :cond_4

    .line 284
    iget v11, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    iget v12, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSpacing:F

    add-float/2addr v11, v12

    add-float/2addr v7, v11

    .line 285
    iget v11, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-lez v11, :cond_3

    goto :goto_3

    .line 289
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float v8, v1, v8

    goto :goto_1

    .line 295
    :cond_4
    iget v12, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    iget v13, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSpacing:F

    add-float/2addr v12, v13

    add-float/2addr v7, v12

    .line 296
    iget v12, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    int-to-float v12, v12

    cmpl-float v12, v7, v12

    if-lez v12, :cond_5

    :goto_3
    move v6, v9

    goto :goto_1

    .line 300
    :cond_5
    invoke-direct {p0, v10, v5, v11}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-direct {p0, v10}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-direct {p0, v10, v11, v8}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 303
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v1

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    goto :goto_5

    .line 312
    :cond_7
    iget v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    iget v10, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSpacing:F

    add-float/2addr v8, v10

    add-float/2addr v7, v8

    .line 313
    iget v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_8

    move v6, v9

    goto :goto_5

    .line 317
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 320
    :cond_9
    :goto_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v6, :cond_a

    .line 321
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxWidth:I

    int-to-float v4, v4

    iget v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v6, v3

    sub-float/2addr v4, v6

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_c

    .line 322
    :cond_a
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxWidth:I

    int-to-float v2, v2

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->spliteHorizontalString(Ljava/lang/String;F)I

    move-result v2

    .line 323
    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, v5, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 326
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    :goto_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 332
    :cond_c
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 333
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    return-void
.end method

.method private measureVerticalWords()V
    .locals 11

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 169
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    .line 170
    :goto_0
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v4, v7, :cond_5

    .line 172
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 173
    :goto_1
    iget v9, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    invoke-direct {p0, v7, v9}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->spliteVerticalString(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v7}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v10

    if-ge v9, v10, :cond_1

    if-lt v9, v8, :cond_1

    int-to-float v5, v5

    .line 174
    iget v10, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-float v10, v5

    cmpl-float v10, v10, v1

    if-lez v10, :cond_0

    move v6, v8

    goto :goto_2

    .line 179
    :cond_0
    invoke-direct {p0, v7, v2, v9}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-direct {p0, v7}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v10

    invoke-direct {p0, v7, v9, v10}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    goto :goto_3

    .line 186
    :cond_2
    invoke-direct {p0, v7}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v9

    if-eqz v9, :cond_4

    int-to-float v5, v5

    .line 187
    iget v9, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v9, v5

    cmpl-float v9, v9, v1

    if-lez v9, :cond_3

    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v8, v6

    :goto_3
    if-eqz v8, :cond_7

    .line 197
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 199
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    const-string v5, "..."

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    invoke-direct {p0, v1, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->spliteVerticalString(Ljava/lang/String;I)I

    move-result v3

    .line 200
    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_4

    .line 203
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, v2, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 207
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 208
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method private spliteVerticalString(Ljava/lang/String;I)I
    .locals 6

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 224
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v2, v0

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->setString(Ljava/lang/String;)V

    .line 229
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nextString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 230
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;)I

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 232
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mVerticalwordHeight:F

    add-float/2addr v2, p1

    int-to-float p1, p2

    cmpl-float p1, v2, p1

    if-lez p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_2
    if-nez p1, :cond_1

    return v1

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float v3, v0, v2

    int-to-float v4, p2

    cmpg-float v5, v3, v4

    if-gez v5, :cond_4

    .line 241
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr v1, p1

    move v2, v3

    goto :goto_0

    :cond_4
    cmpl-float p2, v0, v4

    if-lez p2, :cond_5

    sub-float/2addr v4, v2

    .line 244
    invoke-virtual {p0, p1, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->spliteHorizontalString(Ljava/lang/String;F)I

    move-result p0

    add-int/2addr v1, p0

    :cond_5
    return v1
.end method

.method private subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 0

    .line 217
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->INSTANCE:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EmojiReader;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createLinearGradient()Landroid/graphics/LinearGradient;
    .locals 10

    .line 450
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->setLocation(IIII)V

    .line 451
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mColor:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->getAngle(Landroid/graphics/drawable/GradientDrawable$Orientation;)I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->rotate(I)V

    .line 454
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget v1, v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget v1, v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget v1, v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget v1, v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    int-to-float v6, v1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mColor:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    .line 459
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->getColors()[I

    move-result-object v7

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method public createrotateLinearGradient(II)Landroid/graphics/LinearGradient;
    .locals 9

    .line 435
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mColor:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->getAngle(Landroid/graphics/drawable/GradientDrawable$Orientation;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    sub-int v1, p1, p2

    add-int/2addr p1, p2

    .line 437
    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    sub-int/2addr p1, p2

    .line 438
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    add-int/2addr v3, v1

    add-int/2addr p2, p1

    invoke-virtual {v2, v1, p1, v3, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->setLocation(IIII)V

    .line 439
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->rotate(I)V

    .line 440
    new-instance p1, Landroid/graphics/LinearGradient;

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget p2, p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startX:I

    int-to-float v2, p2

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget p2, p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->startY:I

    int-to-float v3, p2

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget p2, p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopX:I

    int-to-float v4, p2

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLinesrGradientDirect:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;

    iget p2, p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$LinesrGradientDirect;->stopY:I

    int-to-float v5, p2

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mColor:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    .line 445
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->getColors()[I

    move-result-object v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p1
.end method

.method public isHorizontal()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    return p0
.end method

.method public measureHorizontal()V
    .locals 7

    .line 351
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    .line 352
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxWidth:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    .line 354
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 358
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidthMode:I

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    .line 359
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    const/4 v4, 0x0

    .line 361
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    if-eqz v5, :cond_2

    :goto_0
    if-ge v0, v1, :cond_2

    .line 364
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 365
    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v0, v2

    add-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    .line 374
    :cond_3
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeightMode:I

    if-ne v0, v3, :cond_4

    .line 375
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSpacing:F

    add-float/2addr v0, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    :cond_4
    return-void
.end method

.method public measureVertical()V
    .locals 10

    .line 380
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    .line 381
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxWidth:I

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    .line 382
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLengthRecord:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLengthRecord:Ljava/util/HashMap;

    .line 385
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidthMode:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 387
    iput v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    .line 388
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 391
    :goto_0
    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    int-to-float v0, v0

    mul-float/2addr v5, v0

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v0, v1

    add-float/2addr v5, v0

    float-to-int v0, v5

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 394
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    .line 395
    iput v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    .line 397
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 398
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    move v2, v4

    :goto_1
    if-ltz v5, :cond_8

    .line 399
    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v7, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->setString(Ljava/lang/String;)V

    move v6, v4

    .line 402
    :goto_2
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-virtual {v7}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->nextString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 403
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSplitWatch:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;

    invoke-static {v8}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView$WordsSplitWatch;)I

    move-result v8

    if-nez v8, :cond_4

    .line 404
    iget v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    cmpl-float v8, v8, v0

    if-nez v8, :cond_3

    .line 405
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    iput v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    :cond_3
    int-to-float v6, v6

    .line 407
    iget v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mVerticalwordHeight:F

    goto :goto_3

    :cond_4
    int-to-float v6, v6

    .line 409
    iget-object v8, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    :goto_3
    add-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_2

    .line 412
    :cond_5
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mLengthRecord:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ge v2, v6, :cond_6

    move v2, v6

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_7
    move v2, v4

    .line 419
    :cond_8
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mChineseWordWdth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_9

    .line 420
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    int-to-float v0, v0

    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mVerticalwordHeight:F

    sub-float/2addr v5, v4

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    .line 423
    :cond_9
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeightMode:I

    if-ne v0, v3, :cond_a

    int-to-float v0, v2

    .line 424
    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    .line 426
    :cond_a
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxWidth:I

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    if-ge v0, v1, :cond_b

    .line 427
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    .line 429
    :cond_b
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    if-ge v0, v1, :cond_c

    .line 430
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    :cond_c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 466
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 468
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 471
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->drawHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->drawVertical(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 130
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mText:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    array-length v1, v0

    if-lez v1, :cond_0

    .line 136
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mDrawText:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    .line 144
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mVerticalwordHeight:F

    .line 146
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mWordHeight:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPadding:F

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mSpacing:F

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxWidth:I

    .line 150
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewMaxHeight:I

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidthMode:I

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeightMode:I

    .line 154
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    if-eqz p1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->measureHorizontalWords()V

    .line 156
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->measureHorizontal()V

    goto :goto_1

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->measureVerticalWords()V

    .line 159
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->measureVertical()V

    .line 161
    :goto_1
    iget p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewWidth:I

    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mViewHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColor(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mColor:Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mGravity:I

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mIsHorizontal:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public spliteHorizontalString(Ljava/lang/String;F)I
    .locals 5

    .line 338
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->getTextLength(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_2

    .line 340
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->subSequence(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p2

    if-lez v3, :cond_0

    sub-int/2addr v2, v1

    return v2

    :cond_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public update()V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->requestLayout()V

    .line 125
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/VerticalTextView;->invalidate()V

    return-void
.end method
